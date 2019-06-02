; Auto-generated. Do not edit!


(cl:in-package myMsg-msg)


;//! \htmlinclude simple_msg.msg.html

(cl:defclass <simple_msg> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass simple_msg (<simple_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <simple_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'simple_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name myMsg-msg:<simple_msg> is deprecated: use myMsg-msg:simple_msg instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <simple_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myMsg-msg:num1-val is deprecated.  Use myMsg-msg:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <simple_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader myMsg-msg:num2-val is deprecated.  Use myMsg-msg:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <simple_msg>) ostream)
  "Serializes a message object of type '<simple_msg>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <simple_msg>) istream)
  "Deserializes a message object of type '<simple_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<simple_msg>)))
  "Returns string type for a message object of type '<simple_msg>"
  "myMsg/simple_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'simple_msg)))
  "Returns string type for a message object of type 'simple_msg"
  "myMsg/simple_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<simple_msg>)))
  "Returns md5sum for a message object of type '<simple_msg>"
  "c68f3979e1a90aac7d1c75a1096d1e60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'simple_msg)))
  "Returns md5sum for a message object of type 'simple_msg"
  "c68f3979e1a90aac7d1c75a1096d1e60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<simple_msg>)))
  "Returns full string definition for message of type '<simple_msg>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'simple_msg)))
  "Returns full string definition for message of type 'simple_msg"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <simple_msg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <simple_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'simple_msg
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
