; Auto-generated. Do not edit!


(cl:in-package submarinedrone-srv)


;//! \htmlinclude depth_warning-request.msg.html

(cl:defclass <depth_warning-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass depth_warning-request (<depth_warning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <depth_warning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'depth_warning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submarinedrone-srv:<depth_warning-request> is deprecated: use submarinedrone-srv:depth_warning-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <depth_warning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submarinedrone-srv:message-val is deprecated.  Use submarinedrone-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <depth_warning-request>) ostream)
  "Serializes a message object of type '<depth_warning-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <depth_warning-request>) istream)
  "Deserializes a message object of type '<depth_warning-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<depth_warning-request>)))
  "Returns string type for a service object of type '<depth_warning-request>"
  "submarinedrone/depth_warningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'depth_warning-request)))
  "Returns string type for a service object of type 'depth_warning-request"
  "submarinedrone/depth_warningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<depth_warning-request>)))
  "Returns md5sum for a message object of type '<depth_warning-request>"
  "22367e279ad9f68e7619b633d4d05ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'depth_warning-request)))
  "Returns md5sum for a message object of type 'depth_warning-request"
  "22367e279ad9f68e7619b633d4d05ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<depth_warning-request>)))
  "Returns full string definition for message of type '<depth_warning-request>"
  (cl:format cl:nil "# Submarine depth warning management~%# ~%#  - message: should be either NORMAL or WARNING~%#  - response: a short message indicating the color of the WARNING LED on the controler~%#       color is changed to GREEN if depth is NORMAL, or to RED if a WARNING is raised with the service~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'depth_warning-request)))
  "Returns full string definition for message of type 'depth_warning-request"
  (cl:format cl:nil "# Submarine depth warning management~%# ~%#  - message: should be either NORMAL or WARNING~%#  - response: a short message indicating the color of the WARNING LED on the controler~%#       color is changed to GREEN if depth is NORMAL, or to RED if a WARNING is raised with the service~%~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <depth_warning-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <depth_warning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'depth_warning-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude depth_warning-response.msg.html

(cl:defclass <depth_warning-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass depth_warning-response (<depth_warning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <depth_warning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'depth_warning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submarinedrone-srv:<depth_warning-response> is deprecated: use submarinedrone-srv:depth_warning-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <depth_warning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submarinedrone-srv:response-val is deprecated.  Use submarinedrone-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <depth_warning-response>) ostream)
  "Serializes a message object of type '<depth_warning-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <depth_warning-response>) istream)
  "Deserializes a message object of type '<depth_warning-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<depth_warning-response>)))
  "Returns string type for a service object of type '<depth_warning-response>"
  "submarinedrone/depth_warningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'depth_warning-response)))
  "Returns string type for a service object of type 'depth_warning-response"
  "submarinedrone/depth_warningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<depth_warning-response>)))
  "Returns md5sum for a message object of type '<depth_warning-response>"
  "22367e279ad9f68e7619b633d4d05ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'depth_warning-response)))
  "Returns md5sum for a message object of type 'depth_warning-response"
  "22367e279ad9f68e7619b633d4d05ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<depth_warning-response>)))
  "Returns full string definition for message of type '<depth_warning-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'depth_warning-response)))
  "Returns full string definition for message of type 'depth_warning-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <depth_warning-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <depth_warning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'depth_warning-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'depth_warning)))
  'depth_warning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'depth_warning)))
  'depth_warning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'depth_warning)))
  "Returns string type for a service object of type '<depth_warning>"
  "submarinedrone/depth_warning")