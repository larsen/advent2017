(in-package #:advent2017/test)

(def-suite advent2017)
(in-suite advent2017)

(test day1
  (is (= (advent2017:day1/solution1) 1049))
  (is (= (advent2017:day1/solution2) 1508)))

(test day2
  (is (= (advent2017:day2/solution1) 32121))
  (is (= (advent2017:day2/solution2) 197)))

(test day3
  (is (= (advent2017:day3/solution1) 480))
  ;(is (= (advent2017:day3/solution2) 0))
  )

(test day4
  (is (= (advent2017:day4/solution1) 383))
  (is (= (advent2017:day4/solution2) 265))
  )

(test day5
  (is (= (advent2017:day5/solution1) 388611))
  )
