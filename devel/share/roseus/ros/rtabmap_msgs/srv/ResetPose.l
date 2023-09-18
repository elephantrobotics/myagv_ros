;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::ResetPose)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'ResetPose (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::RESETPOSE")
  (make-package "RTABMAP_MSGS::RESETPOSE"))
(unless (find-package "RTABMAP_MSGS::RESETPOSEREQUEST")
  (make-package "RTABMAP_MSGS::RESETPOSEREQUEST"))
(unless (find-package "RTABMAP_MSGS::RESETPOSERESPONSE")
  (make-package "RTABMAP_MSGS::RESETPOSERESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::ResetPoseRequest
  :super ros::object
  :slots (_x _y _z _roll _pitch _yaw ))

(defmethod rtabmap_msgs::ResetPoseRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rtabmap_msgs::ResetPoseResponse
  :super ros::object
  :slots ())

(defmethod rtabmap_msgs::ResetPoseResponse
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

(defclass rtabmap_msgs::ResetPose
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::ResetPose :md5sum-) "3d5697f0c9e8859325238b57521f8f4e")
(setf (get rtabmap_msgs::ResetPose :datatype-) "rtabmap_msgs/ResetPose")
(setf (get rtabmap_msgs::ResetPose :request) rtabmap_msgs::ResetPoseRequest)
(setf (get rtabmap_msgs::ResetPose :response) rtabmap_msgs::ResetPoseResponse)

(defmethod rtabmap_msgs::ResetPoseRequest
  (:response () (instance rtabmap_msgs::ResetPoseResponse :init)))

(setf (get rtabmap_msgs::ResetPoseRequest :md5sum-) "3d5697f0c9e8859325238b57521f8f4e")
(setf (get rtabmap_msgs::ResetPoseRequest :datatype-) "rtabmap_msgs/ResetPoseRequest")
(setf (get rtabmap_msgs::ResetPoseRequest :definition-)
      "#request
float32 x
float32 y
float32 z
float32 roll
float32 pitch
float32 yaw
---
#response
")

(setf (get rtabmap_msgs::ResetPoseResponse :md5sum-) "3d5697f0c9e8859325238b57521f8f4e")
(setf (get rtabmap_msgs::ResetPoseResponse :datatype-) "rtabmap_msgs/ResetPoseResponse")
(setf (get rtabmap_msgs::ResetPoseResponse :definition-)
      "#request
float32 x
float32 y
float32 z
float32 roll
float32 pitch
float32 yaw
---
#response
")



(provide :rtabmap_msgs/ResetPose "3d5697f0c9e8859325238b57521f8f4e")


