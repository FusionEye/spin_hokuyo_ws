; Auto-generated. Do not edit!


(cl:in-package laser_assembler-srv)


;//! \htmlinclude AssembleScans-request.msg.html

(cl:defclass <AssembleScans-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AssembleScans-request (<AssembleScans-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssembleScans-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssembleScans-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_assembler-srv:<AssembleScans-request> is deprecated: use laser_assembler-srv:AssembleScans-request instead.")))

(cl:ensure-generic-function 'begin-val :lambda-list '(m))
(cl:defmethod begin-val ((m <AssembleScans-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_assembler-srv:begin-val is deprecated.  Use laser_assembler-srv:begin instead.")
  (begin m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <AssembleScans-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_assembler-srv:end-val is deprecated.  Use laser_assembler-srv:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssembleScans-request>) ostream)
  "Serializes a message object of type '<AssembleScans-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssembleScans-request>) istream)
  "Deserializes a message object of type '<AssembleScans-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssembleScans-request>)))
  "Returns string type for a service object of type '<AssembleScans-request>"
  "laser_assembler/AssembleScansRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssembleScans-request)))
  "Returns string type for a service object of type 'AssembleScans-request"
  "laser_assembler/AssembleScansRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssembleScans-request>)))
  "Returns md5sum for a message object of type '<AssembleScans-request>"
  "6d5cec00dca23821eae6bd7449078aa7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssembleScans-request)))
  "Returns md5sum for a message object of type 'AssembleScans-request"
  "6d5cec00dca23821eae6bd7449078aa7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssembleScans-request>)))
  "Returns full string definition for message of type '<AssembleScans-request>"
  (cl:format cl:nil "~%time begin~%~%time end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssembleScans-request)))
  "Returns full string definition for message of type 'AssembleScans-request"
  (cl:format cl:nil "~%time begin~%~%time end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssembleScans-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssembleScans-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AssembleScans-request
    (cl:cons ':begin (begin msg))
    (cl:cons ':end (end msg))
))
;//! \htmlinclude AssembleScans-response.msg.html

(cl:defclass <AssembleScans-response> (roslisp-msg-protocol:ros-message)
  ((cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud)))
)

(cl:defclass AssembleScans-response (<AssembleScans-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssembleScans-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssembleScans-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_assembler-srv:<AssembleScans-response> is deprecated: use laser_assembler-srv:AssembleScans-response instead.")))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <AssembleScans-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_assembler-srv:cloud-val is deprecated.  Use laser_assembler-srv:cloud instead.")
  (cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssembleScans-response>) ostream)
  "Serializes a message object of type '<AssembleScans-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssembleScans-response>) istream)
  "Deserializes a message object of type '<AssembleScans-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssembleScans-response>)))
  "Returns string type for a service object of type '<AssembleScans-response>"
  "laser_assembler/AssembleScansResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssembleScans-response)))
  "Returns string type for a service object of type 'AssembleScans-response"
  "laser_assembler/AssembleScansResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssembleScans-response>)))
  "Returns md5sum for a message object of type '<AssembleScans-response>"
  "6d5cec00dca23821eae6bd7449078aa7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssembleScans-response)))
  "Returns md5sum for a message object of type 'AssembleScans-response"
  "6d5cec00dca23821eae6bd7449078aa7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssembleScans-response>)))
  "Returns full string definition for message of type '<AssembleScans-response>"
  (cl:format cl:nil "~%~%~%sensor_msgs/PointCloud cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssembleScans-response)))
  "Returns full string definition for message of type 'AssembleScans-response"
  (cl:format cl:nil "~%~%~%sensor_msgs/PointCloud cloud~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud~%# This message holds a collection of 3d points, plus optional additional~%# information about each point.~%~%# Time of sensor data acquisition, coordinate frame ID.~%Header header~%~%# Array of 3d points. Each Point32 should be interpreted as a 3d point~%# in the frame given in the header.~%geometry_msgs/Point32[] points~%~%# Each channel should have the same number of elements as points array,~%# and the data in each channel should correspond 1:1 with each point.~%# Channel names in common practice are listed in ChannelFloat32.msg.~%ChannelFloat32[] channels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: sensor_msgs/ChannelFloat32~%# This message is used by the PointCloud message to hold optional data~%# associated with each point in the cloud. The length of the values~%# array should be the same as the length of the points array in the~%# PointCloud, and each value should be associated with the corresponding~%# point.~%~%# Channel names in existing practice include:~%#   \"u\", \"v\" - row and column (respectively) in the left stereo image.~%#              This is opposite to usual conventions but remains for~%#              historical reasons. The newer PointCloud2 message has no~%#              such problem.~%#   \"rgb\" - For point clouds produced by color stereo cameras. uint8~%#           (R,G,B) values packed into the least significant 24 bits,~%#           in order.~%#   \"intensity\" - laser or pixel intensity.~%#   \"distance\"~%~%# The channel name should give semantics of the channel (e.g.~%# \"intensity\" instead of \"value\").~%string name~%~%# The values array should be 1-1 with the elements of the associated~%# PointCloud.~%float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssembleScans-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssembleScans-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AssembleScans-response
    (cl:cons ':cloud (cloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AssembleScans)))
  'AssembleScans-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AssembleScans)))
  'AssembleScans-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssembleScans)))
  "Returns string type for a service object of type '<AssembleScans>"
  "laser_assembler/AssembleScans")