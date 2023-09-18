;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::Link)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'Link (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::LINK")
  (make-package "RTABMAP_MSGS::LINK"))

(in-package "ROS")
;;//! \htmlinclude Link.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rtabmap_msgs::Link
  :super ros::object
  :slots (_fromId _toId _type _transform _information ))

(defmethod rtabmap_msgs::Link
  (:init
   (&key
    ((:fromId __fromId) 0)
    ((:toId __toId) 0)
    ((:type __type) 0)
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:information __information) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _fromId (round __fromId))
   (setq _toId (round __toId))
   (setq _type (round __type))
   (setq _transform __transform)
   (setq _information __information)
   self)
  (:fromId
   (&optional __fromId)
   (if __fromId (setq _fromId __fromId)) _fromId)
  (:toId
   (&optional __toId)
   (if __toId (setq _toId __toId)) _toId)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:information
   (&optional __information)
   (if __information (setq _information __information)) _information)
  (:serialization-length
   ()
   (+
    ;; int32 _fromId
    4
    ;; int32 _toId
    4
    ;; int32 _type
    4
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; float64[36] _information
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fromId
       (write-long _fromId s)
     ;; int32 _toId
       (write-long _toId s)
     ;; int32 _type
       (write-long _type s)
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; float64[36] _information
     (dotimes (i 36)
       (sys::poke (elt _information i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fromId
     (setq _fromId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _toId
     (setq _toId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; float64[36] _information
   (dotimes (i (length _information))
     (setf (elt _information i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get rtabmap_msgs::Link :md5sum-) "48bafa7643c4731e90b468e7c4fa06b6")
(setf (get rtabmap_msgs::Link :datatype-) "rtabmap_msgs/Link")
(setf (get rtabmap_msgs::Link :definition-)
      "#class rtabmap::Link
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

")



(provide :rtabmap_msgs/Link "48bafa7643c4731e90b468e7c4fa06b6")


