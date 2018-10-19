; Auto-generated. Do not edit!


(cl:in-package laser_assembler-srv)


;//! \htmlinclude AssembleScans2-request.msg.html

(cl:defclass <AssembleScans2-request> (roslisp-msg-protocol:ros-message)
  ((begin
    :reader begin
    :initarg :begin
    :type cl:real
    :initform 0)
   (end
    :reader end
    :initarg :end
    :type cl:real
    :initform 0))
)

(cl:defclass AssembleScans2-request (<AssembleScans2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssembleScans2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssembleScans2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_assembler-srv:<AssembleScans2-request> is deprecated: use laser_assembler-srv:AssembleScans2-request instead.")))

(cl:ensure-generic-function 'begin-val :lambda-list '(m))
(cl:defmethod begin-val ((m <AssembleScans2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_assembler-srv:begin-val is deprecated.  Use laser_assembler-srv:begin instead.")
  (begin m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <AssembleScans2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_assembler-srv:end-val is deprecated.  Use laser_assembler-srv:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssembleScans2-request>) ostream)
  "Serializes a message object of type '<AssembleScans2-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'begin)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'begin) (cl:floor (cl:slot-value msg 'begin)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'end)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'end) (cl:floor (cl:slot-value msg 'end)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssembleScans2-request>) istream)
  "Deserializes a message object of type '<AssembleScans2-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'begin) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssembleScans2-request>)))
  "Returns string type for a service object of type '<AssembleScans2-request>"
  "laser_assembler/AssembleScans2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssembleScans2-request)))
  "Returns string type for a service object of type 'AssembleScans2-request"
  "laser_assembler/AssembleScans2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssembleScans2-request>)))
  "Returns md5sum for a message object of type '<AssembleScans2-request>"
  "3070b06ce843fd597804874f2df366a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssembleScans2-request)))
  "Returns md5sum for a message object of type 'AssembleScans2-request"
  "3070b06ce843fd597804874f2df366a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssembleScans2-request>)))
  "Returns full string definition for message of type '<AssembleScans2-request>"
  (cl:format cl:nil "~%time begin~%~%time end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssembleScans2-request)))
  "Returns full string definition for message of type 'AssembleScans2-request"
  (cl:format cl:nil "~%time begin~%~%time end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssembleScans2-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssembleScans2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AssembleScans2-request
    (cl:cons ':begin (begin msg))
    (cl:cons ':end (end msg))
))
;//! \htmlinclude AssembleScans2-response.msg.html

(cl:defclass <AssembleScans2-response> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass AssembleScans2-response (<AssembleScans2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssembleScans2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssembleScans2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_assembler-srv:<AssembleScans2-response> is deprecated: use laser_assembler-srv:AssembleScans2-response instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <AssembleScans2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_assembler-srv:cloud-val is deprecated.  Use laser_assembler-srv:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssembleScans2-response>) ostream)
  "Serializes a message object of type '<AssembleScans2-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssembleScans2-response>) istream)
  "Deserializes a message object of type '<AssembleScans2-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssembleScans2-response>)))
  "Returns string type for a service object of type '<AssembleScans2-response>"
  "laser_assembler/AssembleScans2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssembleScans2-response)))
  "Returns string type for a service object of type 'AssembleScans2-response"
  "laser_assembler/AssembleScans2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssembleScans2-response>)))
  "Returns md5sum for a message object of type '<AssembleScans2-response>"
  "3070b06ce843fd597804874f2df366a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssembleScans2-response)))
  "Returns md5sum for a message object of type 'AssembleScans2-response"
  "3070b06ce843fd597804874f2df366a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssembleScans2-response>)))
  "Returns full string definition for message of type '<AssembleScans2-response>"
  (cl:format cl:nil "~%~%~%sensor_msgs/PointCloud2 cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssembleScans2-response)))
  "Returns full string definition for message of type 'AssembleScans2-response"
  (cl:format cl:nil "~%~%~%sensor_msgs/PointCloud2 cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssembleScans2-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssembleScans2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AssembleScans2-response
    (cl:cons ':cloud (cloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AssembleScans2)))
  'AssembleScans2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AssembleScans2)))
  'AssembleScans2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssembleScans2)))
  "Returns string type for a service object of type '<AssembleScans2>"
  "laser_assembler/AssembleScans2")