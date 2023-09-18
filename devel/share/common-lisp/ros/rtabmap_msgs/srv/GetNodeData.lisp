; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude GetNodeData-request.msg.html

(cl:defclass <GetNodeData-request> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (images
    :reader images
    :initarg :images
    :type cl:boolean
    :initform cl:nil)
   (scan
    :reader scan
    :initarg :scan
    :type cl:boolean
    :initform cl:nil)
   (grid
    :reader grid
    :initarg :grid
    :type cl:boolean
    :initform cl:nil)
   (user_data
    :reader user_data
    :initarg :user_data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetNodeData-request (<GetNodeData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNodeData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNodeData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<GetNodeData-request> is deprecated: use rtabmap_msgs-srv:GetNodeData-request instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <GetNodeData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:ids-val is deprecated.  Use rtabmap_msgs-srv:ids instead.")
  (ids m))

(cl:ensure-generic-function 'images-val :lambda-list '(m))
(cl:defmethod images-val ((m <GetNodeData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:images-val is deprecated.  Use rtabmap_msgs-srv:images instead.")
  (images m))

(cl:ensure-generic-function 'scan-val :lambda-list '(m))
(cl:defmethod scan-val ((m <GetNodeData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:scan-val is deprecated.  Use rtabmap_msgs-srv:scan instead.")
  (scan m))

(cl:ensure-generic-function 'grid-val :lambda-list '(m))
(cl:defmethod grid-val ((m <GetNodeData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:grid-val is deprecated.  Use rtabmap_msgs-srv:grid instead.")
  (grid m))

(cl:ensure-generic-function 'user_data-val :lambda-list '(m))
(cl:defmethod user_data-val ((m <GetNodeData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:user_data-val is deprecated.  Use rtabmap_msgs-srv:user_data instead.")
  (user_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNodeData-request>) ostream)
  "Serializes a message object of type '<GetNodeData-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'images) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'scan) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'grid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'user_data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNodeData-request>) istream)
  "Deserializes a message object of type '<GetNodeData-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:slot-value msg 'images) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'scan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'grid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'user_data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNodeData-request>)))
  "Returns string type for a service object of type '<GetNodeData-request>"
  "rtabmap_msgs/GetNodeDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodeData-request)))
  "Returns string type for a service object of type 'GetNodeData-request"
  "rtabmap_msgs/GetNodeDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNodeData-request>)))
  "Returns md5sum for a message object of type '<GetNodeData-request>"
  "773fdbd03b6a0593a7a3b8996a27ca6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNodeData-request)))
  "Returns md5sum for a message object of type 'GetNodeData-request"
  "773fdbd03b6a0593a7a3b8996a27ca6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNodeData-request>)))
  "Returns full string definition for message of type '<GetNodeData-request>"
  (cl:format cl:nil "#request~%int32[] ids~%bool images~%bool scan~%bool grid~%bool user_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNodeData-request)))
  "Returns full string definition for message of type 'GetNodeData-request"
  (cl:format cl:nil "#request~%int32[] ids~%bool images~%bool scan~%bool grid~%bool user_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNodeData-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNodeData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNodeData-request
    (cl:cons ':ids (ids msg))
    (cl:cons ':images (images msg))
    (cl:cons ':scan (scan msg))
    (cl:cons ':grid (grid msg))
    (cl:cons ':user_data (user_data msg))
))
;//! \htmlinclude GetNodeData-response.msg.html

(cl:defclass <GetNodeData-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector rtabmap_msgs-msg:NodeData)
   :initform (cl:make-array 0 :element-type 'rtabmap_msgs-msg:NodeData :initial-element (cl:make-instance 'rtabmap_msgs-msg:NodeData))))
)

(cl:defclass GetNodeData-response (<GetNodeData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNodeData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNodeData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<GetNodeData-response> is deprecated: use rtabmap_msgs-srv:GetNodeData-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetNodeData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:data-val is deprecated.  Use rtabmap_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNodeData-response>) ostream)
  "Serializes a message object of type '<GetNodeData-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNodeData-response>) istream)
  "Deserializes a message object of type '<GetNodeData-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtabmap_msgs-msg:NodeData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNodeData-response>)))
  "Returns string type for a service object of type '<GetNodeData-response>"
  "rtabmap_msgs/GetNodeDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodeData-response)))
  "Returns string type for a service object of type 'GetNodeData-response"
  "rtabmap_msgs/GetNodeDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNodeData-response>)))
  "Returns md5sum for a message object of type '<GetNodeData-response>"
  "773fdbd03b6a0593a7a3b8996a27ca6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNodeData-response)))
  "Returns md5sum for a message object of type 'GetNodeData-response"
  "773fdbd03b6a0593a7a3b8996a27ca6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNodeData-response>)))
  "Returns full string definition for message of type '<GetNodeData-response>"
  (cl:format cl:nil "#response~%NodeData[] data~%~%~%================================================================================~%MSG: rtabmap_msgs/NodeData~%~%int32 id~%int32 mapId~%int32 weight~%float64 stamp~%string label~%~%# Pose from odometry not corrected~%geometry_msgs/Pose pose~%~%# Ground truth (optional)~%geometry_msgs/Pose groundTruthPose~%~%# GPS (optional)~%GPS gps~%~%# compressed image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] image~%~%# compressed depth image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] depth~%~%# Camera models~%float32[] fx~%float32[] fy~%float32[] cx~%float32[] cy~%float32[] width~%float32[] height~%float32[] baseline~%# local transform (/base_link -> /camera_link)~%geometry_msgs/Transform[] localTransform~%~%# compressed 2D or 3D laser scan~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] laserScan~%int32 laserScanMaxPts~%float32 laserScanMaxRange~%int32 laserScanFormat~%# local transform (/base_link -> /base_laser)~%geometry_msgs/Transform laserScanLocalTransform~%~%# compressed user data~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] userData~%~%# compressed occupancy grid~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] grid_ground~%uint8[] grid_obstacles~%uint8[] grid_empty_cells~%float32 grid_cell_size~%Point3f grid_view_point~%~%# std::multimap<wordId, index>~%# std::vector<cv::Keypoint>~%# std::vector<cv::Point3f>~%int32[] wordIdKeys~%int32[] wordIdValues~%KeyPoint[] wordKpts~%Point3f[] wordPts~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] wordDescriptors~%~%GlobalDescriptor[] globalDescriptors~%~%EnvSensor[] env_sensors~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rtabmap_msgs/GPS~%~%float64 stamp      # in seconds~%float64 longitude  # DD format~%float64 latitude   # DD format~%float64 altitude   # in meters~%float64 error      # in meters~%float64 bearing    # North 0->360 deg~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: rtabmap_msgs/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_msgs/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_msgs/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rtabmap_msgs/EnvSensor~%~%Header header~%~%# EnvSensor~%int32 type~%float64 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNodeData-response)))
  "Returns full string definition for message of type 'GetNodeData-response"
  (cl:format cl:nil "#response~%NodeData[] data~%~%~%================================================================================~%MSG: rtabmap_msgs/NodeData~%~%int32 id~%int32 mapId~%int32 weight~%float64 stamp~%string label~%~%# Pose from odometry not corrected~%geometry_msgs/Pose pose~%~%# Ground truth (optional)~%geometry_msgs/Pose groundTruthPose~%~%# GPS (optional)~%GPS gps~%~%# compressed image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] image~%~%# compressed depth image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] depth~%~%# Camera models~%float32[] fx~%float32[] fy~%float32[] cx~%float32[] cy~%float32[] width~%float32[] height~%float32[] baseline~%# local transform (/base_link -> /camera_link)~%geometry_msgs/Transform[] localTransform~%~%# compressed 2D or 3D laser scan~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] laserScan~%int32 laserScanMaxPts~%float32 laserScanMaxRange~%int32 laserScanFormat~%# local transform (/base_link -> /base_laser)~%geometry_msgs/Transform laserScanLocalTransform~%~%# compressed user data~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] userData~%~%# compressed occupancy grid~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] grid_ground~%uint8[] grid_obstacles~%uint8[] grid_empty_cells~%float32 grid_cell_size~%Point3f grid_view_point~%~%# std::multimap<wordId, index>~%# std::vector<cv::Keypoint>~%# std::vector<cv::Point3f>~%int32[] wordIdKeys~%int32[] wordIdValues~%KeyPoint[] wordKpts~%Point3f[] wordPts~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] wordDescriptors~%~%GlobalDescriptor[] globalDescriptors~%~%EnvSensor[] env_sensors~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: rtabmap_msgs/GPS~%~%float64 stamp      # in seconds~%float64 longitude  # DD format~%float64 latitude   # DD format~%float64 altitude   # in meters~%float64 error      # in meters~%float64 bearing    # North 0->360 deg~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: rtabmap_msgs/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_msgs/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_msgs/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rtabmap_msgs/EnvSensor~%~%Header header~%~%# EnvSensor~%int32 type~%float64 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNodeData-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNodeData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNodeData-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNodeData)))
  'GetNodeData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNodeData)))
  'GetNodeData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNodeData)))
  "Returns string type for a service object of type '<GetNodeData>"
  "rtabmap_msgs/GetNodeData")