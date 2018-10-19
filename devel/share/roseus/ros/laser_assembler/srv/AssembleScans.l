;; Auto-generated. Do not edit!


(when (boundp 'laser_assembler::AssembleScans)
  (if (not (find-package "LASER_ASSEMBLER"))
    (make-package "LASER_ASSEMBLER"))
  (shadow 'AssembleScans (find-package "LASER_ASSEMBLER")))
(unless (find-package "LASER_ASSEMBLER::ASSEMBLESCANS")
  (make-package "LASER_ASSEMBLER::ASSEMBLESCANS"))
(unless (find-package "LASER_ASSEMBLER::ASSEMBLESCANSREQUEST")
  (make-package "LASER_ASSEMBLER::ASSEMBLESCANSREQUEST"))
(unless (find-package "LASER_ASSEMBLER::ASSEMBLESCANSRESPONSE")
  (make-package "LASER_ASSEMBLER::ASSEMBLESCANSRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass laser_assembler::AssembleScansRequest
  :super ros::object
  :slots (_begin _end ))

(defmethod laser_assembler::AssembleScansRequest
  (:init
   (&key
    ((:begin __begin) (instance ros::time :init))
    ((:end __end) (instance ros::time :init))
    )
   (send-super :init)
   (setq _begin __begin)
   (setq _end __end)
   self)
  (:begin
   (&optional __begin)
   (if __begin (setq _begin __begin)) _begin)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; time _begin
    8
    ;; time _end
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _begin
       (write-long (send _begin :sec) s) (write-long (send _begin :nsec) s)
     ;; time _end
       (write-long (send _end :sec) s) (write-long (send _end :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _begin
     (send _begin :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _begin :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _end
     (send _end :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _end :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass laser_assembler::AssembleScansResponse
  :super ros::object
  :slots (_cloud ))

(defmethod laser_assembler::AssembleScansResponse
  (:init
   (&key
    ((:cloud __cloud) (instance sensor_msgs::PointCloud :init))
    )
   (send-super :init)
   (setq _cloud __cloud)
   self)
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud _cloud
    (send _cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud _cloud
       (send _cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;;
   self)
  )

(defclass laser_assembler::AssembleScans
  :super ros::object
  :slots ())

(setf (get laser_assembler::AssembleScans :md5sum-) "6d5cec00dca23821eae6bd7449078aa7")
(setf (get laser_assembler::AssembleScans :datatype-) "laser_assembler/AssembleScans")
(setf (get laser_assembler::AssembleScans :request) laser_assembler::AssembleScansRequest)
(setf (get laser_assembler::AssembleScans :response) laser_assembler::AssembleScansResponse)

(defmethod laser_assembler::AssembleScansRequest
  (:response () (instance laser_assembler::AssembleScansResponse :init)))

(setf (get laser_assembler::AssembleScansRequest :md5sum-) "6d5cec00dca23821eae6bd7449078aa7")
(setf (get laser_assembler::AssembleScansRequest :datatype-) "laser_assembler/AssembleScansRequest")
(setf (get laser_assembler::AssembleScansRequest :definition-)
      "
time begin

time end
---



sensor_msgs/PointCloud cloud


================================================================================
MSG: sensor_msgs/PointCloud
# This message holds a collection of 3d points, plus optional additional
# information about each point.

# Time of sensor data acquisition, coordinate frame ID.
Header header

# Array of 3d points. Each Point32 should be interpreted as a 3d point
# in the frame given in the header.
geometry_msgs/Point32[] points

# Each channel should have the same number of elements as points array,
# and the data in each channel should correspond 1:1 with each point.
# Channel names in common practice are listed in ChannelFloat32.msg.
ChannelFloat32[] channels

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

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: sensor_msgs/ChannelFloat32
# This message is used by the PointCloud message to hold optional data
# associated with each point in the cloud. The length of the values
# array should be the same as the length of the points array in the
# PointCloud, and each value should be associated with the corresponding
# point.

# Channel names in existing practice include:
#   \"u\", \"v\" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   \"rgb\" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   \"intensity\" - laser or pixel intensity.
#   \"distance\"

# The channel name should give semantics of the channel (e.g.
# \"intensity\" instead of \"value\").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values
")

(setf (get laser_assembler::AssembleScansResponse :md5sum-) "6d5cec00dca23821eae6bd7449078aa7")
(setf (get laser_assembler::AssembleScansResponse :datatype-) "laser_assembler/AssembleScansResponse")
(setf (get laser_assembler::AssembleScansResponse :definition-)
      "
time begin

time end
---



sensor_msgs/PointCloud cloud


================================================================================
MSG: sensor_msgs/PointCloud
# This message holds a collection of 3d points, plus optional additional
# information about each point.

# Time of sensor data acquisition, coordinate frame ID.
Header header

# Array of 3d points. Each Point32 should be interpreted as a 3d point
# in the frame given in the header.
geometry_msgs/Point32[] points

# Each channel should have the same number of elements as points array,
# and the data in each channel should correspond 1:1 with each point.
# Channel names in common practice are listed in ChannelFloat32.msg.
ChannelFloat32[] channels

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

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: sensor_msgs/ChannelFloat32
# This message is used by the PointCloud message to hold optional data
# associated with each point in the cloud. The length of the values
# array should be the same as the length of the points array in the
# PointCloud, and each value should be associated with the corresponding
# point.

# Channel names in existing practice include:
#   \"u\", \"v\" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   \"rgb\" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   \"intensity\" - laser or pixel intensity.
#   \"distance\"

# The channel name should give semantics of the channel (e.g.
# \"intensity\" instead of \"value\").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values
")



(provide :laser_assembler/AssembleScans "6d5cec00dca23821eae6bd7449078aa7")


