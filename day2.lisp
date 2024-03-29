(in-package #:advent2017)

(defun read-spreadsheet ()
  (mapcar (lambda (s)
            (map 'list #'parse-integer
                 (cl-ppcre:split "\\t" s)))
          (uiop:read-file-lines
           (asdf:system-relative-pathname 'advent2017 "inputs/day2"))))

(defun day2/solution1 ()
  (loop for l in (read-spreadsheet)
        sum (loop for n in l
                  maximize n into max
                  minimize n into min
                  finally (return (- max min)))))

(defun day2/solution2 ()
  (reduce #'+ (remove-if #'null
               (loop for row in (read-spreadsheet)
                     collect (let ((result nil))
                               (map-combinations
                                (lambda (lst)
                                  (let ((quotient (/ (apply #'max lst)
                                                     (apply #'min lst))))
                                    (if (integerp quotient)
                                        (setf result quotient))))
                                row
                                :length 2)
                               result)))))
