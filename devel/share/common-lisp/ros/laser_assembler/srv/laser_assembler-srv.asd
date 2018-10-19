
(cl:in-package :asdf)

(defsystem "laser_assembler-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "AssembleScans" :depends-on ("_package_AssembleScans"))
    (:file "_package_AssembleScans" :depends-on ("_package"))
    (:file "AssembleScans2" :depends-on ("_package_AssembleScans2"))
    (:file "_package_AssembleScans2" :depends-on ("_package"))
  ))