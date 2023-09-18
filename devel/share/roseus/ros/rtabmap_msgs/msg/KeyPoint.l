;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::KeyPoint)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'KeyPoint (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::KEYPOINT")
  (make-package "RTABMAP_MSGS::KEYPOINT"))

(in-package "ROS")
;;//! \htmlinclude KeyPoint.msg.html


(defclass rtabmap_msgs::KeyPoint
  :super ros::object
  :slots (_pt _size _angle _response _octave _class_id ))

(defmethod rtabmap_msgs::KeyPoint
  (:init
   (&key
    ((:pt __pt) (instance rtabmap_msgs::Point2f :init))
    ((:size __size) 0.0)
    ((:angle __angle) 0.0)
    ((:response __response) 0.0)
    ((:octave __octave) 0)
    ((:class_id __class_id) 0)
    )
   (send-super :init)
   (setq _pt __pt)
   (setq _size (float __size))
   (setq _angle (float __angle))
   (setq _response (float __response))
   (setq _octave (round __octave))
   (setq _class_id (round __class_id))
   self)
  (:pt
   (&rest __pt)
   (if (keywordp (car __pt))
       (send* _pt __pt)
     (progn
       (if __pt (setq _pt (car __pt)))
       _pt)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:octave
   (&optional __octave)
   (if __octave (setq _octave __octave)) _octave)
  (:class_id
   (&optional __class_id)
   (if __class_id (setq _class_id __class_id)) _class_id)
  (:serialization-length
   ()
   (+
    ;; rtabmap_msgs/Point2f _pt
    (send _pt :serialization-length)
    ;; float32 _size
    4
    ;; float32 _angle
    4
    ;; float32 _response
    4
    ;; int32 _octave
    4
    ;; int32 _class_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rtabmap_msgs/Point2f _pt
       (send _pt :serialize s)
     ;; float32 _size
       (sys::poke _size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _response
       (sys::poke _response (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _octave
       (write-long _octave s)
     ;; int32 _class_id
       (write-long _class_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rtabmap_msgs/Point2f _pt
     (send _pt :deserialize buf ptr-) (incf ptr- (send _pt :serialization-length))
   ;; float32 _size
     (setq _size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _response
     (setq _response (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _octave
     (setq _octave (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _class_id
     (setq _class_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rtabmap_msgs::KeyPoint :md5sum-) "11cefb08bec6034bef3e32ec473dc6a7")
(setf (get rtabmap_msgs::KeyPoint :datatype-) "rtabmap_msgs/KeyPoint")
(setf (get rtabmap_msgs::KeyPoint :definition-)
      "#class cv::KeyPoint
#{
#    Point2f pt;
#    float size;
#    float angle;
#    float response;
#    int octave;
#    int class_id;
#}

Point2f pt
float32 size
float32 angle
float32 response
int32 octave
int32 class_id
================================================================================
MSG: rtabmap_msgs/Point2f
#class cv::Point2f
#{
#    float x;
#    float y;
#}

float32 x
float32 y
")



(provide :rtabmap_msgs/KeyPoint "11cefb08bec6034bef3e32ec473dc6a7")


