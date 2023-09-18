;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::UserData)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'UserData (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::USERDATA")
  (make-package "RTABMAP_MSGS::USERDATA"))

(in-package "ROS")
;;//! \htmlinclude UserData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::UserData
  :super ros::object
  :slots (_header _rows _cols _type _data ))

(defmethod rtabmap_msgs::UserData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rows __rows) 0)
    ((:cols __cols) 0)
    ((:type __type) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rows (round __rows))
   (setq _cols (round __cols))
   (setq _type (round __type))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rows
   (&optional __rows)
   (if __rows (setq _rows __rows)) _rows)
  (:cols
   (&optional __cols)
   (if __cols (setq _cols __cols)) _cols)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _rows
    4
    ;; uint32 _cols
    4
    ;; uint32 _type
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _rows
       (write-long _rows s)
     ;; uint32 _cols
       (write-long _cols s)
     ;; uint32 _type
       (write-long _type s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _rows
     (setq _rows (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cols
     (setq _cols (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get rtabmap_msgs::UserData :md5sum-) "e2b3ca3c96ccd4baa19ca1aeef9ec767")
(setf (get rtabmap_msgs::UserData :datatype-) "rtabmap_msgs/UserData")
(setf (get rtabmap_msgs::UserData :definition-)
      "
Header header

# OpenCV matrix containing the user data. A matrix of type CV_8UC1 
# with 1 row is considered to be compressed (with rtabmap::compressData() method).
# If you have one dimension unsigned 8 bits uncompressed data, make sure to transpose it
# (to have multiple rows instead of multiple columns) in order to be detected as
# not compressed.
uint32 rows
uint32 cols
uint32 type
uint8[] data
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



(provide :rtabmap_msgs/UserData "e2b3ca3c96ccd4baa19ca1aeef9ec767")


