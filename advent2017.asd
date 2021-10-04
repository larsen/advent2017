;;;; advent2017.asd

(asdf:defsystem #:advent2017
  :description "Advent of code 2017"
  :author "Stefano Rodighiero <stefano.rodighiero@gmail.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:alexandria #:cl-ppcre #:fiveam)
  :components ((:file "package")
               (:file "day1")
               (:file "day2")
               (:file "day3")
               (:file "advent2017"))
  :in-order-to ((test-op (test-op #:advent2017/test))))

(asdf:defsystem #:advent2017/test
  :depends-on (#:advent2017
               #:fiveam)
  :components ((:module "tests"
                :components ((:file "main"))))
  :perform (test-op (op _) (symbol-call :fiveam :run-all-tests)))
