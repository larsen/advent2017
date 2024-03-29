(in-package :advent2017)

(defun read-passwords ()
  (uiop:read-file-lines (asdf:system-relative-pathname 'advent2017
                                                       "inputs/day4")))

(defun valid-password-p (password)
  (let* ((password-as-words (split-sequence:split-sequence #\Space password))
         (password-length (length password-as-words))
         (seen (make-hash-table :test 'equal))
         (unique-words-count (loop for w in password-as-words
                                   do (setf (gethash w seen) 1)
                                   finally (return (length (hash-table-keys seen))))))
    (= unique-words-count password-length)))

(defun stricter-valid-password-p (password)
  (let* ((password-as-words (split-sequence:split-sequence #\Space password))
         (password-length (length password-as-words))
         (seen (make-hash-table :test 'equal))
         (unique-words-count (loop for w in password-as-words
                                   do (setf (gethash (sort w #'char<) seen) 1)
                                   finally (return (length (hash-table-keys seen))))))
    (= unique-words-count password-length)))

(defun day4/solution1 ()
  (loop for p in (read-passwords)
        when (valid-password-p p)
          count p))

(defun day4/solution2 ()
  (loop for p in (read-passwords)
        when (stricter-valid-password-p p)
          count p))
