;;;; Computing the relative error of factorial approximations.


;; TODO: Relative error computation
(map 'list (lambda (n) (/ (- (iter n) (stirling n)) (iter n)))
     (loop for i from 1 upto 170 collect i))
