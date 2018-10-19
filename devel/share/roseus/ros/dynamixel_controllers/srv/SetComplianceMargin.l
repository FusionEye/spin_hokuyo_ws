;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_controllers::SetComplianceMargin)
  (if (not (find-package "DYNAMIXEL_CONTROLLERS"))
    (make-package "DYNAMIXEL_CONTROLLERS"))
  (shadow 'SetComplianceMargin (find-package "DYNAMIXEL_CONTROLLERS")))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEMARGIN")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEMARGIN"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEMARGINREQUEST")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEMARGINREQUEST"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEMARGINRESPONSE")
  (make-package "DYNAMIXEL_CONTROLLERS::SETCOMPLIANCEMARGINRESPONSE"))

(in-package "ROS")





(defclass dynamixel_controllers::SetComplianceMarginRequest
  :super ros::object
  :slots (_margin ))

(defmethod dynamixel_controllers::SetComplianceMarginRequest
  (:init
   (&key
    ((:margin __margin) 0)
    )
   (send-super :init)
   (setq _margin (round __margin))
   self)
  (:margin
   (&optional __margin)
   (if __margin (setq _margin __margin)) _margin)
  (:serialization-length
   ()
   (+
    ;; uint8 _margin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _margin
       (write-byte _margin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _margin
     (setq _margin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_controllers::SetComplianceMarginResponse
  :super ros::object
  :slots ())

(defmethod dynamixel_controllers::SetComplianceMarginResponse
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

(defclass dynamixel_controllers::SetComplianceMargin
  :super ros::object
  :slots ())

(setf (get dynamixel_controllers::SetComplianceMargin :md5sum-) "daacbf1c0642fe923f2dfb9217a97b81")
(setf (get dynamixel_controllers::SetComplianceMargin :datatype-) "dynamixel_controllers/SetComplianceMargin")
(setf (get dynamixel_controllers::SetComplianceMargin :request) dynamixel_controllers::SetComplianceMarginRequest)
(setf (get dynamixel_controllers::SetComplianceMargin :response) dynamixel_controllers::SetComplianceMarginResponse)

(defmethod dynamixel_controllers::SetComplianceMarginRequest
  (:response () (instance dynamixel_controllers::SetComplianceMarginResponse :init)))

(setf (get dynamixel_controllers::SetComplianceMarginRequest :md5sum-) "daacbf1c0642fe923f2dfb9217a97b81")
(setf (get dynamixel_controllers::SetComplianceMarginRequest :datatype-) "dynamixel_controllers/SetComplianceMarginRequest")
(setf (get dynamixel_controllers::SetComplianceMarginRequest :definition-)
      "

uint8 margin
---

")

(setf (get dynamixel_controllers::SetComplianceMarginResponse :md5sum-) "daacbf1c0642fe923f2dfb9217a97b81")
(setf (get dynamixel_controllers::SetComplianceMarginResponse :datatype-) "dynamixel_controllers/SetComplianceMarginResponse")
(setf (get dynamixel_controllers::SetComplianceMarginResponse :definition-)
      "

uint8 margin
---

")



(provide :dynamixel_controllers/SetComplianceMargin "daacbf1c0642fe923f2dfb9217a97b81")


