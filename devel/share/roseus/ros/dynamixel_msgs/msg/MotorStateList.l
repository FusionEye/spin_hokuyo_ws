;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_msgs::MotorStateList)
  (if (not (find-package "DYNAMIXEL_MSGS"))
    (make-package "DYNAMIXEL_MSGS"))
  (shadow 'MotorStateList (find-package "DYNAMIXEL_MSGS")))
(unless (find-package "DYNAMIXEL_MSGS::MOTORSTATELIST")
  (make-package "DYNAMIXEL_MSGS::MOTORSTATELIST"))

(in-package "ROS")
;;//! \htmlinclude MotorStateList.msg.html


(defclass dynamixel_msgs::MotorStateList
  :super ros::object
  :slots (_motor_states ))

(defmethod dynamixel_msgs::MotorStateList
  (:init
   (&key
    ((:motor_states __motor_states) (let (r) (dotimes (i 0) (push (instance dynamixel_msgs::MotorState :init) r)) r))
    )
   (send-super :init)
   (setq _motor_states __motor_states)
   self)
  (:motor_states
   (&rest __motor_states)
   (if (keywordp (car __motor_states))
       (send* _motor_states __motor_states)
     (progn
       (if __motor_states (setq _motor_states (car __motor_states)))
       _motor_states)))
  (:serialization-length
   ()
   (+
    ;; dynamixel_msgs/MotorState[] _motor_states
    (apply #'+ (send-all _motor_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dynamixel_msgs/MotorState[] _motor_states
     (write-long (length _motor_states) s)
     (dolist (elem _motor_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dynamixel_msgs/MotorState[] _motor_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_states (let (r) (dotimes (i n) (push (instance dynamixel_msgs::MotorState :init) r)) r))
     (dolist (elem- _motor_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dynamixel_msgs::MotorStateList :md5sum-) "9e94ccf6563ca78afce19eb097f9343c")
(setf (get dynamixel_msgs::MotorStateList :datatype-) "dynamixel_msgs/MotorStateList")
(setf (get dynamixel_msgs::MotorStateList :definition-)
      "MotorState[] motor_states

================================================================================
MSG: dynamixel_msgs/MotorState
float64 timestamp   # motor state is at this time
int32 id            # motor id
int32 goal          # commanded position (in encoder units)
int32 position      # current position (in encoder units)
int32 error         # difference between current and goal positions
int32 speed         # current speed (0.111 rpm per unit)
float64 load        # current load - ratio of applied torque over maximum torque
float64 voltage     # current voltage (V)
int32 temperature   # current temperature (degrees Celsius)
bool moving         # whether the motor is currently in motion

")



(provide :dynamixel_msgs/MotorStateList "9e94ccf6563ca78afce19eb097f9343c")


