;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::PublishMap)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'PublishMap (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::PUBLISHMAP")
  (make-package "RTABMAP_MSGS::PUBLISHMAP"))
(unless (find-package "RTABMAP_MSGS::PUBLISHMAPREQUEST")
  (make-package "RTABMAP_MSGS::PUBLISHMAPREQUEST"))
(unless (find-package "RTABMAP_MSGS::PUBLISHMAPRESPONSE")
  (make-package "RTABMAP_MSGS::PUBLISHMAPRESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::PublishMapRequest
  :super ros::object
  :slots (_global _optimized _graphOnly ))

(defmethod rtabmap_msgs::PublishMapRequest
  (:init
   (&key
    ((:global __global) nil)
    ((:optimized __optimized) nil)
    ((:graphOnly __graphOnly) nil)
    )
   (send-super :init)
   (setq _global __global)
   (setq _optimized __optimized)
   (setq _graphOnly __graphOnly)
   self)
  (:global
   (&optional (__global :null))
   (if (not (eq __global :null)) (setq _global __global)) _global)
  (:optimized
   (&optional (__optimized :null))
   (if (not (eq __optimized :null)) (setq _optimized __optimized)) _optimized)
  (:graphOnly
   (&optional (__graphOnly :null))
   (if (not (eq __graphOnly :null)) (setq _graphOnly __graphOnly)) _graphOnly)
  (:serialization-length
   ()
   (+
    ;; bool _global
    1
    ;; bool _optimized
    1
    ;; bool _graphOnly
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _global
       (if _global (write-byte -1 s) (write-byte 0 s))
     ;; bool _optimized
       (if _optimized (write-byte -1 s) (write-byte 0 s))
     ;; bool _graphOnly
       (if _graphOnly (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _global
     (setq _global (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _optimized
     (setq _optimized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _graphOnly
     (setq _graphOnly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rtabmap_msgs::PublishMapResponse
  :super ros::object
  :slots ())

(defmethod rtabmap_msgs::PublishMapResponse
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

(defclass rtabmap_msgs::PublishMap
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::PublishMap :md5sum-) "6213f9f13cced23f4d224b22f59d839c")
(setf (get rtabmap_msgs::PublishMap :datatype-) "rtabmap_msgs/PublishMap")
(setf (get rtabmap_msgs::PublishMap :request) rtabmap_msgs::PublishMapRequest)
(setf (get rtabmap_msgs::PublishMap :response) rtabmap_msgs::PublishMapResponse)

(defmethod rtabmap_msgs::PublishMapRequest
  (:response () (instance rtabmap_msgs::PublishMapResponse :init)))

(setf (get rtabmap_msgs::PublishMapRequest :md5sum-) "6213f9f13cced23f4d224b22f59d839c")
(setf (get rtabmap_msgs::PublishMapRequest :datatype-) "rtabmap_msgs/PublishMapRequest")
(setf (get rtabmap_msgs::PublishMapRequest :definition-)
      "#request
bool global
bool optimized
bool graphOnly
---
#response

")

(setf (get rtabmap_msgs::PublishMapResponse :md5sum-) "6213f9f13cced23f4d224b22f59d839c")
(setf (get rtabmap_msgs::PublishMapResponse :datatype-) "rtabmap_msgs/PublishMapResponse")
(setf (get rtabmap_msgs::PublishMapResponse :definition-)
      "#request
bool global
bool optimized
bool graphOnly
---
#response

")



(provide :rtabmap_msgs/PublishMap "6213f9f13cced23f4d224b22f59d839c")


