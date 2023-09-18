;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::CleanupLocalGrids)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'CleanupLocalGrids (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::CLEANUPLOCALGRIDS")
  (make-package "RTABMAP_MSGS::CLEANUPLOCALGRIDS"))
(unless (find-package "RTABMAP_MSGS::CLEANUPLOCALGRIDSREQUEST")
  (make-package "RTABMAP_MSGS::CLEANUPLOCALGRIDSREQUEST"))
(unless (find-package "RTABMAP_MSGS::CLEANUPLOCALGRIDSRESPONSE")
  (make-package "RTABMAP_MSGS::CLEANUPLOCALGRIDSRESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::CleanupLocalGridsRequest
  :super ros::object
  :slots (_radius _filter_scans ))

(defmethod rtabmap_msgs::CleanupLocalGridsRequest
  (:init
   (&key
    ((:radius __radius) 0)
    ((:filter_scans __filter_scans) nil)
    )
   (send-super :init)
   (setq _radius (round __radius))
   (setq _filter_scans __filter_scans)
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:filter_scans
   (&optional (__filter_scans :null))
   (if (not (eq __filter_scans :null)) (setq _filter_scans __filter_scans)) _filter_scans)
  (:serialization-length
   ()
   (+
    ;; int32 _radius
    4
    ;; bool _filter_scans
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _radius
       (write-long _radius s)
     ;; bool _filter_scans
       (if _filter_scans (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _radius
     (setq _radius (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _filter_scans
     (setq _filter_scans (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rtabmap_msgs::CleanupLocalGridsResponse
  :super ros::object
  :slots (_modified ))

(defmethod rtabmap_msgs::CleanupLocalGridsResponse
  (:init
   (&key
    ((:modified __modified) 0)
    )
   (send-super :init)
   (setq _modified (round __modified))
   self)
  (:modified
   (&optional __modified)
   (if __modified (setq _modified __modified)) _modified)
  (:serialization-length
   ()
   (+
    ;; int32 _modified
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _modified
       (write-long _modified s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _modified
     (setq _modified (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rtabmap_msgs::CleanupLocalGrids
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::CleanupLocalGrids :md5sum-) "9b90cbbb6fac56a143df9416b6e1fa37")
(setf (get rtabmap_msgs::CleanupLocalGrids :datatype-) "rtabmap_msgs/CleanupLocalGrids")
(setf (get rtabmap_msgs::CleanupLocalGrids :request) rtabmap_msgs::CleanupLocalGridsRequest)
(setf (get rtabmap_msgs::CleanupLocalGrids :response) rtabmap_msgs::CleanupLocalGridsResponse)

(defmethod rtabmap_msgs::CleanupLocalGridsRequest
  (:response () (instance rtabmap_msgs::CleanupLocalGridsResponse :init)))

(setf (get rtabmap_msgs::CleanupLocalGridsRequest :md5sum-) "9b90cbbb6fac56a143df9416b6e1fa37")
(setf (get rtabmap_msgs::CleanupLocalGridsRequest :datatype-) "rtabmap_msgs/CleanupLocalGridsRequest")
(setf (get rtabmap_msgs::CleanupLocalGridsRequest :definition-)
      "#  Cleanup local grids service
# 
#     Clear empty space from local occupancy grids 
#     (and laser scans) based on the current optimized global 2d grid map.
#     If the map needs to be regenerated in the future (e.g., when
#     we re-use the map in SLAM mode), removed obstacles won't reappear.
#     Use this with care and only when you know that the map doesn't have errors, 
#     otherwise some real obstacles/walls may be cleared if there is too much 
#     drift in the map.
#

# Radius in cells around empty cell without obstacles to clear underlying obstacles, default 1 cell if not set.
int32 radius

# Filter also the scans, default false if not set.
# The filtered laser scans will be used for localization,
# so if dynamic obstacles have been removed, localization won't try to
# match them anymore. Filtering the laser scans cannot be reverted, 
# but grids can (see DatabaseViewer->Edit menu).
bool filter_scans

---
# return the number of grids or scans modified, -1 if there is an error
int32 modified

")

(setf (get rtabmap_msgs::CleanupLocalGridsResponse :md5sum-) "9b90cbbb6fac56a143df9416b6e1fa37")
(setf (get rtabmap_msgs::CleanupLocalGridsResponse :datatype-) "rtabmap_msgs/CleanupLocalGridsResponse")
(setf (get rtabmap_msgs::CleanupLocalGridsResponse :definition-)
      "#  Cleanup local grids service
# 
#     Clear empty space from local occupancy grids 
#     (and laser scans) based on the current optimized global 2d grid map.
#     If the map needs to be regenerated in the future (e.g., when
#     we re-use the map in SLAM mode), removed obstacles won't reappear.
#     Use this with care and only when you know that the map doesn't have errors, 
#     otherwise some real obstacles/walls may be cleared if there is too much 
#     drift in the map.
#

# Radius in cells around empty cell without obstacles to clear underlying obstacles, default 1 cell if not set.
int32 radius

# Filter also the scans, default false if not set.
# The filtered laser scans will be used for localization,
# so if dynamic obstacles have been removed, localization won't try to
# match them anymore. Filtering the laser scans cannot be reverted, 
# but grids can (see DatabaseViewer->Edit menu).
bool filter_scans

---
# return the number of grids or scans modified, -1 if there is an error
int32 modified

")



(provide :rtabmap_msgs/CleanupLocalGrids "9b90cbbb6fac56a143df9416b6e1fa37")


