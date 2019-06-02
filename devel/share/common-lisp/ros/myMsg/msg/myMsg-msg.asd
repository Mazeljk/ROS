
(cl:in-package :asdf)

(defsystem "myMsg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "simple_msg" :depends-on ("_package_simple_msg"))
    (:file "_package_simple_msg" :depends-on ("_package"))
  ))