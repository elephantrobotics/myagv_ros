;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::GPS)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'GPS (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::GPS")
  (make-package "RTABMAP_MSGS::GPS"))

(in-package "ROS")
;;//! \htmlinclude GPS.msg.html


(defclass rtabmap_msgs::GPS
  :super ros::object
  :slots (_stamp _longitude _latitude _altitude _error _bearing ))

(defmethod rtabmap_msgs::GPS
  (:init
   (&key
    ((:stamp __stamp) 0.0)
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:error __error) 0.0)
    ((:bearing __bearing) 0.0)
    )
   (send-super :init)
   (setq _stamp (float __stamp))
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _altitude (float __altitude))
   (setq _error (float __error))
   (setq _bearing (float __bearing))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:bearing
   (&optional __bearing)
   (if __bearing (setq _bearing __bearing)) _bearing)
  (:serialization-length
   ()
   (+
    ;; float64 _stamp
    8
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; float64 _altitude
    8
    ;; float64 _error
    8
    ;; float64 _bearing
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _stamp
       (sys::poke _stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bearing
       (sys::poke _bearing (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _stamp
     (setq _stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bearing
     (setq _bearing (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rtabmap_msgs::GPS :md5sum-) "0acde0d09a1ab74993cf4e41ff4eae49")
(setf (get rtabmap_msgs::GPS :datatype-) "rtabmap_msgs/GPS")
(setf (get rtabmap_msgs::GPS :definition-)
      "
float64 stamp      # in seconds
float64 longitude  # DD format
float64 latitude   # DD format
float64 altitude   # in meters
float64 error      # in meters
float64 bearing    # North 0->360 deg
")



(provide :rtabmap_msgs/GPS "0acde0d09a1ab74993cf4e41ff4eae49")


