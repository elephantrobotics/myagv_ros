; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude AddLink-request.msg.html

(cl:defclass <AddLink-request> (roslisp-msg-protocol:ros-message)
  ((link
    :reader link
    :initarg :link
    :type rtabmap_msgs-msg:Link
    :initform (cl:make-instance 'rtabmap_msgs-msg:Link)))
)

(cl:defclass AddLink-request (<AddLink-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddLink-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddLink-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<AddLink-request> is deprecated: use rtabmap_msgs-srv:AddLink-request instead.")))

(cl:ensure-generic-function 'link-val :lambda-list '(m))
(cl:defmethod link-val ((m <AddLink-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:link-val is deprecated.  Use rtabmap_msgs-srv:link instead.")
  (link m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddLink-request>) ostream)
  "Serializes a message object of type '<AddLink-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'link) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddLink-request>) istream)
  "Deserializes a message object of type '<AddLink-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'link) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddLink-request>)))
  "Returns string type for a service object of type '<AddLink-request>"
  "rtabmap_msgs/AddLinkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLink-request)))
  "Returns string type for a service object of type 'AddLink-request"
  "rtabmap_msgs/AddLinkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddLink-request>)))
  "Returns md5sum for a message object of type '<AddLink-request>"
  "050728e3c25a15bf78d487d6aafab152")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddLink-request)))
  "Returns md5sum for a message object of type 'AddLink-request"
  "050728e3c25a15bf78d487d6aafab152")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddLink-request>)))
  "Returns full string definition for message of type '<AddLink-request>"
  (cl:format cl:nil "#request~%Link link~%~%================================================================================~%MSG: rtabmap_msgs/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddLink-request)))
  "Returns full string definition for message of type 'AddLink-request"
  (cl:format cl:nil "#request~%Link link~%~%================================================================================~%MSG: rtabmap_msgs/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddLink-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'link))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddLink-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddLink-request
    (cl:cons ':link (link msg))
))
;//! \htmlinclude AddLink-response.msg.html

(cl:defclass <AddLink-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddLink-response (<AddLink-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddLink-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddLink-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<AddLink-response> is deprecated: use rtabmap_msgs-srv:AddLink-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddLink-response>) ostream)
  "Serializes a message object of type '<AddLink-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddLink-response>) istream)
  "Deserializes a message object of type '<AddLink-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddLink-response>)))
  "Returns string type for a service object of type '<AddLink-response>"
  "rtabmap_msgs/AddLinkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLink-response)))
  "Returns string type for a service object of type 'AddLink-response"
  "rtabmap_msgs/AddLinkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddLink-response>)))
  "Returns md5sum for a message object of type '<AddLink-response>"
  "050728e3c25a15bf78d487d6aafab152")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddLink-response)))
  "Returns md5sum for a message object of type 'AddLink-response"
  "050728e3c25a15bf78d487d6aafab152")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddLink-response>)))
  "Returns full string definition for message of type '<AddLink-response>"
  (cl:format cl:nil "#response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddLink-response)))
  "Returns full string definition for message of type 'AddLink-response"
  (cl:format cl:nil "#response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddLink-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddLink-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddLink-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddLink)))
  'AddLink-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddLink)))
  'AddLink-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLink)))
  "Returns string type for a service object of type '<AddLink>"
  "rtabmap_msgs/AddLink")