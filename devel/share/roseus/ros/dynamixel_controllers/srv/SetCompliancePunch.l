;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_controllers::SetCompliancePunch)
  (if (not (find-package "DYNAMIXEL_CONTROLLERS"))
    (make-package "DYNAMIXEL_CONTROLLERS"))
  (shadow 'SetCompliancePunch (find-package "DYNAMIXEL_CONTROLLERS")))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEPUNCH")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEPUNCH"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEPUNCHREQUEST")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEPUNCHREQUEST"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEPUNCHRESPONSE")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEPUNCHRESPONSE"))

(in-package "ROS")





(defclass dynamixel_controllers::SetCompliancePunchRequest
  :super ros::object
  :slots (_punch ))

(defmethod dynamixel_controllers::SetCompliancePunchRequest
  (:init
   (&key
    ((:punch __punch) 0)
    )
   (send-super :init)
   (setq _punch (round __punch))
   self)
  (:punch
   (&optional __punch)
   (if __punch (setq _punch __punch)) _punch)
  (:serialization-length
   ()
   (+
    ;; uint8 _punch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _punch
       (write-byte _punch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _punch
     (setq _punch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_controllers::SetCompliancePunchResponse
  :super ros::object
  :slots ())

(defmethod dynamixel_controllers::SetCompliancePunchResponse
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

(defclass dynamixel_controllers::SetCompliancePunch
  :super ros::object
  :slots ())

(setf (get dynamixel_controllers::SetCompliancePunch :md5sum-) "6f1db06d3f143058321215213d1c3bef")
(setf (get dynamixel_controllers::SetCompliancePunch :datatype-) "dynamixel_controllers/SetCompliancePunch")
(setf (get dynamixel_controllers::SetCompliancePunch :request) dynamixel_controllers::SetCompliancePunchRequest)
(setf (get dynamixel_controllers::SetCompliancePunch :response) dynamixel_controllers::SetCompliancePunchResponse)

(defmethod dynamixel_controllers::SetCompliancePunchRequest
  (:response () (instance dynamixel_controllers::SetCompliancePunchResponse :init)))

(setf (get dynamixel_controllers::SetCompliancePunchRequest :md5sum-) "6f1db06d3f143058321215213d1c3bef")
(setf (get dynamixel_controllers::SetCompliancePunchRequest :datatype-) "dynamixel_controllers/SetCompliancePunchRequest")
(setf (get dynamixel_controllers::SetCompliancePunchRequest :definition-)
      "

uint8 punch
---

")

(setf (get dynamixel_controllers::SetCompliancePunchResponse :md5sum-) "6f1db06d3f143058321215213d1c3bef")
(setf (get dynamixel_controllers::SetCompliancePunchResponse :datatype-) "dynamixel_controllers/SetCompliancePunchResponse")
(setf (get dynamixel_controllers::SetCompliancePunchResponse :definition-)
      "

uint8 punch
---

")



(provide :dynamixel_controllers/SetCompliancePunch "6f1db06d3f143058321215213d1c3bef")


