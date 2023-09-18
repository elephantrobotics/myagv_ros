;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::Info)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'Info (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::INFO")
  (make-package "RTABMAP_MSGS::INFO"))

(in-package "ROS")
;;//! \htmlinclude Info.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::Info
  :super ros::object
  :slots (_header _refId _loopClosureId _proximityDetectionId _landmarkId _loopClosureTransform _wmState _posteriorKeys _posteriorValues _likelihoodKeys _likelihoodValues _rawLikelihoodKeys _rawLikelihoodValues _weightsKeys _weightsValues _labelsKeys _labelsValues _statsKeys _statsValues _localPath _currentGoalId _odom_cache ))

(defmethod rtabmap_msgs::Info
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:refId __refId) 0)
    ((:loopClosureId __loopClosureId) 0)
    ((:proximityDetectionId __proximityDetectionId) 0)
    ((:landmarkId __landmarkId) 0)
    ((:loopClosureTransform __loopClosureTransform) (instance geometry_msgs::Transform :init))
    ((:wmState __wmState) (make-array 0 :initial-element 0 :element-type :integer))
    ((:posteriorKeys __posteriorKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:posteriorValues __posteriorValues) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:likelihoodKeys __likelihoodKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:likelihoodValues __likelihoodValues) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rawLikelihoodKeys __rawLikelihoodKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:rawLikelihoodValues __rawLikelihoodValues) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:weightsKeys __weightsKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:weightsValues __weightsValues) (make-array 0 :initial-element 0 :element-type :integer))
    ((:labelsKeys __labelsKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:labelsValues __labelsValues) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:statsKeys __statsKeys) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:statsValues __statsValues) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:localPath __localPath) (make-array 0 :initial-element 0 :element-type :integer))
    ((:currentGoalId __currentGoalId) 0)
    ((:odom_cache __odom_cache) (instance rtabmap_msgs::MapGraph :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _refId (round __refId))
   (setq _loopClosureId (round __loopClosureId))
   (setq _proximityDetectionId (round __proximityDetectionId))
   (setq _landmarkId (round __landmarkId))
   (setq _loopClosureTransform __loopClosureTransform)
   (setq _wmState __wmState)
   (setq _posteriorKeys __posteriorKeys)
   (setq _posteriorValues __posteriorValues)
   (setq _likelihoodKeys __likelihoodKeys)
   (setq _likelihoodValues __likelihoodValues)
   (setq _rawLikelihoodKeys __rawLikelihoodKeys)
   (setq _rawLikelihoodValues __rawLikelihoodValues)
   (setq _weightsKeys __weightsKeys)
   (setq _weightsValues __weightsValues)
   (setq _labelsKeys __labelsKeys)
   (setq _labelsValues __labelsValues)
   (setq _statsKeys __statsKeys)
   (setq _statsValues __statsValues)
   (setq _localPath __localPath)
   (setq _currentGoalId (round __currentGoalId))
   (setq _odom_cache __odom_cache)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:refId
   (&optional __refId)
   (if __refId (setq _refId __refId)) _refId)
  (:loopClosureId
   (&optional __loopClosureId)
   (if __loopClosureId (setq _loopClosureId __loopClosureId)) _loopClosureId)
  (:proximityDetectionId
   (&optional __proximityDetectionId)
   (if __proximityDetectionId (setq _proximityDetectionId __proximityDetectionId)) _proximityDetectionId)
  (:landmarkId
   (&optional __landmarkId)
   (if __landmarkId (setq _landmarkId __landmarkId)) _landmarkId)
  (:loopClosureTransform
   (&rest __loopClosureTransform)
   (if (keywordp (car __loopClosureTransform))
       (send* _loopClosureTransform __loopClosureTransform)
     (progn
       (if __loopClosureTransform (setq _loopClosureTransform (car __loopClosureTransform)))
       _loopClosureTransform)))
  (:wmState
   (&optional __wmState)
   (if __wmState (setq _wmState __wmState)) _wmState)
  (:posteriorKeys
   (&optional __posteriorKeys)
   (if __posteriorKeys (setq _posteriorKeys __posteriorKeys)) _posteriorKeys)
  (:posteriorValues
   (&optional __posteriorValues)
   (if __posteriorValues (setq _posteriorValues __posteriorValues)) _posteriorValues)
  (:likelihoodKeys
   (&optional __likelihoodKeys)
   (if __likelihoodKeys (setq _likelihoodKeys __likelihoodKeys)) _likelihoodKeys)
  (:likelihoodValues
   (&optional __likelihoodValues)
   (if __likelihoodValues (setq _likelihoodValues __likelihoodValues)) _likelihoodValues)
  (:rawLikelihoodKeys
   (&optional __rawLikelihoodKeys)
   (if __rawLikelihoodKeys (setq _rawLikelihoodKeys __rawLikelihoodKeys)) _rawLikelihoodKeys)
  (:rawLikelihoodValues
   (&optional __rawLikelihoodValues)
   (if __rawLikelihoodValues (setq _rawLikelihoodValues __rawLikelihoodValues)) _rawLikelihoodValues)
  (:weightsKeys
   (&optional __weightsKeys)
   (if __weightsKeys (setq _weightsKeys __weightsKeys)) _weightsKeys)
  (:weightsValues
   (&optional __weightsValues)
   (if __weightsValues (setq _weightsValues __weightsValues)) _weightsValues)
  (:labelsKeys
   (&optional __labelsKeys)
   (if __labelsKeys (setq _labelsKeys __labelsKeys)) _labelsKeys)
  (:labelsValues
   (&optional __labelsValues)
   (if __labelsValues (setq _labelsValues __labelsValues)) _labelsValues)
  (:statsKeys
   (&optional __statsKeys)
   (if __statsKeys (setq _statsKeys __statsKeys)) _statsKeys)
  (:statsValues
   (&optional __statsValues)
   (if __statsValues (setq _statsValues __statsValues)) _statsValues)
  (:localPath
   (&optional __localPath)
   (if __localPath (setq _localPath __localPath)) _localPath)
  (:currentGoalId
   (&optional __currentGoalId)
   (if __currentGoalId (setq _currentGoalId __currentGoalId)) _currentGoalId)
  (:odom_cache
   (&rest __odom_cache)
   (if (keywordp (car __odom_cache))
       (send* _odom_cache __odom_cache)
     (progn
       (if __odom_cache (setq _odom_cache (car __odom_cache)))
       _odom_cache)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _refId
    4
    ;; int32 _loopClosureId
    4
    ;; int32 _proximityDetectionId
    4
    ;; int32 _landmarkId
    4
    ;; geometry_msgs/Transform _loopClosureTransform
    (send _loopClosureTransform :serialization-length)
    ;; int32[] _wmState
    (* 4    (length _wmState)) 4
    ;; int32[] _posteriorKeys
    (* 4    (length _posteriorKeys)) 4
    ;; float32[] _posteriorValues
    (* 4    (length _posteriorValues)) 4
    ;; int32[] _likelihoodKeys
    (* 4    (length _likelihoodKeys)) 4
    ;; float32[] _likelihoodValues
    (* 4    (length _likelihoodValues)) 4
    ;; int32[] _rawLikelihoodKeys
    (* 4    (length _rawLikelihoodKeys)) 4
    ;; float32[] _rawLikelihoodValues
    (* 4    (length _rawLikelihoodValues)) 4
    ;; int32[] _weightsKeys
    (* 4    (length _weightsKeys)) 4
    ;; int32[] _weightsValues
    (* 4    (length _weightsValues)) 4
    ;; int32[] _labelsKeys
    (* 4    (length _labelsKeys)) 4
    ;; string[] _labelsValues
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _labelsValues)) 4
    ;; string[] _statsKeys
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _statsKeys)) 4
    ;; float32[] _statsValues
    (* 4    (length _statsValues)) 4
    ;; int32[] _localPath
    (* 4    (length _localPath)) 4
    ;; int32 _currentGoalId
    4
    ;; rtabmap_msgs/MapGraph _odom_cache
    (send _odom_cache :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _refId
       (write-long _refId s)
     ;; int32 _loopClosureId
       (write-long _loopClosureId s)
     ;; int32 _proximityDetectionId
       (write-long _proximityDetectionId s)
     ;; int32 _landmarkId
       (write-long _landmarkId s)
     ;; geometry_msgs/Transform _loopClosureTransform
       (send _loopClosureTransform :serialize s)
     ;; int32[] _wmState
     (write-long (length _wmState) s)
     (dotimes (i (length _wmState))
       (write-long (elt _wmState i) s)
       )
     ;; int32[] _posteriorKeys
     (write-long (length _posteriorKeys) s)
     (dotimes (i (length _posteriorKeys))
       (write-long (elt _posteriorKeys i) s)
       )
     ;; float32[] _posteriorValues
     (write-long (length _posteriorValues) s)
     (dotimes (i (length _posteriorValues))
       (sys::poke (elt _posteriorValues i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _likelihoodKeys
     (write-long (length _likelihoodKeys) s)
     (dotimes (i (length _likelihoodKeys))
       (write-long (elt _likelihoodKeys i) s)
       )
     ;; float32[] _likelihoodValues
     (write-long (length _likelihoodValues) s)
     (dotimes (i (length _likelihoodValues))
       (sys::poke (elt _likelihoodValues i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _rawLikelihoodKeys
     (write-long (length _rawLikelihoodKeys) s)
     (dotimes (i (length _rawLikelihoodKeys))
       (write-long (elt _rawLikelihoodKeys i) s)
       )
     ;; float32[] _rawLikelihoodValues
     (write-long (length _rawLikelihoodValues) s)
     (dotimes (i (length _rawLikelihoodValues))
       (sys::poke (elt _rawLikelihoodValues i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _weightsKeys
     (write-long (length _weightsKeys) s)
     (dotimes (i (length _weightsKeys))
       (write-long (elt _weightsKeys i) s)
       )
     ;; int32[] _weightsValues
     (write-long (length _weightsValues) s)
     (dotimes (i (length _weightsValues))
       (write-long (elt _weightsValues i) s)
       )
     ;; int32[] _labelsKeys
     (write-long (length _labelsKeys) s)
     (dotimes (i (length _labelsKeys))
       (write-long (elt _labelsKeys i) s)
       )
     ;; string[] _labelsValues
     (write-long (length _labelsValues) s)
     (dolist (elem _labelsValues)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _statsKeys
     (write-long (length _statsKeys) s)
     (dolist (elem _statsKeys)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _statsValues
     (write-long (length _statsValues) s)
     (dotimes (i (length _statsValues))
       (sys::poke (elt _statsValues i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _localPath
     (write-long (length _localPath) s)
     (dotimes (i (length _localPath))
       (write-long (elt _localPath i) s)
       )
     ;; int32 _currentGoalId
       (write-long _currentGoalId s)
     ;; rtabmap_msgs/MapGraph _odom_cache
       (send _odom_cache :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _refId
     (setq _refId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _loopClosureId
     (setq _loopClosureId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _proximityDetectionId
     (setq _proximityDetectionId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _landmarkId
     (setq _landmarkId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Transform _loopClosureTransform
     (send _loopClosureTransform :deserialize buf ptr-) (incf ptr- (send _loopClosureTransform :serialization-length))
   ;; int32[] _wmState
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wmState (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wmState i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _posteriorKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _posteriorKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _posteriorKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _posteriorValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _posteriorValues (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _posteriorValues i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _likelihoodKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _likelihoodKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _likelihoodKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _likelihoodValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _likelihoodValues (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _likelihoodValues i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _rawLikelihoodKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rawLikelihoodKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rawLikelihoodKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _rawLikelihoodValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rawLikelihoodValues (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rawLikelihoodValues i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _weightsKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weightsKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _weightsKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _weightsValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weightsValues (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _weightsValues i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _labelsKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labelsKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _labelsKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _labelsValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labelsValues (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _labelsValues i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _statsKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _statsKeys (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _statsKeys i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _statsValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _statsValues (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _statsValues i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _localPath
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localPath (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _localPath i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _currentGoalId
     (setq _currentGoalId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; rtabmap_msgs/MapGraph _odom_cache
     (send _odom_cache :deserialize buf ptr-) (incf ptr- (send _odom_cache :serialization-length))
   ;;
   self)
  )

(setf (get rtabmap_msgs::Info :md5sum-) "656fb5b8dfd8dfd2dc40226f35f2d440")
(setf (get rtabmap_msgs::Info :datatype-) "rtabmap_msgs/Info")
(setf (get rtabmap_msgs::Info :definition-)
      "
########################################
# RTAB-Map info with statistics 
########################################

Header header

int32 refId
int32 loopClosureId
int32 proximityDetectionId
int32 landmarkId

geometry_msgs/Transform loopClosureTransform

####
# For statistics...
####
# State (node IDs) of the current Working Memory (including STM)
int32[] wmState

# std::map<int, float> posterior;
int32[] posteriorKeys
float32[] posteriorValues

# std::map<int, float> likelihood;
int32[] likelihoodKeys
float32[] likelihoodValues

# std::map<int, float> rawLikelihood;
int32[] rawLikelihoodKeys
float32[] rawLikelihoodValues

# std::map<int, int> weights;
int32[] weightsKeys
int32[] weightsValues

# std::map<int, std::string> labels;
int32[] labelsKeys
string[] labelsValues

# std::map<std::string, float> stats
string[] statsKeys
float32[] statsValues

# std::vector<int> localPath
int32[] localPath
int32 currentGoalId

# std::vector<int> odomCache
MapGraph odom_cache
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
MSG: rtabmap_msgs/MapGraph

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



(provide :rtabmap_msgs/Info "656fb5b8dfd8dfd2dc40226f35f2d440")


