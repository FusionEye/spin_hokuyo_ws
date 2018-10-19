;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_controllers::RestartController)
  (if (not (find-package "DYNAMIXEL_CONTROLLERS"))
    (make-package "DYNAMIXEL_CONTROLLERS"))
  (shadow 'RestartController (find-package "DYNAMIXEL_CONTROLLERS")))
(unless (find-package "DYNAMIXEL_CONTROLLERS::RESTARTCONTROLLER")
  (make-package "DYNAMIXEL_CONTROLLERS::RESTARTCONTROLLER"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::RESTARTCONTROLLERREQUEST")
  (make-package "DYNAMIXEL_CONTROLLERS::RESTARTCONTROLLERREQUEST"))
(unless (find-package "DYNAMIXEL_CONTROLLERS::RESTARTCONTROLLERRESPONSE")
  (make-package "DYNAMIXEL_CONTROLLERS::RESTARTCONTROLLERRESPONSE"))

(in-package "ROS")





(defclass dynamixel_controllers::RestartControllerRequest
  :super ros::object
  :slots (_port_name _package_path _module_name _class_name _controller_name _dependencies ))

(defmethod dynamixel_controllers::RestartControllerRequest
  (:init
   (&key
    ((:port_name __port_name) "")
    ((:package_path __package_path) "")
    ((:module_name __module_name) "")
    ((:class_name __class_name) "")
    ((:controller_name __controller_name) "")
    ((:dependencies __dependencies) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _port_name (string __port_name))
   (setq _package_path (string __package_path))
   (setq _module_name (string __module_name))
   (setq _class_name (string __class_name))
   (setq _controller_name (string __controller_name))
   (setq _dependencies __dependencies)
   self)
  (:port_name
   (&optional __port_name)
   (if __port_name (setq _port_name __port_name)) _port_name)
  (:package_path
   (&optional __package_path)
   (if __package_path (setq _package_path __package_path)) _package_path)
  (:module_name
   (&optional __module_name)
   (if __module_name (setq _module_name __module_name)) _module_name)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:controller_name
   (&optional __controller_name)
   (if __controller_name (setq _controller_name __controller_name)) _controller_name)
  (:dependencies
   (&optional __dependencies)
   (if __dependencies (setq _dependencies __dependencies)) _dependencies)
  (:serialization-length
   ()
   (+
    ;; string _port_name
    4 (length _port_name)
    ;; string _package_path
    4 (length _package_path)
    ;; string _module_name
    4 (length _module_name)
    ;; string _class_name
    4 (length _class_name)
    ;; string _controller_name
    4 (length _controller_name)
    ;; string[] _dependencies
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _dependencies)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _port_name
       (write-long (length _port_name) s) (princ _port_name s)
     ;; string _package_path
       (write-long (length _package_path) s) (princ _package_path s)
     ;; string _module_name
       (write-long (length _module_name) s) (princ _module_name s)
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;; string _controller_name
       (write-long (length _controller_name) s) (princ _controller_name s)
     ;; string[] _dependencies
     (write-long (length _dependencies) s)
     (dolist (elem _dependencies)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _port_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _port_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _package_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _package_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _module_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _controller_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controller_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _dependencies
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dependencies (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _dependencies i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dynamixel_controllers::RestartControllerResponse
  :super ros::object
  :slots (_success _reason ))

(defmethod dynamixel_controllers::RestartControllerResponse
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

(defclass dynamixel_controllers::RestartController
  :super ros::object
  :slots ())

(setf (get dynamixel_controllers::RestartController :md5sum-) "94c76c2df56346fcaa2611bdac54f434")
(setf (get dynamixel_controllers::RestartController :datatype-) "dynamixel_controllers/RestartController")
(setf (get dynamixel_controllers::RestartController :request) dynamixel_controllers::RestartControllerRequest)
(setf (get dynamixel_controllers::RestartController :response) dynamixel_controllers::RestartControllerResponse)

(defmethod dynamixel_controllers::RestartControllerRequest
  (:response () (instance dynamixel_controllers::RestartControllerResponse :init)))

(setf (get dynamixel_controllers::RestartControllerRequest :md5sum-) "94c76c2df56346fcaa2611bdac54f434")
(setf (get dynamixel_controllers::RestartControllerRequest :datatype-) "dynamixel_controllers/RestartControllerRequest")
(setf (get dynamixel_controllers::RestartControllerRequest :definition-)
      "string port_name
string package_path
string module_name
string class_name
string controller_name
string[] dependencies
---
bool success
string reason

")

(setf (get dynamixel_controllers::RestartControllerResponse :md5sum-) "94c76c2df56346fcaa2611bdac54f434")
(setf (get dynamixel_controllers::RestartControllerResponse :datatype-) "dynamixel_controllers/RestartControllerResponse")
(setf (get dynamixel_controllers::RestartControllerResponse :definition-)
      "string port_name
string package_path
string module_name
string class_name
string controller_name
string[] dependencies
---
bool success
string reason

")



(provide :dynamixel_controllers/RestartController "94c76c2df56346fcaa2611bdac54f434")


