;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_controllers::StopController)
  (if (not (find-package "DYNAMIXEL_CONTROLLERS"))
    (make-package "DYNAMIXEL_CONTROLLERS"))
  (shadow 'StopController (find-package "DYNAMIXEL_CONTROLLERS")))
(unless (find-package "DYNAMIXEL_CONTROLLERS::STOPCONTROLLER")
  (make-package "DYNAMIXEL_CONTROLLERS::STOPCONTROLLER"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::STOPCONTROLLERREQUEST")
  (make-package "DYNAMIXEL_CONTROLLERS::STOPCONTROLLERREQUEST"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::STOPCONTROLLERRESPONSE")
  (make-package "DYNAMIXEL_CONTROLLERS::STOPCONTROLLERRESPONSE"))

(in-package "ROS")





(defclass dynamixel_controllers::StopControllerRequest
  :super ros::object
  :slots (_controller_name ))

(defmethod dynamixel_controllers::StopControllerRequest
  (:init
   (&key
    ((:controller_name __controller_name) "")
    )
   (send-super :init)
   (setq _controller_name (string __controller_name))
   self)
  (:controller_name
   (&optional __controller_name)
   (if __controller_name (setq _controller_name __controller_name)) _controller_name)
  (:serialization-length
   ()
   (+
    ;; string _controller_name
    4 (length _controller_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _controller_name
       (write-long (length _controller_name) s) (princ _controller_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _controller_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controller_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dynamixel_controllers::StopControllerResponse
  :super ros::object
  :slots (_success _reason ))

(defmethod dynamixel_controllers::StopControllerResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:reason __reason) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _reason (string __reason))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _reason
    4 (length _reason)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _reason
       (write-long (length _reason) s) (princ _reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dynamixel_controllers::StopController
  :super ros::object
  :slots ())

(setf (get dynamixel_controllers::StopController :md5sum-) "b3f1f861a8aef49071034d2f06308f6e")
(setf (get dynamixel_controllers::StopController :datatype-) "dynamixel_controllers/StopController")
(setf (get dynamixel_controllers::StopController :request) dynamixel_controllers::StopControllerRequest)
(setf (get dynamixel_controllers::StopController :response) dynamixel_controllers::StopControllerResponse)

(defmethod dynamixel_controllers::StopControllerRequest
  (:response () (instance dynamixel_controllers::StopControllerResponse :init)))

(setf (get dynamixel_controllers::StopControllerRequest :md5sum-) "b3f1f861a8aef49071034d2f06308f6e")
(setf (get dynamixel_controllers::StopControllerRequest :datatype-) "dynamixel_controllers/StopControllerRequest")
(setf (get dynamixel_controllers::StopControllerRequest :definition-)
      "string controller_name
---
bool success
string reason

")

(setf (get dynamixel_controllers::StopControllerResponse :md5sum-) "b3f1f861a8aef49071034d2f06308f6e")
(setf (get dynamixel_controllers::StopControllerResponse :datatype-) "dynamixel_controllers/StopControllerResponse")
(setf (get dynamixel_controllers::StopControllerResponse :definition-)
      "string controller_name
---
bool success
string reason

")



(provide :dynamixel_controllers/StopController "b3f1f861a8aef49071034d2f06308f6e")


