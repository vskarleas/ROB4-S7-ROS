
(cl:in-package :asdf)

(defsystem "mydrone-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "alt_warning" :depends-on ("_package_alt_warning"))
    (:file "_package_alt_warning" :depends-on ("_package"))
  ))