;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::DetectMoreLoopClosures)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'DetectMoreLoopClosures (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::DETECTMORELOOPCLOSURES")
  (make-package "RTABMAP_MSGS::DETECTMORELOOPCLOSURES"))
(unless (find-package "RTABMAP_MSGS::DETECTMORELOOPCLOSURESREQUEST")
  (make-package "RTABMAP_MSGS::DETECTMORELOOPCLOSURESREQUEST"))
(unless (find-package "RTABMAP_MSGS::DETECTMORELOOPCLOSURESRESPONSE")
  (make-package "RTABMAP_MSGS::DETECTMORELOOPCLOSURESRESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::DetectMoreLoopClosuresRequest
  :super ros::object
  :slots (_cluster_radius_max _cluster_radius_min _cluster_angle _iterations _intra_only _inter_only ))

(defmethod rtabmap_msgs::DetectMoreLoopClosuresRequest
  (:init
   (&key
    ((:cluster_radius_max __cluster_radius_max) 0.0)
    ((:cluster_radius_min __cluster_radius_min) 0.0)
    ((:cluster_angle __cluster_angle) 0.0)
    ((:iterations __iterations) 0)
    ((:intra_only __intra_only) nil)
    ((:inter_only __inter_only) nil)
    )
   (send-super :init)
   (setq _cluster_radius_max (float __cluster_radius_max))
   (setq _cluster_radius_min (float __cluster_radius_min))
   (setq _cluster_angle (float __cluster_angle))
   (setq _iterations (round __iterations))
   (setq _intra_only __intra_only)
   (setq _inter_only __inter_only)
   self)
  (:cluster_radius_max
   (&optional __cluster_radius_max)
   (if __cluster_radius_max (setq _cluster_radius_max __cluster_radius_max)) _cluster_radius_max)
  (:cluster_radius_min
   (&optional __cluster_radius_min)
   (if __cluster_radius_min (setq _cluster_radius_min __cluster_radius_min)) _cluster_radius_min)
  (:cluster_angle
   (&optional __cluster_angle)
   (if __cluster_angle (setq _cluster_angle __cluster_angle)) _cluster_angle)
  (:iterations
   (&optional __iterations)
   (if __iterations (setq _iterations __iterations)) _iterations)
  (:intra_only
   (&optional (__intra_only :null))
   (if (not (eq __intra_only :null)) (setq _intra_only __intra_only)) _intra_only)
  (:inter_only
   (&optional (__inter_only :null))
   (if (not (eq __inter_only :null)) (setq _inter_only __inter_only)) _inter_only)
  (:serialization-length
   ()
   (+
    ;; float32 _cluster_radius_max
    4
    ;; float32 _cluster_radius_min
    4
    ;; float32 _cluster_angle
    4
    ;; int32 _iterations
    4
    ;; bool _intra_only
    1
    ;; bool _inter_only
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cluster_radius_max
       (sys::poke _cluster_radius_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cluster_radius_min
       (sys::poke _cluster_radius_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cluster_angle
       (sys::poke _cluster_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _iterations
       (write-long _iterations s)
     ;; bool _intra_only
       (if _intra_only (write-byte -1 s) (write-byte 0 s))
     ;; bool _inter_only
       (if _inter_only (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cluster_radius_max
     (setq _cluster_radius_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cluster_radius_min
     (setq _cluster_radius_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cluster_angle
     (setq _cluster_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _iterations
     (setq _iterations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _intra_only
     (setq _intra_only (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _inter_only
     (setq _inter_only (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rtabmap_msgs::DetectMoreLoopClosuresResponse
  :super ros::object
  :slots (_detected ))

(defmethod rtabmap_msgs::DetectMoreLoopClosuresResponse
  (:init
   (&key
    ((:detected __detected) 0)
    )
   (send-super :init)
   (setq _detected (round __detected))
   self)
  (:detected
   (&optional __detected)
   (if __detected (setq _detected __detected)) _detected)
  (:serialization-length
   ()
   (+
    ;; int32 _detected
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _detected
       (write-long _detected s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _detected
     (setq _detected (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rtabmap_msgs::DetectMoreLoopClosures
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::DetectMoreLoopClosures :md5sum-) "4d201f0476beb2d12b70b64edae8edab")
(setf (get rtabmap_msgs::DetectMoreLoopClosures :datatype-) "rtabmap_msgs/DetectMoreLoopClosures")
(setf (get rtabmap_msgs::DetectMoreLoopClosures :request) rtabmap_msgs::DetectMoreLoopClosuresRequest)
(setf (get rtabmap_msgs::DetectMoreLoopClosures :response) rtabmap_msgs::DetectMoreLoopClosuresResponse)

(defmethod rtabmap_msgs::DetectMoreLoopClosuresRequest
  (:response () (instance rtabmap_msgs::DetectMoreLoopClosuresResponse :init)))

(setf (get rtabmap_msgs::DetectMoreLoopClosuresRequest :md5sum-) "4d201f0476beb2d12b70b64edae8edab")
(setf (get rtabmap_msgs::DetectMoreLoopClosuresRequest :datatype-) "rtabmap_msgs/DetectMoreLoopClosuresRequest")
(setf (get rtabmap_msgs::DetectMoreLoopClosuresRequest :definition-)
      "# Detect more loop closures service
#
#     Based on the current optimized graph, 
#     this process will try to find more nodes corresponding with each 
#     other, and thus finding more loop closures to add to graph.
# 

# Cluster radius (m),     default 1 m if not set
float32 cluster_radius_max

# Cluster radius min (m), default 0 m if not set
float32 cluster_radius_min

# Cluster angle (deg),    default 0 deg if not set
float32 cluster_angle

# Iterations,             default 1 if not set
int32 iterations

# Add only intra session loop closures
bool intra_only

# Add only inter session loop closures
bool inter_only
---
# return the number of loop closures detected, or -1 if it failed.
int32 detected

")

(setf (get rtabmap_msgs::DetectMoreLoopClosuresResponse :md5sum-) "4d201f0476beb2d12b70b64edae8edab")
(setf (get rtabmap_msgs::DetectMoreLoopClosuresResponse :datatype-) "rtabmap_msgs/DetectMoreLoopClosuresResponse")
(setf (get rtabmap_msgs::DetectMoreLoopClosuresResponse :definition-)
      "# Detect more loop closures service
#
#     Based on the current optimized graph, 
#     this process will try to find more nodes corresponding with each 
#     other, and thus finding more loop closures to add to graph.
# 

# Cluster radius (m),     default 1 m if not set
float32 cluster_radius_max

# Cluster radius min (m), default 0 m if not set
float32 cluster_radius_min

# Cluster angle (deg),    default 0 deg if not set
float32 cluster_angle

# Iterations,             default 1 if not set
int32 iterations

# Add only intra session loop closures
bool intra_only

# Add only inter session loop closures
bool inter_only
---
# return the number of loop closures detected, or -1 if it failed.
int32 detected

")



(provide :rtabmap_msgs/DetectMoreLoopClosures "4d201f0476beb2d12b70b64edae8edab")


