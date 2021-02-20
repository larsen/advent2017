(in-package #:advent2017/test)

(def-suite advent2017)
(in-suite advent2017)

(test day1
  (is (= (advent2017:day1/solution1) 1049))
  (is (= (advent2017:day1/solution2) 1508)))
