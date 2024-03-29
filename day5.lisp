(in-package :advent2017)

(defun read-jump-offsets ()
  (coerce
   (loop for o in (uiop:read-file-lines
                   (asdf:system-relative-pathname 'advent2017 "inputs/day5"))
         collect (parse-integer o))
   'vector))

(defun day5/solution1 ()
  (let ((jump-offsets (read-jump-offsets)))
    (loop with steps-counter = 0
          with offset = 0
          for curr-offset = offset
          do (incf offset (aref jump-offsets curr-offset))
             (incf (aref jump-offsets curr-offset))
             (incf steps-counter)
          when (> offset (- (length jump-offsets) 1))
            do (return steps-counter))))

(defun day5/solution2 ()
  (let ((jump-offsets (read-jump-offsets)))
    (loop with steps-counter = 0
          with offset = 0
          for curr-offset = offset
          do (incf offset (aref jump-offsets curr-offset))
             (if (>= (aref jump-offsets curr-offset) 3)
                 (decf (aref jump-offsets curr-offset))
                 (incf (aref jump-offsets curr-offset)))
             (incf steps-counter)
          when (> offset (- (length jump-offsets) 1))
            do (return steps-counter))))
