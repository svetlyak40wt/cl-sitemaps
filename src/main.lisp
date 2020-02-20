
(defpackage cl-sitemaps
  (:use
   :cl 
   :cxml
   :puri)
  (:import-from #:local-time
                #:parse-timestring)
  (:import-from #:alexandria
                #:switch)
  (:export
   :parse-sitemap-xml
   :loc
   :lastmod
   :news
   :changefreq
   :priority
   :news
   :name
   :language
   :title
   :stock-tickers
   :genres
   :access
   :publication-date
   :keywords
   :publication
   :sitemap-ref
   :sitemap-url
   :news-publication))

(in-package :cl-sitemaps)


(defclass sitemap-ref ()
  ((loc
    :initarg :loc
    :accessor loc
    :documentation "sitemap file URL")
   (lastmod
    :initarg :lastmod
    :initform nil
    :accessor lastmod
    :documentation "last modified timestamp")))


(defclass sitemap-url ()
  ((loc
    :initarg :loc
    :accessor loc
    :documentation "page location")
   (lastmod
    :initarg :lastmod
    :initform nil
    :accessor lastmod
    :documentation "page last modified timestamp")
   (changefreq
    :initarg :changefreq
    :initform nil
    :accessor changefreq
    :documentation "page change frequency")
   (priority
    :initarg :priority
    :initform nil
    :accessor priority
    :documentation "priority")
   (news
    :initarg :news
    :initform nil
    :accessor news
    :documentation "Google-style news article metadata")))


(defmethod (setf loc) ((newval string) obj)
  (setf (slot-value obj 'loc) (string-trim '(#\Space #\Tab #\Newline) newval)))

(defmethod (setf lastmod) ((newval string) obj)
  (setf
   (slot-value obj 'lastmod)
   (if newval
       (parse-timestring newval)
       nil)))


(defclass news-publication ()
  ((name
    :initarg :name
    :accessor name
    :documentation "publication name")
   (language
    :initarg :language
    :accessor language
    :documentation "publication lanuage ISO code")))


(defclass news ()
  ((publication
    :initarg :publication
    :accessor publication
    :documentation "publication metadata")
   (access
    :initarg :access
    :initform nil
    :accessor access
    :documentation "level of access to article")
   (genres
    :initarg :genres
    :initform nil
    :accessor genres
    :documentation "list of publication genres")
   (publication-date
    :initarg :publication-date
    :accessor publication-date
    :documentation "publication date")
   (title
    :initarg :title
    :accessor title
    :documentation "publication short title")
   (keywords
    :initarg :keywords
    :initform nil
    :accessor keywords
    :documentation "list of keywords")
   (stock-tickers
    :initarg :stock-tickers
    :initform nil
    :accessor stock-tickers
    :documentation "list of relevant stock tickers")))

(defmethod (setf access) ((newval string) (obj news))
  (setf (slot-value obj 'access)
        (case newval
          ("Subscription" :subscription)
          ("Registration" :registration)
          (otherwise nil))))

(defmethod (setf genres) ((newval string) (obj news))
  (setf (slot-value obj 'genres)
        (cl-ppcre:split ",\\s*" newval)))

(defmethod (setf publication-date) ((newval string) (obj news))
  (setf (slot-value obj 'publication-date)
        (parse-timestring newval)))

(defmethod (setf keywords) ((newval string) (obj news))
  (setf (slot-value obj 'keywords)
        (cl-ppcre:split ",\\s*" newval)))

(defmethod (setf stock-tickers) ((newval string) (obj news))
  (setf (slot-value obj 'stock-tickers)
        (remove-duplicates
         (remove nil
                 (mapcar
                  (lambda (s)
                    (cl-ppcre:scan-to-strings "\\w+:\\w+" s))
                  (cl-ppcre:split ",\\s*" newval)))
         :test #'string=)))


(defgeneric read-from-xml (source destination)
  (:documentation "Read object from XML sax source"))


(defun read-element (source)
  (let ((el-name (nth-value 2 (klacks:expect source :start-element)))
        (text nil))
    (klacks:peek-next source)
    (setf text (nth-value 1 (klacks:expect source :characters)))
    (klacks:find-event source :end-element)
    (klacks:consume source)
    (values text el-name)))

(defun skip-characters (source)
  (loop while (eql :characters (klacks:peek source))
        collect (nth-value 1 (klacks:consume source))))

(defmethod read-from-xml (source (destination news-publication))
  (klacks:expecting-element
      (source "publication" nil)
    (progn 
      (klacks:find-element source "name")
      (setf (name destination) (read-element source))
      (klacks:find-element source "language")
      (setf (language destination) (read-element source))
      (klacks:find-event source :end-element)
      destination)))

(defmethod read-from-xml (source (destination news))
  (klacks:expecting-element
      (source "news" nil)
    (progn
      (klacks:consume source)
      (loop while (not (eql :end-element (klacks:peek source)))
            do (progn
                 (let ((name (nth-value 2 (klacks:find-event source :start-element))))
                   (switch (name :test #'string=)
                     ("publication" (setf (publication destination) (read-from-xml source (make-instance 'news-publication))))
                     ("access" (setf (access destination) (read-element source)))
                     ("genres" (setf (genres destination) (read-element source)))
                     ("publication_date" (setf (publication-date destination) (read-element source)))
                     ("title" (setf (title destination) (read-element source)))
                     ("keywords" (setf (keywords destination) (read-element source)))
                     ("stock_tickers" (setf (stock-tickers destination) (read-element source)))))
                 (skip-characters source)))
      destination)))

(defmethod read-from-xml (source (destination sitemap-url))
  (klacks:expecting-element
      (source "url" nil)
    (progn
      (klacks:consume source)
      (loop while (not (eql :end-element (klacks:peek source)))
            do (progn
                 (let ((name (nth-value 2 (klacks:find-event source :start-element))))
                   (switch (name :test #'string=)
                     ("loc" (setf (loc destination) (read-element source)))
                     ("lastmod" (setf (lastmod destination) (read-element source)))
                     ("changefreq" (setf (changefreq destination) (read-element source)))
                     ("priority" (setf (priority destination) (read-element source)))
                     ("news" (setf (news destination) (read-from-xml source (make-instance 'news))))
                     (otherwise (klacks:consume source))))
                 (skip-characters source)))
      destination)))


(defmethod read-from-xml (source (destination sitemap-ref))
  (klacks:expecting-element
      (source "sitemap" nil)
    (progn
      (klacks:consume source)
      (loop while (not (eql :end-element (klacks:peek source)))
            do (progn
                 (let ((name (nth-value 2 (klacks:find-event source :start-element))))
                   (switch (name :test #'string=)
                     ("loc" (setf (loc destination) (read-element source)))
                     ("lastmod" (setf (lastmod destination) (read-element source)))
                     (otherwise (klacks:consume source))))
                 (skip-characters source)))
      destination)))


(defmacro read-items (source tag class)
  `(values
    (loop while (klacks:find-element ,source ,tag)
          collecting (read-from-xml
                      ,source
                      (make-instance ,class)))
    (quote ,(intern tag :keyword))))


(defun parse-sitemap-xml (xml)
  "Parse sitemap XML and return list of corresponding objects either SITEMAP-REF or SITEMAP-URL. Second returned value could be used to get the type of the returned list objects."
  (let ((source (cxml:make-source xml)))
    (switch ((nth-value 2 (klacks:find-event source :start-element)) :test #'string=)
      ("urlset" (read-items source "url" 'sitemap-url))
      ("sitemapindex" (read-items source "sitemap" 'sitemap-ref))
      (otherwise (values nil nil)))))

