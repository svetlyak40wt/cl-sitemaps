(defsystem "cl-sitemaps"
  :version "0.1.0"
  :author "Nikolai Matiushev"
  :license "MIT"
  :depends-on ("alexandria" "cxml" "local-time" "cl-ppcre" "puri")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Sitemap.xml reader"
  :in-order-to ((test-op (test-op "cl-sitemaps/tests"))))

(defsystem "cl-sitemaps/builder"
  :version "0.1.0"
  :author "Nikolai Matiushev"
  :license "MIT"
  :depends-on ("cl-sitemaps" "local-time" "anaphora" "cxml" "quri" "with-output-to-stream")
  :components ((:module "src"
                :components
                ((:file "builder"))))
  :description "Sitemap.xml builder"
  :in-order-to ((test-op (test-op "cl-sitemaps/tests"))))


(defsystem "cl-sitemaps/tests"
  :author "Nikolai Matiushev"
  :license "MIT"
  :depends-on ("cl-sitemaps"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-sitemaps"
  :perform (test-op (op c) (symbol-call :rove :run c)))


(defsystem "cl-sitemaps/tests/builder"
  :author "Nikolai Matiushev"
  :license "MIT"
  :depends-on ("cl-sitemaps/builder"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "builder"))))
  :description "Test system for cl-sitemaps/builder"
  :perform (test-op (op c) (symbol-call :rove :run c)))
