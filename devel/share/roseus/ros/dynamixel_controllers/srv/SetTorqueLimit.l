;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_controllers::SetTorqueLimit)
  (if (not (find-package "DYNAMIXEL_CONTROLLERS"))
    (make-package "DYNAMIXEL_CONTROLLERS"))
  (shadow 'SetTorqueLimit (find-package "DYNAMIXEL_CONTROLLERS")))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETTORQUELIMIT")
  (make-package "DYNAMIXEL_CONTROLLERS::SETTORQUELIMIT"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETTORQUELIMITREQUEST")
  (make-package "DYNAMIXEL_CONTROLLERS::SETTORQUELIMITREQUEST"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETTORQUELIMITRESPONSE")
  (make-package "DYNAMIXEL_CONTROLLERS::SETTORQUELIMITRESPONSE"))

(in-package "ROS")





(defclass dynamixel_controllers::SetTorqueLimitRequest
  :super ros::object
  :slots (_torque_limit ))

(defmethod dynamixel_controllers::SetTorqueLimitRequest
  (:init
   (&key
    ((:torque_limit __torque_limit) 0.0)
    )
   (send-super :init)
   (setq _torque_limit (float __torque_limit))
   self)
  (:torque_limit
   (&optional __torque_limit)
   (if __torque_limit (setq _torque_limit __torque_limit)) _torque_limit)
  (:serialization-length
   ()
   (+
    ;; float64 _torque_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _torque_limit
       (sys::poke _torque_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _torque_limit
     (setq _torque_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dynamixel_controllers::SetTorqueLimitResponse
  :super ros::object
  :slots ())

(defmethod dynamixel_controllers::SetTorqueLimitResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dynamixel_controllers::SetTorqueLimit
  :super ros::object
  :slots ())

(setf (get dynamixel_controllers::SetTorqueLimit :md5sum-) "7ac67170532bb79d95db2a425915bbd6")
(setf (get dynamixel_controllers::SetTorqueLimit :datatype-) "dynamixel_controllers/SetTorqueLimit")
(setf (get dynamixel_controllers::SetTorqueLimit :request) dynamixel_controllers::SetTorqueLimitRequest)
(setf (get dynamixel_controllers::SetTorqueLimit :response) dynamixel_controllers::SetTorqueLimitResponse)

(defmethod dynamixel_controllers::SetTorqueLimitRequest
  (:response () (instance dynamixel_controllers::SetTorqueLimitResponse :init)))

(setf (get dynamixel_controllers::SetTorqueLimitRequest :md5sum-) "7ac67170532bb79d95db2a425915bbd6")
(setf (get dynamixel_controllers::SetTorqueLimitRequest :datatype-) "dynamixel_controllers/SetTorqueLimitRequest")
(setf (get dynamixel_controllers::SetTorqueLimitRequest :definition-)
      "

float64 torque_limit
---


")

(setf (get dynamixel_controllers::SetTorqueLimitResponse :md5sum-) "7ac67170532bb79d95db2a425915bbd6")
(setf (get dynamixel_controllers::SetTorqueLimitResponse :datatype-) "dynamixel_controllers/SetTorqueLimitResponse")
(setf (get dynamixel_controllers::SetTorqueLimitResponse :definition-)
      "

float64 torque_limit
---


")



(provide :dynamixel_controllers/SetTorqueLimit "7ac67170532bb79d95db2a425915bbd6")


