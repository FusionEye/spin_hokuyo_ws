;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_msgs::JointState)
  (if (not (find-package "DYNAMIXEL_MSGS"))
    (make-package "DYNAMIXEL_MSGS"))
  (shadow 'JointState (find-package "DYNAMIXEL_MSGS")))
(unless (find-package "DYNAMIXEL_MSGS::JOINTSTATE")
  (make-package "DYNAMIXEL_MSGS::JOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude JointState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dynamixel_msgs::JointState
  :super ros::object
  :slots (_header _name _motor_ids _motor_temps _goal_pos _current_pos _error _velocity _load _is_moving ))

(defmethod dynamixel_msgs::JointState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:motor_ids __motor_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motor_temps __motor_temps) (make-array 0 :initial-element 0 :element-type :integer))
    ((:goal_pos __goal_pos) 0.0)
    ((:current_pos __current_pos) 0.0)
    ((:error __error) 0.0)
    ((:velocity __velocity) 0.0)
    ((:load __load) 0.0)
    ((:is_moving __is_moving) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _motor_ids __motor_ids)
   (setq _motor_temps __motor_temps)
   (setq _goal_pos (float __goal_pos))
   (setq _current_pos (float __current_pos))
   (setq _error (float __error))
   (setq _velocity (float __velocity))
   (setq _load (float __load))
   (setq _is_moving __is_moving)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:motor_ids
   (&optional __motor_ids)
   (if __motor_ids (setq _motor_ids __motor_ids)) _motor_ids)
  (:motor_temps
   (&optional __motor_temps)
   (if __motor_temps (setq _motor_temps __motor_temps)) _motor_temps)
  (:goal_pos
   (&optional __goal_pos)
   (if __goal_pos (setq _goal_pos __goal_pos)) _goal_pos)
  (:current_pos
   (&optional __current_pos)
   (if __current_pos (setq _current_pos __current_pos)) _current_pos)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:is_moving
   (&optional __is_moving)
   (if __is_moving (setq _is_moving __is_moving)) _is_moving)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int32[] _motor_ids
    (* 4    (length _motor_ids)) 4
    ;; int32[] _motor_temps
    (* 4    (length _motor_temps)) 4
    ;; float64 _goal_pos
    8
    ;; float64 _current_pos
    8
    ;; float64 _error
    8
    ;; float64 _velocity
    8
    ;; float64 _load
    8
    ;; bool _is_moving
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32[] _motor_ids
     (write-long (length _motor_ids) s)
     (dotimes (i (length _motor_ids))
       (write-long (elt _motor_ids i) s)
       )
     ;; int32[] _motor_temps
     (write-long (length _motor_temps) s)
     (dotimes (i (length _motor_temps))
       (write-long (elt _motor_temps i) s)
       )
     ;; float64 _goal_pos
       (sys::poke _goal_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_pos
       (sys::poke _current_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _load
       (sys::poke _load (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_moving
       (if _is_moving (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _motor_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motor_temps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_temps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor_temps i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64 _goal_pos
     (setq _goal_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_pos
     (setq _current_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _load
     (setq _load (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_moving
     (setq _is_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dynamixel_msgs::JointState :md5sum-) "2b8449320cde76616338e2539db27c32")
(setf (get dynamixel_msgs::JointState :datatype-) "dynamixel_msgs/JointState")
(setf (get dynamixel_msgs::JointState :definition-)
      "Header header
string name         # joint name
int32[] motor_ids   # motor ids controlling this joint
int32[] motor_temps # motor temperatures, same order as motor_ids

float64 goal_pos    # commanded position (in radians)
float64 current_pos # current joint position (in radians)
float64 error       # error between commanded and current positions (in radians)
float64 velocity    # current joint speed (in radians per second)
float64 load        # current load
bool is_moving      # is joint currently in motion


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :dynamixel_msgs/JointState "2b8449320cde76616338e2539db27c32")


