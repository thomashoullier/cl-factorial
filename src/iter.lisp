;;;; Usual iterative method for factorial computation.

(in-package :cl-factorial)

(defun iter (n)
  "Compute n! through iterations."
  (let ((res 1))
    (loop for i from 2 upto n do
      (setf res (* res i)))
    res))
