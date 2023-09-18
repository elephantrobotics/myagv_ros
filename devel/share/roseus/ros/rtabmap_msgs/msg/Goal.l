;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::Goal)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'Goal (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::GOAL")
  (make-package "RTABMAP_MSGS::GOAL"))

(in-package "ROS")
;;//! \htmlinclude Goal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::Goal
  :super ros::object
  :slots (_header _node_id _node_label _frame_id ))

(defmethod rtabmap_msgs::Goal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:node_id __node_id) 0)
    ((:node_label __node_label) "")
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _node_id (round __node_id))
   (setq _node_label (string __node_label))
   (setq _frame_id (string __frame_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:node_label
   (&optional __node_label)
   (if __node_label (setq _node_label __node_label)) _node_label)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _node_id
    4
    ;; string _node_label
    4 (length _node_label)
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _node_id
       (write-long _node_id s)
     ;; string _node_label
       (write-long (length _node_label) s) (princ _node_label s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _node_label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rtabmap_msgs::Goal :md5sum-) "70f8a16a321d4ec76904a9989a8798b7")
(setf (get rtabmap_msgs::Goal :datatype-) "rtabmap_msgs/Goal")
(setf (get rtabmap_msgs::Goal :definition-)
      "
Header header

# Set either node_id or node_label
int32 node_id
string node_label

# optional: if not set, the base frame of the robot is used
string frame_id

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

")



(provide :rtabmap_msgs/Goal "70f8a16a321d4ec76904a9989a8798b7")


