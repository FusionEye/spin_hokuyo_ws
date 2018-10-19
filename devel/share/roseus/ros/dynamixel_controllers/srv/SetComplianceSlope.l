;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_controllers::SetComplianceSlope)
  (if (not (find-package "DYNAMIXEL_CONTROLLERS"))
    (make-package "DYNAMIXEL_CONTROLLERS"))
  (shadow 'SetComplianceSlope (find-package "DYNAMIXEL_CONTROLLERS")))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCESLOPE")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCESLOPE"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCESLOPEREQUEST")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCESLOPEREQUEST"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCESLOPERESPONSE")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCESLOPERESPONSE"))

(in-package "ROS")





(defclass dynamixel_controllers::SetComplianceSlopeRequest
  :super ros::object
  :slots (_slope ))

(defmethod dynamixel_controllers::SetComplianceSlopeRequest
  (:init
   (&key
    ((:slope __slope) 0)
    )
   (send-super :init)
   (setq _slope (round __slope))
   self)
  (:slope
   (&optional __slope)
   (if __slope (setq _slope __slope)) _slope)
  (:serialization-length
   ()
   (+
    ;; uint8 _slope
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _slope
       (write-byte _slope s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _slope
     (setq _slope (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_controllers::SetComplianceSlopeResponse
  :super ros::object
  :slots ())

(defmethod dynamixel_controllers::SetComplianceSlopeResponse
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

(defclass dynamixel_controllers::SetComplianceSlope
  :super ros::object
  :slots ())

(setf (get dynamixel_controllers::SetComplianceSlope :md5sum-) "0b655cbe1b74daf357824dcc427c1004")
(setf (get dynamixel_controllers::SetComplianceSlope :datatype-) "dynamixel_controllers/SetComplianceSlope")
(setf (get dynamixel_controllers::SetComplianceSlope :request) dynamixel_controllers::SetComplianceSlopeRequest)
(setf (get dynamixel_controllers::SetComplianceSlope :response) dynamixel_controllers::SetComplianceSlopeResponse)

(defmethod dynamixel_controllers::SetComplianceSlopeRequest
  (:response () (instance dynamixel_controllers::SetComplianceSlopeResponse :init)))

(setf (get dynamixel_controllers::SetComplianceSlopeRequest :md5sum-) "0b655cbe1b74daf357824dcc427c1004")
(setf (get dynamixel_controllers::SetComplianceSlopeRequest :datatype-) "dynamixel_controllers/SetComplianceSlopeRequest")
(setf (get dynamixel_controllers::SetComplianceSlopeRequest :definition-)
      "

uint8 slope
---

")

(setf (get dynamixel_controllers::SetComplianceSlopeResponse :md5sum-) "0b655cbe1b74daf357824dcc427c1004")
(setf (get dynamixel_controllers::SetComplianceSlopeResponse :datatype-) "dynamixel_controllers/SetComplianceSlopeResponse")
(setf (get dynamixel_controllers::SetComplianceSlopeResponse :definition-)
      "

uint8 slope
---

")



(provide :dynamixel_controllers/SetComplianceSlope "0b655cbe1b74daf357824dcc427c1004")


