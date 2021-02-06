(defsystem cl-factorial
  :name "cl-factorial"
  :author "Thomas HOULLIER"
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "iter" :depends-on ("package")))))
  :in-order-to ((test-op (test-op "cl-factorial/test"))))

(defsystem cl-factorial/test
  :name "cl-factorial/test"
  :depends-on ("rove" "cl-factorial")
  :components
  ((:module "test"
    :components ((:file "rove-suite"))))
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
