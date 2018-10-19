;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_msgs::MotorState)
  (if (not (find-package "DYNAMIXEL_MSGS"))
    (make-package "DYNAMIXEL_MSGS"))
  (shadow 'MotorState (find-package "DYNAMIXEL_MSGS")))
(unless (find-package "DYNAMIXEL_MSGS::MOTORSTATE")
  (make-package "DYNAMIXEL_MSGS::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass dynamixel_msgs::MotorState
  :super ros::object
  :slots (_timestamp _id _goal _position _error _speed _load _voltage _temperature _moving ))

(defmethod dynamixel_msgs::MotorState
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:goal __goal) 0)
    ((:position __position) 0)
    ((:error __error) 0)
    ((:speed __speed) 0)
    ((:load __load) 0.0)
    ((:voltage __voltage) 0.0)
    ((:temperature __temperature) 0)
    ((:moving __moving) nil)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _goal (round __goal))
   (setq _position (round __position))
   (setq _error (round __error))
   (setq _speed (round __speed))
   (setq _load (float __load))
   (setq _voltage (float __voltage))
   (setq _temperature (round __temperature))
   (setq _moving __moving)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; int32 _id
    4
    ;; int32 _goal
    4
    ;; int32 _position
    4
    ;; int32 _error
    4
    ;; int32 _speed
    4
    ;; float64 _load
    8
    ;; float64 _voltage
    8
    ;; int32 _temperature
    4
    ;; bool _moving
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _goal
       (write-long _goal s)
     ;; int32 _position
       (write-long _position s)
     ;; int32 _error
       (write-long _error s)
     ;; int32 _speed
       (write-long _speed s)
     ;; float64 _load
       (sys::poke _load (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _temperature
       (write-long _temperature s)
     ;; bool _moving
       (if _moving (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal
     (setq _goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error
     (setq _error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _load
     (setq _load (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _voltage
     (setq _voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _moving
     (setq _moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dynamixel_msgs::MotorState :md5sum-) "1cefdc3ff0c7d52e475886024476b74d")
(setf (get dynamixel_msgs::MotorState :datatype-) "dynamixel_msgs/MotorState")
(setf (get dynamixel_msgs::MotorState :definition-)
      "float64 timestamp   # motor state is at this time
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



(provide :dynamixel_msgs/MotorState "1cefdc3ff0c7d52e475886024476b74d")


