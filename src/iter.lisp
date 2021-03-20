;;;; Usual iterative method for factorial computation.

(in-package :cl-factorial)

(defun iter (n)
  "Compute n! through iterations."
  (let ((res 1))
    (loop for i from 2 upto n do
      (setf res (* res i)))
    res))

(defun iter-list (n-start n-end)
  "Compute n! from n-start to n-end (included).
   Returns (n-start! n-start+1! ... n-end-1! n-end!)"
  (let ((res (iter (max (1- n-start) 1))))
    (loop for n from n-start upto n-end
          collect (setf res (* res n)))))
