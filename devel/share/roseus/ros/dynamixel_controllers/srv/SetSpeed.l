;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_controllers::SetSpeed)
  (if (not (find-package "DYNAMIXEL_CONTROLLERS"))
    (make-package "DYNAMIXEL_CONTROLLERS"))
  (shadow 'SetSpeed (find-package "DYNAMIXEL_CONTROLLERS")))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETSPEED")
  (make-package "DYNAMIXEL_CONTROLLERS::SETSPEED"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETSPEEDREQUEST")
  (make-package "DYNAMIXEL_CONTROLLERS::SETSPEEDREQUEST"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETSPEEDRESPONSE")
  (make-package "DYNAMIXEL_CONTROLLERS::SETSPEEDRESPONSE"))

(in-package "ROS")





(defclass dynamixel_controllers::SetSpeedRequest
  :super ros::object
  :slots (_speed ))

(defmethod dynamixel_controllers::SetSpeedRequest
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dynamixel_controllers::SetSpeedResponse
  :super ros::object
  :slots ())

(defmethod dynamixel_controllers::SetSpeedResponse
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

(defclass dynamixel_controllers::SetSpeed
  :super ros::object
  :slots ())

(setf (get dynamixel_controllers::SetSpeed :md5sum-) "4641bb0523a3557209606d9bd91ce33a")
(setf (get dynamixel_controllers::SetSpeed :datatype-) "dynamixel_controllers/SetSpeed")
(setf (get dynamixel_controllers::SetSpeed :request) dynamixel_controllers::SetSpeedRequest)
(setf (get dynamixel_controllers::SetSpeed :response) dynamixel_controllers::SetSpeedResponse)

(defmethod dynamixel_controllers::SetSpeedRequest
  (:response () (instance dynamixel_controllers::SetSpeedResponse :init)))

(setf (get dynamixel_controllers::SetSpeedRequest :md5sum-) "4641bb0523a3557209606d9bd91ce33a")
(setf (get dynamixel_controllers::SetSpeedRequest :datatype-) "dynamixel_controllers/SetSpeedRequest")
(setf (get dynamixel_controllers::SetSpeedRequest :definition-)
      "float64 speed
---


")

(setf (get dynamixel_controllers::SetSpeedResponse :md5sum-) "4641bb0523a3557209606d9bd91ce33a")
(setf (get dynamixel_controllers::SetSpeedResponse :datatype-) "dynamixel_controllers/SetSpeedResponse")
(setf (get dynamixel_controllers::SetSpeedResponse :definition-)
      "float64 speed
---


")



(provide :dynamixel_controllers/SetSpeed "4641bb0523a3557209606d9bd91ce33a")


