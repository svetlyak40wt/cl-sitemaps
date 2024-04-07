(uiop:define-package #:cl-sitemaps/tests/builder
  (:use :cl)
  (:import-from #:cl-sitemaps/builder
                #:no-base-url
                #:make-ref
                #:render-sitemap-index
                #:render-sitemap
                #:make-news
                #:make-url)
  (:import-from #:rove
                #:testing
                #:deftest
                #:ok)
  (:import-from #:local-time
                #:now))
(in-package #:cl-sitemaps/tests/builder)


(deftest test-sitemap-builder ()
  (let* ((items (list (make-url "https://40ants.com/"
                                :changefreq :monthly
                                :priority 0.8)
                      (make-url "https://40ants.com/blog/"
                                :changefreq :daily
                                :priority 0.9)
                      (make-url "https://40ants.com/blog/some-post"
                                :changefreq :daily
                                :priority 0.9
                                :news (make-news "40Ants Blog" "en"
                                                 "New Lisp Library Released"
                                                 "2023-11-22"
                                                 :keywords '("lisp" "library" "release")))))
         (result (render-sitemap items
                                 :stream nil
                                 :indentation 2))
         (expected "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\" xmlns:news=\"http://www.google.com/schemas/sitemap-news/0.9\">
  <url>
    <loc>
      https://40ants.com/</loc>
    <changefreq>
      monthly</changefreq>
    <priority>
      0.8</priority>
  </url>
  <url>
    <loc>
      https://40ants.com/blog/</loc>
    <changefreq>
      daily</changefreq>
    <priority>
      0.9</priority>
  </url>
  <url>
    <loc>
      https://40ants.com/blog/some-post</loc>
    <changefreq>
      daily</changefreq>
    <priority>
      0.9</priority>
    <news:news>
      <news:publication>
        <news:name/>
        <news:language/>
      </news:publication>
      <news:title>
        New Lisp Library Released</news:title>
      <news:publication_date>
        2023-11-22</news:publication_date>
      <news:keywords>
        lisp,library,release</news:keywords>
    </news:news>
  </url>
</urlset>"))
    (ok (string= result
                 expected))))


(deftest test-sitemap-index ()
  (let ((expected "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<sitemapindex xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">
  <url>
    <loc>
      https://40ants.com/sitemap-2023.xml</loc>
    <lastmod>
      2023-12-31</lastmod>
  </url>
  <url>
    <loc>
      https://40ants.com/sitemap-2024.xml</loc>
    <lastmod>
      2024-04-07</lastmod>
  </url>
</sitemapindex>"))
    
    (testing "With absolute URLS"
      (let* ((items (list (make-ref "https://40ants.com/sitemap-2023.xml"
                                    :lastmod "2023-12-31")
                          (make-ref "https://40ants.com/sitemap-2024.xml"
                                    :lastmod (now))))
             (result (render-sitemap-index items
                                           :stream nil
                                           :indentation 2)))
        (ok (string= result
                     expected))))
    
    (testing "With relative URLS"
      (let* ((items (list (make-ref "sitemap-2023.xml"
                                    :lastmod "2023-12-31")
                          (make-ref "sitemap-2024.xml"
                                    :lastmod (now))))
             (result (render-sitemap-index items
                                           :base-url "https://40ants.com"
                                           :stream nil
                                           :indentation 2)))
        (ok (string= result
                     expected))))
    
    (testing "With relative URLS and without base-url"
      (let* ((items (list (make-ref "sitemap-2023.xml"
                                    :lastmod "2023-12-31")
                          (make-ref "sitemap-2024.xml"
                                    :lastmod (now)))))
        (rove:signals
            (render-sitemap-index items
                                  :stream nil
                                  :indentation 2)
            'no-base-url)))))
