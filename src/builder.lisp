(uiop:define-package #:cl-sitemaps/builder
  (:use #:cl)
  (:import-from #:cl-sitemaps
                #:sitemap-ref
                #:sitemap-url)
  (:import-from #:local-time
                #:+iso-8601-date-format+
                #:format-timestring
                #:parse-timestring
                #:timestamp)
  (:import-from #:anaphora
                #:it
                #:awhen)
  (:import-from #:cxml
                #:text
                #:attribute
                #:with-element)
  (:import-from #:serapeum
                #:->
                #:soft-list-of)
  (:import-from #:puri
                #:render-uri
                #:merge-uris)
  (:import-from #:alexandria
                #:positive-integer)
  (:import-from #:with-output-to-stream
                #:with-output-to-stream)
  
  (:export #:render-sitemap
           #:make-news
           #:make-ref
           #:make-url
           #:changefreq
           #:render-sitemap-index
           #:no-base-url))
(in-package #:cl-sitemaps/builder)


(defvar *allowed-changefreqs*
  '(:always
    :hourly
    :daily
    :weekly
    :monthly
    :yearly
    :never))


(define-condition no-base-url (error)
  ((url :initarg :url
        :reader url-to-transform))
  (:report (lambda (condition stream)
             (format stream "Unable to make absolute URL from relative \"~S\" because BASE-URL was not provided."
                     (url-to-transform condition)))))


(defun parse-date (value)
  (etypecase value
    (timestamp value)
    (string (parse-timestring value))
    (null nil)))

(defun format-date (timestamp)
  (format-timestring nil timestamp
                     :format +iso-8601-date-format+))


(deftype changefreq ()
  '(or null
    (member :always :hourly :daily :weekly :monthly :yearly :never)))


(declaim (ftype (function (string &key
                                  (:lastmod (or null timestamp string))
                                  (:changefreq changefreq)
                                  (:priority (or null float))
                                  (:news (or null cl-sitemaps:news)))
                          (values sitemap-url &optional))
                make-url))

(defun make-url (loc &key lastmod changefreq priority news)
  (make-instance 'sitemap-url
                 :loc loc
                 :lastmod (parse-date lastmod)
                 :changefreq changefreq
                 :priority priority
                 :news news))


(declaim (ftype (function (string &key
                                  (:lastmod (or null timestamp string)))
                          (values sitemap-ref &optional))
                make-ref))

(defun make-ref (loc &key lastmod)
  (make-instance 'sitemap-ref
                 :loc loc
                 :lastmod (parse-date lastmod)))


(defvar *allowed-accesses*
  '(:subscription 
    :registration))


(declaim (ftype (function (keyword)
                          (values string &optional))
                to-access-name))

(defun to-access-name (value)
  (string-capitalize value))


(declaim (ftype (function (string
                           string
                           string
                           (or timestamp string)
                           &key
                           (:access (or null keyword))
                           (:genres (soft-list-of string))
                           (:keywords (soft-list-of string))
                           (:stock-tickers (soft-list-of string)))
                          (values cl-sitemaps:news &optional))
                make-news))

(defun make-news (publication-name publication-lang article-title date
                  &key access genres keywords stock-tickers)
  "Creates a \"news\" entry for a sitemap.

   Arguments:

   - publication-name - Name of the news publication.

     It must exactly match the name as it appears on your articles in news.google.com,
     omitting any trailing parentheticals.

     For example, if the name appears in Google News as \"The Example Times (subscription)\",
     you should use \"The Example Times\".

   - publication-lang - It should be an ISO 639 Language Code (either 2 or 3 letters);
     see: http://www.loc.gov/standards/iso639-2/php/code_list.php
     Exception: For Chinese, please use zh-cn for Simplified Chinese or zh-tw for Traditional Chinese.

   - article-title - Title of the news article.
     Note: The title may be truncated for space reasons when shown on Google News.

   - date - Publication date.

   - access - Accessibility of the article. Required if access is not open, otherwise this tag should be omitted.
     Possible values: Subscription or Registration

   - genres - List of properties characterizing the content of the article,
     such as \"PressRelease\" or \"UserGenerated\".

     For a list of possible values, see:
     https://www.google.com/support/news_pub/bin/answer.py?answer=93992

     Required if any genres apply to the article, otherwise this tag should be omitted.

   - keywords - List of keywords describing the topic of the article. Keywords may be drawn from, but are not limited to, the list of existing Google News keywords; see: https://www.google.com/support/news_pub/bin/answer.py?answer=116037

     Optional.

   - stock-tickers - List of up to 5 stock tickers of the companies, mutual funds, or other financial entities
     that are the main subject of the article.

     Relevant primarily for business articles.

     Each ticker must be prefixed by the name of its stock exchange,
     and must match its entry in Google Finance.

     For example, \"NASDAQ:AMAT\" (but not \"NASD:AMAT\"), or \"BOM:500325\" (but not \"BOM:RIL\").

     Optional.

"
  (when (and access
             (not (member access *allowed-accesses*)))
    (error "Access should be one of: ~{~A~^, ~}"
           *allowed-accesses*))
  
  (make-instance 'cl-sitemaps:news
                 :publication (make-instance 'cl-sitemaps:news-publication
                                             :name publication-name
                                             :language publication-lang)
                 :title article-title
                 :publication-date (parse-date date)
                 :access access
                 :genres genres
                 :keywords keywords
                 :stock-tickers stock-tickers))


(-> absolute-url-p (string)
    (values boolean &optional))

(defun absolute-url-p (url)
  (let ((parsed (puri:parse-uri url)))
    (when (and (puri:uri-scheme parsed)
               (puri:uri-host parsed))
      (values t))))


(-> ensure-absolute-url (string string)
    (values string &optional))

(defun ensure-absolute-url (url base-url)
  (when (and (not (absolute-url-p url))
             (string= base-url ""))
    (error 'no-base-url))
  
  (render-uri
   (merge-uris url
               base-url)
   nil))


(defgeneric render-item (item base-url)
  (:method ((item sitemap-url) (base-url string))
    (with-element "url"
      (with-element "loc"
        (text (ensure-absolute-url (cl-sitemaps:loc item)
                                   base-url)))
      (awhen (cl-sitemaps:changefreq item)
        (with-element "changefreq"
          (text (string-downcase
                 (symbol-name it)))))
      (awhen (cl-sitemaps:priority item)
        (with-element "priority"
          (text (format nil "~A" it))))
      (awhen (cl-sitemaps:lastmod item)
        (with-element "lastmod"
          (text (format-date it))))
      (awhen (cl-sitemaps:news item)
        (render-item it base-url))))
  
  (:method ((item sitemap-ref) (base-url string))
    (with-element "url"
      (with-element "loc"
        (text (ensure-absolute-url (cl-sitemaps:loc item)
                                   base-url)))
      (awhen (cl-sitemaps:lastmod item)
        (with-element "lastmod"
          (text (format-date it))))))
  
  (:method ((item cl-sitemaps:news) (base-url string))
    (with-element "news:news"
      (render-item
       (cl-sitemaps:publication item)
       base-url)
      (with-element "news:title"
        (text (cl-sitemaps:title item)))
      (with-element "news:publication_date"
        (text (format-date (cl-sitemaps:publication-date item))))
      (awhen (cl-sitemaps:access item)
        (with-element "news:access"
          (text (format nil "~{~A~^,~}"
                        (mapcar #'to-access-name
                                it)))))
      (awhen (cl-sitemaps:genres item)
        (with-element "news:genres"
          (text (format nil "~{~A~^,~}"
                        it))))
      (awhen (cl-sitemaps:keywords item)
        (with-element "news:keywords"
          (text (format nil "~{~A~^,~}"
                        it))))
      (awhen (cl-sitemaps:stock-tickers item)
        (with-element "news:stock_tickers"
          (text (format nil "~{~A~^,~}"
                        it))))))
  
  (:method ((item cl-sitemaps:news-publication) (base-url string))
    (with-element "news:publication"
      (with-element "news:name"
        (cl-sitemaps:name item))
      (with-element "news:language"
        (cl-sitemaps:language item)))))


(declaim (ftype (function (list &key
                                (:stream (or t null stream))
                                (:base-url (or null string))
                                (:indentation (or null positive-integer)))
                          (values (or null string) &optional))
                render-sitemap))

(defun render-sitemap (items &key stream (base-url "") indentation)
  (with-output-to-stream (stream stream)
    (cxml:with-xml-output (cxml:make-character-stream-sink stream :indentation indentation)
      (cxml:with-namespace ("" "http://www.sitemaps.org/schemas/sitemap/0.9")
        ;; https://developers.google.com/search/docs/crawling-indexing/sitemaps/news-sitemap
        (cxml:with-namespace ("news" "http://www.google.com/schemas/sitemap-news/0.9")
          (with-element "urlset"
            (loop for item in items
                  do (unless (typep item 'sitemap-url)
                       (error "Sitemap can consists only from URLs, but ~A was found. Use MAKE-URL to create items for sitemap."
                              item))
                     (render-item item base-url))))))))


(declaim (ftype (function ((soft-list-of sitemap-ref)
                           &key
                           (:stream (or t null stream))
                           (:base-url (or null string))
                           (:indentation (or null positive-integer)))
                          (values (or null string) &optional))
                render-sitemap-index))

(defun render-sitemap-index (items &key stream (base-url "") indentation)
  (with-output-to-stream (stream stream)
    (cxml:with-xml-output (cxml:make-character-stream-sink stream :indentation indentation)
      (cxml:with-namespace ("" "http://www.sitemaps.org/schemas/sitemap/0.9")
        (with-element "sitemapindex"
          (loop for item in items
                do (unless (typep item 'sitemap-ref)
                     (error "Sitemap index can consists only from URL references, but ~A was found. Use MAKE-REF to create items for sitemap index."
                            item))
                   (render-item item base-url)))))))
