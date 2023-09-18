; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude GlobalBundleAdjustment-request.msg.html

(cl:defclass <GlobalBundleAdjustment-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (iterations
    :reader iterations
    :initarg :iterations
    :type cl:integer
    :initform 0)
   (pixel_variance
    :reader pixel_variance
    :initarg :pixel_variance
    :type cl:float
    :initform 0.0)
   (voc_matches
    :reader voc_matches
    :initarg :voc_matches
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GlobalBundleAdjustment-request (<GlobalBundleAdjustment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalBundleAdjustment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalBundleAdjustment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<GlobalBundleAdjustment-request> is deprecated: use rtabmap_msgs-srv:GlobalBundleAdjustment-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GlobalBundleAdjustment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:type-val is deprecated.  Use rtabmap_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'iterations-val :lambda-list '(m))
(cl:defmethod iterations-val ((m <GlobalBundleAdjustment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:iterations-val is deprecated.  Use rtabmap_msgs-srv:iterations instead.")
  (iterations m))

(cl:ensure-generic-function 'pixel_variance-val :lambda-list '(m))
(cl:defmethod pixel_variance-val ((m <GlobalBundleAdjustment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:pixel_variance-val is deprecated.  Use rtabmap_msgs-srv:pixel_variance instead.")
  (pixel_variance m))

(cl:ensure-generic-function 'voc_matches-val :lambda-list '(m))
(cl:defmethod voc_matches-val ((m <GlobalBundleAdjustment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:voc_matches-val is deprecated.  Use rtabmap_msgs-srv:voc_matches instead.")
  (voc_matches m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalBundleAdjustment-request>) ostream)
  "Serializes a message object of type '<GlobalBundleAdjustment-request>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'iterations)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pixel_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'voc_matches) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalBundleAdjustment-request>) istream)
  "Deserializes a message object of type '<GlobalBundleAdjustment-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iterations) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pixel_variance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'voc_matches) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalBundleAdjustment-request>)))
  "Returns string type for a service object of type '<GlobalBundleAdjustment-request>"
  "rtabmap_msgs/GlobalBundleAdjustmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalBundleAdjustment-request)))
  "Returns string type for a service object of type 'GlobalBundleAdjustment-request"
  "rtabmap_msgs/GlobalBundleAdjustmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalBundleAdjustment-request>)))
  "Returns md5sum for a message object of type '<GlobalBundleAdjustment-request>"
  "2e1ed640ba9f481fdaa2226734d70674")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalBundleAdjustment-request)))
  "Returns md5sum for a message object of type 'GlobalBundleAdjustment-request"
  "2e1ed640ba9f481fdaa2226734d70674")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalBundleAdjustment-request>)))
  "Returns full string definition for message of type '<GlobalBundleAdjustment-request>"
  (cl:format cl:nil "# Global Bundle Adjustment service~%#~%#       Perform global bundle adjustment. Note that as soon as the map ~%#       is modified again, the graph is re-optimized the standard way (without SBA).~%#       It then makes only sense to use this after a mapping run (and after a call ~%#       to /rtabmap/pause) when you know that the robot will restart in localization ~%#       mode the next time, or at the beginning of the localization session.~%#~%~%# Optimizer type (0=g2o, 1=CVSBA), default 0~%int32 type~%~%# Iterations,        default 0 (use Optimizer/Iterations already loaded in the node)~%int32 iterations~%~%# Pixel variance,    default 0 (use g2o/PixelVariance already loaded in the node)~%float32 pixel_variance~%~%# Use vocabulary matches, default false (rematch all features between frames)~%bool voc_matches~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalBundleAdjustment-request)))
  "Returns full string definition for message of type 'GlobalBundleAdjustment-request"
  (cl:format cl:nil "# Global Bundle Adjustment service~%#~%#       Perform global bundle adjustment. Note that as soon as the map ~%#       is modified again, the graph is re-optimized the standard way (without SBA).~%#       It then makes only sense to use this after a mapping run (and after a call ~%#       to /rtabmap/pause) when you know that the robot will restart in localization ~%#       mode the next time, or at the beginning of the localization session.~%#~%~%# Optimizer type (0=g2o, 1=CVSBA), default 0~%int32 type~%~%# Iterations,        default 0 (use Optimizer/Iterations already loaded in the node)~%int32 iterations~%~%# Pixel variance,    default 0 (use g2o/PixelVariance already loaded in the node)~%float32 pixel_variance~%~%# Use vocabulary matches, default false (rematch all features between frames)~%bool voc_matches~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalBundleAdjustment-request>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalBundleAdjustment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalBundleAdjustment-request
    (cl:cons ':type (type msg))
    (cl:cons ':iterations (iterations msg))
    (cl:cons ':pixel_variance (pixel_variance msg))
    (cl:cons ':voc_matches (voc_matches msg))
))
;//! \htmlinclude GlobalBundleAdjustment-response.msg.html

(cl:defclass <GlobalBundleAdjustment-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GlobalBundleAdjustment-response (<GlobalBundleAdjustment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalBundleAdjustment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalBundleAdjustment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<GlobalBundleAdjustment-response> is deprecated: use rtabmap_msgs-srv:GlobalBundleAdjustment-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalBundleAdjustment-response>) ostream)
  "Serializes a message object of type '<GlobalBundleAdjustment-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalBundleAdjustment-response>) istream)
  "Deserializes a message object of type '<GlobalBundleAdjustment-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalBundleAdjustment-response>)))
  "Returns string type for a service object of type '<GlobalBundleAdjustment-response>"
  "rtabmap_msgs/GlobalBundleAdjustmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalBundleAdjustment-response)))
  "Returns string type for a service object of type 'GlobalBundleAdjustment-response"
  "rtabmap_msgs/GlobalBundleAdjustmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalBundleAdjustment-response>)))
  "Returns md5sum for a message object of type '<GlobalBundleAdjustment-response>"
  "2e1ed640ba9f481fdaa2226734d70674")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalBundleAdjustment-response)))
  "Returns md5sum for a message object of type 'GlobalBundleAdjustment-response"
  "2e1ed640ba9f481fdaa2226734d70674")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalBundleAdjustment-response>)))
  "Returns full string definition for message of type '<GlobalBundleAdjustment-response>"
  (cl:format cl:nil "# return false if failure~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalBundleAdjustment-response)))
  "Returns full string definition for message of type 'GlobalBundleAdjustment-response"
  (cl:format cl:nil "# return false if failure~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalBundleAdjustment-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalBundleAdjustment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalBundleAdjustment-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GlobalBundleAdjustment)))
  'GlobalBundleAdjustment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GlobalBundleAdjustment)))
  'GlobalBundleAdjustment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalBundleAdjustment)))
  "Returns string type for a service object of type '<GlobalBundleAdjustment>"
  "rtabmap_msgs/GlobalBundleAdjustment")