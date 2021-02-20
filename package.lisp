;;;; package.lisp

(defpackage #:advent2017
  (:use #:cl)
  (:export day1/solution1
           day1/solution2))

(defpackage #:advent2017/test
  (:use #:cl
        #:advent2017
        #:fiveam))
