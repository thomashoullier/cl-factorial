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
  (if (= n-start 0) (cons 1 (iter-list (1+ n-start) n-end))
      (let ((res (iter (max (1- n-start) 1))))
        (loop for n from n-start upto n-end
              collect (setf res (* res n))))))

;;; iter-some: Compute only some factorials.
(defun iter-some (sorted-arglst)
  "Compute the factorial iteratively for all the elements of sorted-arglst.
   Input list must be sorted in increasing order."
  (let ((res 1)
        (last-el 0))
    (loop for el in sorted-arglst do
      (setf res (iter-step res (1+ last-el) el)
            last-el el)
          collect res)))

(defun iter-step (res nnext nlast)
  "Step the iteration from res = (nnext-1)! to nlast!."
  (let ((reslast res))
    (loop for i from nnext upto nlast do
      (setf reslast (* reslast i)))
    reslast))
