;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::MapGraph)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'MapGraph (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::MAPGRAPH")
  (make-package "RTABMAP_MSGS::MAPGRAPH"))

(in-package "ROS")
;;//! \htmlinclude MapGraph.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::MapGraph
  :super ros::object
  :slots (_header _mapToOdom _posesId _poses _links ))

(defmethod rtabmap_msgs::MapGraph
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mapToOdom __mapToOdom) (instance geometry_msgs::Transform :init))
    ((:posesId __posesId) (make-array 0 :initial-element 0 :element-type :integer))
    ((:poses __poses) ())
    ((:links __links) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _mapToOdom __mapToOdom)
   (setq _posesId __posesId)
   (setq _poses __poses)
   (setq _links __links)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mapToOdom
   (&rest __mapToOdom)
   (if (keywordp (car __mapToOdom))
       (send* _mapToOdom __mapToOdom)
     (progn
       (if __mapToOdom (setq _mapToOdom (car __mapToOdom)))
       _mapToOdom)))
  (:posesId
   (&optional __posesId)
   (if __posesId (setq _posesId __posesId)) _posesId)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:links
   (&rest __links)
   (if (keywordp (car __links))
       (send* _links __links)
     (progn
       (if __links (setq _links (car __links)))
       _links)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Transform _mapToOdom
    (send _mapToOdom :serialization-length)
    ;; int32[] _posesId
    (* 4    (length _posesId)) 4
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; rtabmap_msgs/Link[] _links
    (apply #'+ (send-all _links :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Transform _mapToOdom
       (send _mapToOdom :serialize s)
     ;; int32[] _posesId
     (write-long (length _posesId) s)
     (dotimes (i (length _posesId))
       (write-long (elt _posesId i) s)
       )
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; rtabmap_msgs/Link[] _links
     (write-long (length _links) s)
     (dolist (elem _links)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Transform _mapToOdom
     (send _mapToOdom :deserialize buf ptr-) (incf ptr- (send _mapToOdom :serialization-length))
   ;; int32[] _posesId
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _posesId (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _posesId i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rtabmap_msgs/Link[] _links
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _links (let (r) (dotimes (i n) (push (instance rtabmap_msgs::Link :init) r)) r))
     (dolist (elem- _links)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rtabmap_msgs::MapGraph :md5sum-) "903c2e44ed7e275e08ef323188cb38ee")
(setf (get rtabmap_msgs::MapGraph :datatype-) "rtabmap_msgs/MapGraph")
(setf (get rtabmap_msgs::MapGraph :definition-)
      "
Header header

##
# /map to /odom transform
# Always identity when the graph is optimized from the latest pose.
##
geometry_msgs/Transform mapToOdom

# The poses
int32[] posesId
geometry_msgs/Pose[] poses

# The links
Link[] links




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
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: rtabmap_msgs/Link
#class rtabmap::Link
#{
#   int from;
#   int to;
#   Type type;
#   Transform transform;
#   cv::Mat(6,6,CV_64FC1) information;
#}

int32 fromId
int32 toId
int32 type
geometry_msgs/Transform transform
float64[36] information
")



(provide :rtabmap_msgs/MapGraph "903c2e44ed7e275e08ef323188cb38ee")


