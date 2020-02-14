(defpackage cl-sitemaps/tests/main
  (:use :cl
        :cl-sitemaps
        :rove))
(in-package :cl-sitemaps/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-sitemaps)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
