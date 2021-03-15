;;;; Stirling's approximation of factorial.

(in-package :cl-factorial)

;;; First Stirling term.
(defun stirling (n)
  "This is what people (doing applied computations) usually mean when
   referring to Stirling's formula."
  (* (sqrt (* 2 pi n))
     (expt (/ n *e-double*) n)))

;;; Expansion of Stirling terms.
