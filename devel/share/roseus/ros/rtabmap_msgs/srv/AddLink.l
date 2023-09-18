;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::AddLink)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'AddLink (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::ADDLINK")
  (make-package "RTABMAP_MSGS::ADDLINK"))
(unless (find-package "RTABMAP_MSGS::ADDLINKREQUEST")
  (make-package "RTABMAP_MSGS::ADDLINKREQUEST"))
(unless (find-package "RTABMAP_MSGS::ADDLINKRESPONSE")
  (make-package "RTABMAP_MSGS::ADDLINKRESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::AddLinkRequest
  :super ros::object
  :slots (_link ))

(defmethod rtabmap_msgs::AddLinkRequest
  (:init
   (&key
    ((:link __link) (instance rtabmap_msgs::Link :init))
    )
   (send-super :init)
   (setq _link __link)
   self)
  (:link
   (&rest __link)
   (if (keywordp (car __link))
       (send* _link __link)
     (progn
       (if __link (setq _link (car __link)))
       _link)))
  (:serialization-length
   ()
   (+
    ;; rtabmap_msgs/Link _link
    (send _link :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rtabmap_msgs/Link _link
       (send _link :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rtabmap_msgs/Link _link
     (send _link :deserialize buf ptr-) (incf ptr- (send _link :serialization-length))
   ;;
   self)
  )

(defclass rtabmap_msgs::AddLinkResponse
  :super ros::object
  :slots ())

(defmethod rtabmap_msgs::AddLinkResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rtabmap_msgs::AddLink
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::AddLink :md5sum-) "050728e3c25a15bf78d487d6aafab152")
(setf (get rtabmap_msgs::AddLink :datatype-) "rtabmap_msgs/AddLink")
(setf (get rtabmap_msgs::AddLink :request) rtabmap_msgs::AddLinkRequest)
(setf (get rtabmap_msgs::AddLink :response) rtabmap_msgs::AddLinkResponse)

(defmethod rtabmap_msgs::AddLinkRequest
  (:response () (instance rtabmap_msgs::AddLinkResponse :init)))

(setf (get rtabmap_msgs::AddLinkRequest :md5sum-) "050728e3c25a15bf78d487d6aafab152")
(setf (get rtabmap_msgs::AddLinkRequest :datatype-) "rtabmap_msgs/AddLinkRequest")
(setf (get rtabmap_msgs::AddLinkRequest :definition-)
      "#request
Link link

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
---
#response
")

(setf (get rtabmap_msgs::AddLinkResponse :md5sum-) "050728e3c25a15bf78d487d6aafab152")
(setf (get rtabmap_msgs::AddLinkResponse :datatype-) "rtabmap_msgs/AddLinkResponse")
(setf (get rtabmap_msgs::AddLinkResponse :definition-)
      "#request
Link link

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
---
#response
")



(provide :rtabmap_msgs/AddLink "050728e3c25a15bf78d487d6aafab152")


