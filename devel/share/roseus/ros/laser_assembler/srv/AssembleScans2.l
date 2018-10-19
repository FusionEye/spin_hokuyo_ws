;; Auto-generated. Do not edit!


(when (boundp 'laser_assembler::AssembleScans2)
  (if (not (find-package "LASER_ASSEMBLER"))
    (make-package "LASER_ASSEMBLER"))
  (shadow 'AssembleScans2 (find-package "LASER_ASSEMBLER")))
(unless (find-package "LASER_ASSEMBLER::ASSEMBLESCANS2")
  (make-package "LASER_ASSEMBLER::ASSEMBLESCANS2"))
(unless (find-package "LASER_ASSEMBLER::ASSEMBLESCANS2REQUEST")
  (make-package "LASER_ASSEMBLER::ASSEMBLESCANS2REQUEST"))
(unless (find-package "LASER_ASSEMBLER::ASSEMBLESCANS2RESPONSE")
  (make-package "LASER_ASSEMBLER::ASSEMBLESCANS2RESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass laser_assembler::AssembleScans2Request
  :super ros::object
  :slots (_begin _end ))

(defmethod laser_assembler::AssembleScans2Request
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

(defclass laser_assembler::AssembleScans2Response
  :super ros::object
  :slots (_cloud ))

(defmethod laser_assembler::AssembleScans2Response
  (:init
   (&key
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
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
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;;
   self)
  )

(defclass laser_assembler::AssembleScans2
  :super ros::object
  :slots ())

(setf (get laser_assembler::AssembleScans2 :md5sum-) "3070b06ce843fd597804874f2df366a3")
(setf (get laser_assembler::AssembleScans2 :datatype-) "laser_assembler/AssembleScans2")
(setf (get laser_assembler::AssembleScans2 :request) laser_assembler::AssembleScans2Request)
(setf (get laser_assembler::AssembleScans2 :response) laser_assembler::AssembleScans2Response)

(defmethod laser_assembler::AssembleScans2Request
  (:response () (instance laser_assembler::AssembleScans2Response :init)))

(setf (get laser_assembler::AssembleScans2Request :md5sum-) "3070b06ce843fd597804874f2df366a3")
(setf (get laser_assembler::AssembleScans2Request :datatype-) "laser_assembler/AssembleScans2Request")
(setf (get laser_assembler::AssembleScans2Request :definition-)
      "
time begin

time end
---



sensor_msgs/PointCloud2 cloud


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")

(setf (get laser_assembler::AssembleScans2Response :md5sum-) "3070b06ce843fd597804874f2df366a3")
(setf (get laser_assembler::AssembleScans2Response :datatype-) "laser_assembler/AssembleScans2Response")
(setf (get laser_assembler::AssembleScans2Response :definition-)
      "
time begin

time end
---



sensor_msgs/PointCloud2 cloud


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")



(provide :laser_assembler/AssembleScans2 "3070b06ce843fd597804874f2df366a3")


