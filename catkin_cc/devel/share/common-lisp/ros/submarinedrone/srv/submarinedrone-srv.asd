
(cl:in-package :asdf)

(defsystem "submarinedrone-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "depth_warning" :depends-on ("_package_depth_warning"))
    (:file "_package_depth_warning" :depends-on ("_package"))
  ))