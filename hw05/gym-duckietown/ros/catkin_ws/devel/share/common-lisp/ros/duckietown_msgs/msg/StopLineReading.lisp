; Auto-generated. Do not edit!


(cl:in-package duckietown_msgs-msg)


;//! \htmlinclude StopLineReading.msg.html

(cl:defclass <StopLineReading> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stop_line_detected
    :reader stop_line_detected
    :initarg :stop_line_detected
    :type cl:boolean
    :initform cl:nil)
   (at_stop_line
    :reader at_stop_line
    :initarg :at_stop_line
    :type cl:boolean
    :initform cl:nil)
   (line_angle
    :reader line_angle
    :initarg :line_angle
    :type cl:float
    :initform 0.0)
   (stop_line_point
    :reader stop_line_point
    :initarg :stop_line_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass StopLineReading (<StopLineReading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopLineReading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopLineReading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duckietown_msgs-msg:<StopLineReading> is deprecated: use duckietown_msgs-msg:StopLineReading instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StopLineReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:header-val is deprecated.  Use duckietown_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stop_line_detected-val :lambda-list '(m))
(cl:defmethod stop_line_detected-val ((m <StopLineReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:stop_line_detected-val is deprecated.  Use duckietown_msgs-msg:stop_line_detected instead.")
  (stop_line_detected m))

(cl:ensure-generic-function 'at_stop_line-val :lambda-list '(m))
(cl:defmethod at_stop_line-val ((m <StopLineReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:at_stop_line-val is deprecated.  Use duckietown_msgs-msg:at_stop_line instead.")
  (at_stop_line m))

(cl:ensure-generic-function 'line_angle-val :lambda-list '(m))
(cl:defmethod line_angle-val ((m <StopLineReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:line_angle-val is deprecated.  Use duckietown_msgs-msg:line_angle instead.")
  (line_angle m))

(cl:ensure-generic-function 'stop_line_point-val :lambda-list '(m))
(cl:defmethod stop_line_point-val ((m <StopLineReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:stop_line_point-val is deprecated.  Use duckietown_msgs-msg:stop_line_point instead.")
  (stop_line_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopLineReading>) ostream)
  "Serializes a message object of type '<StopLineReading>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_line_detected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'at_stop_line) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'line_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stop_line_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopLineReading>) istream)
  "Deserializes a message object of type '<StopLineReading>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'stop_line_detected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'at_stop_line) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'line_angle) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stop_line_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopLineReading>)))
  "Returns string type for a message object of type '<StopLineReading>"
  "duckietown_msgs/StopLineReading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopLineReading)))
  "Returns string type for a message object of type 'StopLineReading"
  "duckietown_msgs/StopLineReading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopLineReading>)))
  "Returns md5sum for a message object of type '<StopLineReading>"
  "55f653b3c7e032a4d334c48bf9dce3f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopLineReading)))
  "Returns md5sum for a message object of type 'StopLineReading"
  "55f653b3c7e032a4d334c48bf9dce3f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopLineReading>)))
  "Returns full string definition for message of type '<StopLineReading>"
  (cl:format cl:nil "Header header~%bool stop_line_detected~%bool at_stop_line~%float32 line_angle # the angle of the stop line normal relative to the bot~%geometry_msgs/Point stop_line_point # this is in the \"lane frame\"~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopLineReading)))
  "Returns full string definition for message of type 'StopLineReading"
  (cl:format cl:nil "Header header~%bool stop_line_detected~%bool at_stop_line~%float32 line_angle # the angle of the stop line normal relative to the bot~%geometry_msgs/Point stop_line_point # this is in the \"lane frame\"~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopLineReading>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stop_line_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopLineReading>))
  "Converts a ROS message object to a list"
  (cl:list 'StopLineReading
    (cl:cons ':header (header msg))
    (cl:cons ':stop_line_detected (stop_line_detected msg))
    (cl:cons ':at_stop_line (at_stop_line msg))
    (cl:cons ':line_angle (line_angle msg))
    (cl:cons ':stop_line_point (stop_line_point msg))
))
