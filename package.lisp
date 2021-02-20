;;;; package.lisp

(defpackage #:advent2017
  (:use #:cl #:cl-ppcre #:alexandria)
  (:export day1/solution1
           day1/solution2

           day2/solution1
           day2/solution2))

(defpackage #:advent2017/test
  (:use #:cl
        #:advent2017
        #:fiveam))
