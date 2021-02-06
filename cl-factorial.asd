(defsystem cl-factorial
  :name "cl-factorial"
  :author "Thomas HOULLIER"
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "" :depends-on ("package"))))))
