; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude GetMap2-request.msg.html

(cl:defclass <GetMap2-request> (roslisp-msg-protocol:ros-message)
  ((global
    :reader global
    :initarg :global
    :type cl:boolean
    :initform cl:nil)
   (optimized
    :reader optimized
    :initarg :optimized
    :type cl:boolean
    :initform cl:nil)
   (with_images
    :reader with_images
    :initarg :with_images
    :type cl:boolean
    :initform cl:nil)
   (with_scans
    :reader with_scans
    :initarg :with_scans
    :type cl:boolean
    :initform cl:nil)
   (with_user_data
    :reader with_user_data
    :initarg :with_user_data
    :type cl:boolean
    :initform cl:nil)
   (with_grids
    :reader with_grids
    :initarg :with_grids
    :type cl:boolean
    :initform cl:nil)
   (with_words
    :reader with_words
    :initarg :with_words
    :type cl:boolean
    :initform cl:nil)
   (with_global_descriptors
    :reader with_global_descriptors
    :initarg :with_global_descriptors
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetMap2-request (<GetMap2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMap2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMap2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<GetMap2-request> is deprecated: use rtabmap_msgs-srv:GetMap2-request instead.")))

(cl:ensure-generic-function 'global-val :lambda-list '(m))
(cl:defmethod global-val ((m <GetMap2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:global-val is deprecated.  Use rtabmap_msgs-srv:global instead.")
  (global m))

(cl:ensure-generic-function 'optimized-val :lambda-list '(m))
(cl:defmethod optimized-val ((m <GetMap2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:optimized-val is deprecated.  Use rtabmap_msgs-srv:optimized instead.")
  (optimized m))

(cl:ensure-generic-function 'with_images-val :lambda-list '(m))
(cl:defmethod with_images-val ((m <GetMap2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:with_images-val is deprecated.  Use rtabmap_msgs-srv:with_images instead.")
  (with_images m))

(cl:ensure-generic-function 'with_scans-val :lambda-list '(m))
(cl:defmethod with_scans-val ((m <GetMap2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:with_scans-val is deprecated.  Use rtabmap_msgs-srv:with_scans instead.")
  (with_scans m))

(cl:ensure-generic-function 'with_user_data-val :lambda-list '(m))
(cl:defmethod with_user_data-val ((m <GetMap2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:with_user_data-val is deprecated.  Use rtabmap_msgs-srv:with_user_data instead.")
  (with_user_data m))

(cl:ensure-generic-function 'with_grids-val :lambda-list '(m))
(cl:defmethod with_grids-val ((m <GetMap2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:with_grids-val is deprecated.  Use rtabmap_msgs-srv:with_grids instead.")
  (with_grids m))

(cl:ensure-generic-function 'with_words-val :lambda-list '(m))
(cl:defmethod with_words-val ((m <GetMap2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:with_words-val is deprecated.  Use rtabmap_msgs-srv:with_words instead.")
  (with_words m))

(cl:ensure-generic-function 'with_global_descriptors-val :lambda-list '(m))
(cl:defmethod with_global_descriptors-val ((m <GetMap2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:with_global_descriptors-val is deprecated.  Use rtabmap_msgs-srv:with_global_descriptors instead.")
  (with_global_descriptors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMap2-request>) ostream)
  "Serializes a message object of type '<GetMap2-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'global) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'optimized) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'with_images) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'with_scans) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'with_user_data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'with_grids) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'with_words) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'with_global_descriptors) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMap2-request>) istream)
  "Deserializes a message object of type '<GetMap2-request>"
    (cl:setf (cl:slot-value msg 'global) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'optimized) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'with_images) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'with_scans) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'with_user_data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'with_grids) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'with_words) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'with_global_descriptors) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMap2-request>)))
  "Returns string type for a service object of type '<GetMap2-request>"
  "rtabmap_msgs/GetMap2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap2-request)))
  "Returns string type for a service object of type 'GetMap2-request"
  "rtabmap_msgs/GetMap2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMap2-request>)))
  "Returns md5sum for a message object of type '<GetMap2-request>"
  "07d04226ea1aa896bb51266a21c4b414")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMap2-request)))
  "Returns md5sum for a message object of type 'GetMap2-request"
  "07d04226ea1aa896bb51266a21c4b414")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMap2-request>)))
  "Returns full string definition for message of type '<GetMap2-request>"
  (cl:format cl:nil "#request~%bool global~%bool optimized~%bool with_images~%bool with_scans~%bool with_user_data~%bool with_grids~%bool with_words~%bool with_global_descriptors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMap2-request)))
  "Returns full string definition for message of type 'GetMap2-request"
  (cl:format cl:nil "#request~%bool global~%bool optimized~%bool with_images~%bool with_scans~%bool with_user_data~%bool with_grids~%bool with_words~%bool with_global_descriptors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMap2-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMap2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMap2-request
    (cl:cons ':global (global msg))
    (cl:cons ':optimized (optimized msg))
    (cl:cons ':with_images (with_images msg))
    (cl:cons ':with_scans (with_scans msg))
    (cl:cons ':with_user_data (with_user_data msg))
    (cl:cons ':with_grids (with_grids msg))
    (cl:cons ':with_words (with_words msg))
    (cl:cons ':with_global_descriptors (with_global_descriptors msg))
))
;//! \htmlinclude GetMap2-response.msg.html

(cl:defclass <GetMap2-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type rtabmap_msgs-msg:MapData
    :initform (cl:make-instance 'rtabmap_msgs-msg:MapData)))
)

(cl:defclass GetMap2-response (<GetMap2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMap2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMap2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<GetMap2-response> is deprecated: use rtabmap_msgs-srv:GetMap2-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetMap2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:data-val is deprecated.  Use rtabmap_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMap2-response>) ostream)
  "Serializes a message object of type '<GetMap2-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMap2-response>) istream)
  "Deserializes a message object of type '<GetMap2-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMap2-response>)))
  "Returns string type for a service object of type '<GetMap2-response>"
  "rtabmap_msgs/GetMap2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap2-response)))
  "Returns string type for a service object of type 'GetMap2-response"
  "rtabmap_msgs/GetMap2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMap2-response>)))
  "Returns md5sum for a message object of type '<GetMap2-response>"
  "07d04226ea1aa896bb51266a21c4b414")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMap2-response)))
  "Returns md5sum for a message object of type 'GetMap2-response"
  "07d04226ea1aa896bb51266a21c4b414")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMap2-response>)))
  "Returns full string definition for message of type '<GetMap2-response>"
  (cl:format cl:nil "#response~%MapData data~%~%~%================================================================================~%MSG: rtabmap_msgs/MapData~%~%Header header~%~%##################~%# Optimized graph~%##################~%MapGraph graph~%~%##################~%# Graph data~%##################~%NodeData[] nodes~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rtabmap_msgs/MapGraph~%~%Header header~%~%##~%# /map to /odom transform~%# Always identity when the graph is optimized from the latest pose.~%##~%geometry_msgs/Transform mapToOdom~%~%# The poses~%int32[] posesId~%geometry_msgs/Pose[] poses~%~%# The links~%Link[] links~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: rtabmap_msgs/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%================================================================================~%MSG: rtabmap_msgs/NodeData~%~%int32 id~%int32 mapId~%int32 weight~%float64 stamp~%string label~%~%# Pose from odometry not corrected~%geometry_msgs/Pose pose~%~%# Ground truth (optional)~%geometry_msgs/Pose groundTruthPose~%~%# GPS (optional)~%GPS gps~%~%# compressed image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] image~%~%# compressed depth image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] depth~%~%# Camera models~%float32[] fx~%float32[] fy~%float32[] cx~%float32[] cy~%float32[] width~%float32[] height~%float32[] baseline~%# local transform (/base_link -> /camera_link)~%geometry_msgs/Transform[] localTransform~%~%# compressed 2D or 3D laser scan~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] laserScan~%int32 laserScanMaxPts~%float32 laserScanMaxRange~%int32 laserScanFormat~%# local transform (/base_link -> /base_laser)~%geometry_msgs/Transform laserScanLocalTransform~%~%# compressed user data~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] userData~%~%# compressed occupancy grid~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] grid_ground~%uint8[] grid_obstacles~%uint8[] grid_empty_cells~%float32 grid_cell_size~%Point3f grid_view_point~%~%# std::multimap<wordId, index>~%# std::vector<cv::Keypoint>~%# std::vector<cv::Point3f>~%int32[] wordIdKeys~%int32[] wordIdValues~%KeyPoint[] wordKpts~%Point3f[] wordPts~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] wordDescriptors~%~%GlobalDescriptor[] globalDescriptors~%~%EnvSensor[] env_sensors~%~%================================================================================~%MSG: rtabmap_msgs/GPS~%~%float64 stamp      # in seconds~%float64 longitude  # DD format~%float64 latitude   # DD format~%float64 altitude   # in meters~%float64 error      # in meters~%float64 bearing    # North 0->360 deg~%================================================================================~%MSG: rtabmap_msgs/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_msgs/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_msgs/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%================================================================================~%MSG: rtabmap_msgs/EnvSensor~%~%Header header~%~%# EnvSensor~%int32 type~%float64 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMap2-response)))
  "Returns full string definition for message of type 'GetMap2-response"
  (cl:format cl:nil "#response~%MapData data~%~%~%================================================================================~%MSG: rtabmap_msgs/MapData~%~%Header header~%~%##################~%# Optimized graph~%##################~%MapGraph graph~%~%##################~%# Graph data~%##################~%NodeData[] nodes~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rtabmap_msgs/MapGraph~%~%Header header~%~%##~%# /map to /odom transform~%# Always identity when the graph is optimized from the latest pose.~%##~%geometry_msgs/Transform mapToOdom~%~%# The poses~%int32[] posesId~%geometry_msgs/Pose[] poses~%~%# The links~%Link[] links~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: rtabmap_msgs/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%================================================================================~%MSG: rtabmap_msgs/NodeData~%~%int32 id~%int32 mapId~%int32 weight~%float64 stamp~%string label~%~%# Pose from odometry not corrected~%geometry_msgs/Pose pose~%~%# Ground truth (optional)~%geometry_msgs/Pose groundTruthPose~%~%# GPS (optional)~%GPS gps~%~%# compressed image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] image~%~%# compressed depth image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] depth~%~%# Camera models~%float32[] fx~%float32[] fy~%float32[] cx~%float32[] cy~%float32[] width~%float32[] height~%float32[] baseline~%# local transform (/base_link -> /camera_link)~%geometry_msgs/Transform[] localTransform~%~%# compressed 2D or 3D laser scan~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] laserScan~%int32 laserScanMaxPts~%float32 laserScanMaxRange~%int32 laserScanFormat~%# local transform (/base_link -> /base_laser)~%geometry_msgs/Transform laserScanLocalTransform~%~%# compressed user data~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] userData~%~%# compressed occupancy grid~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] grid_ground~%uint8[] grid_obstacles~%uint8[] grid_empty_cells~%float32 grid_cell_size~%Point3f grid_view_point~%~%# std::multimap<wordId, index>~%# std::vector<cv::Keypoint>~%# std::vector<cv::Point3f>~%int32[] wordIdKeys~%int32[] wordIdValues~%KeyPoint[] wordKpts~%Point3f[] wordPts~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] wordDescriptors~%~%GlobalDescriptor[] globalDescriptors~%~%EnvSensor[] env_sensors~%~%================================================================================~%MSG: rtabmap_msgs/GPS~%~%float64 stamp      # in seconds~%float64 longitude  # DD format~%float64 latitude   # DD format~%float64 altitude   # in meters~%float64 error      # in meters~%float64 bearing    # North 0->360 deg~%================================================================================~%MSG: rtabmap_msgs/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_msgs/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_msgs/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%================================================================================~%MSG: rtabmap_msgs/EnvSensor~%~%Header header~%~%# EnvSensor~%int32 type~%float64 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMap2-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMap2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMap2-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMap2)))
  'GetMap2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMap2)))
  'GetMap2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap2)))
  "Returns string type for a service object of type '<GetMap2>"
  "rtabmap_msgs/GetMap2")