(defpackage cl-factorial/test
  (:use :cl :rove :cl-factorial))

(in-package :cl-factorial/test)

;; Integer, exact, factorials that fit in 64 bits (arbitrarily).
(defvar *tabulated-factorials*
  (list 1 1 2 6 24 120 720 5040 40320 362880 3628800 39916800
        479001600 6227020800 87178291200 1307674368000 20922789888000
        355687428096000 6402373705728000 121645100408832000
        2432902008176640000))

(deftest validation
  (testing "iter: Exact n= 0 .. 20"
    (let ((iter-factorials (loop for i from 0 upto 20 collect (iter i))))
      (ok (equal iter-factorials *tabulated-factorials*) "ok")))
  (testing "iter-list: Exact n= 0 .. 20"
    (let ((iter-factorials (iter-list 0 20)))
      (ok (equal iter-factorials *tabulated-factorials*) "ok")))
  (testing "iter-some: (0 1 2 10 15)"
    (let* ((val-list (list 0 1 2 10 15))
           (iter-factorials (iter-some val-list))
           (tabulated-res (loop for i in val-list
                                collect (nth i *tabulated-factorials*))))
      (ok (equal iter-factorials tabulated-res) "ok")))
  (testing "stirling: no errors?"
    (progn (stirling 1) (stirling 10) (stirling 170)) (pass "ok")))
