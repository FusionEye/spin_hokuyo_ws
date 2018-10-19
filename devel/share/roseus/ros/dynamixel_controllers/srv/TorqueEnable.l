;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_controllers::TorqueEnable)
  (if (not (find-package "DYNAMIXEL_CONTROLLERS"))
    (make-package "DYNAMIXEL_CONTROLLERS"))
  (shadow 'TorqueEnable (find-package "DYNAMIXEL_CONTROLLERS")))
(unless (find-package "DYNAMIXEL_CONTROLLERS::TORQUEENABLE")
  (make-package "DYNAMIXEL_CONTROLLERS::TORQUEENABLE"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::TORQUEENABLEREQUEST")
  (make-package "DYNAMIXEL_CONTROLLERS::TORQUEENABLEREQUEST"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::TORQUEENABLERESPONSE")
  (make-package "DYNAMIXEL_CONTROLLERS::TORQUEENABLERESPONSE"))

(in-package "ROS")





(defclass dynamixel_controllers::TorqueEnableRequest
  :super ros::object
  :slots (_torque_enable ))

(defmethod dynamixel_controllers::TorqueEnableRequest
  (:init
   (&key
    ((:torque_enable __torque_enable) nil)
    )
   (send-super :init)
   (setq _torque_enable __torque_enable)
   self)
  (:torque_enable
   (&optional __torque_enable)
   (if __torque_enable (setq _torque_enable __torque_enable)) _torque_enable)
  (:serialization-length
   ()
   (+
    ;; bool _torque_enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _torque_enable
       (if _torque_enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _torque_enable
     (setq _torque_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_controllers::TorqueEnableResponse
  :super ros::object
  :slots ())

(defmethod dynamixel_controllers::TorqueEnableResponse
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

(defclass dynamixel_controllers::TorqueEnable
  :super ros::object
  :slots ())

(setf (get dynamixel_controllers::TorqueEnable :md5sum-) "e44dc96db32bd58b5a896c2c5bf316d0")
(setf (get dynamixel_controllers::TorqueEnable :datatype-) "dynamixel_controllers/TorqueEnable")
(setf (get dynamixel_controllers::TorqueEnable :request) dynamixel_controllers::TorqueEnableRequest)
(setf (get dynamixel_controllers::TorqueEnable :response) dynamixel_controllers::TorqueEnableResponse)

(defmethod dynamixel_controllers::TorqueEnableRequest
  (:response () (instance dynamixel_controllers::TorqueEnableResponse :init)))

(setf (get dynamixel_controllers::TorqueEnableRequest :md5sum-) "e44dc96db32bd58b5a896c2c5bf316d0")
(setf (get dynamixel_controllers::TorqueEnableRequest :datatype-) "dynamixel_controllers/TorqueEnableRequest")
(setf (get dynamixel_controllers::TorqueEnableRequest :definition-)
      "bool torque_enable
---


")

(setf (get dynamixel_controllers::TorqueEnableResponse :md5sum-) "e44dc96db32bd58b5a896c2c5bf316d0")
(setf (get dynamixel_controllers::TorqueEnableResponse :datatype-) "dynamixel_controllers/TorqueEnableResponse")
(setf (get dynamixel_controllers::TorqueEnableResponse :definition-)
      "bool torque_enable
---


")



(provide :dynamixel_controllers/TorqueEnable "e44dc96db32bd58b5a896c2c5bf316d0")


