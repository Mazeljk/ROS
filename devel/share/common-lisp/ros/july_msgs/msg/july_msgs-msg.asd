
(cl:in-package :asdf)

(defsystem "july_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JulyMsg" :depends-on ("_package_JulyMsg"))
    (:file "_package_JulyMsg" :depends-on ("_package"))
  ))