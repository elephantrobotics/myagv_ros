;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::Path)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'Path (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::PATH")
  (make-package "RTABMAP_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::Path
  :super ros::object
  :slots (_header _nodeIds _poses ))

(defmethod rtabmap_msgs::Path
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:nodeIds __nodeIds) (make-array 0 :initial-element 0 :element-type :integer))
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _nodeIds __nodeIds)
   (setq _poses __poses)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:nodeIds
   (&optional __nodeIds)
   (if __nodeIds (setq _nodeIds __nodeIds)) _nodeIds)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _nodeIds
    (* 4    (length _nodeIds)) 4
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _nodeIds
     (write-long (length _nodeIds) s)
     (dotimes (i (length _nodeIds))
       (write-long (elt _nodeIds i) s)
       )
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _nodeIds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodeIds (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _nodeIds i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rtabmap_msgs::Path :md5sum-) "ce3513b544acee43df74e3869c3272c0")
(setf (get rtabmap_msgs::Path :datatype-) "rtabmap_msgs/Path")
(setf (get rtabmap_msgs::Path :definition-)
      "
Header header

int32[] nodeIds
geometry_msgs/Pose[] poses


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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :rtabmap_msgs/Path "ce3513b544acee43df74e3869c3272c0")


