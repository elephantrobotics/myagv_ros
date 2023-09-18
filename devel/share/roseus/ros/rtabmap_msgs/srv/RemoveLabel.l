;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::RemoveLabel)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'RemoveLabel (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::REMOVELABEL")
  (make-package "RTABMAP_MSGS::REMOVELABEL"))
(unless (find-package "RTABMAP_MSGS::REMOVELABELREQUEST")
  (make-package "RTABMAP_MSGS::REMOVELABELREQUEST"))
(unless (find-package "RTABMAP_MSGS::REMOVELABELRESPONSE")
  (make-package "RTABMAP_MSGS::REMOVELABELRESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::RemoveLabelRequest
  :super ros::object
  :slots (_label ))

(defmethod rtabmap_msgs::RemoveLabelRequest
  (:init
   (&key
    ((:label __label) "")
    )
   (send-super :init)
   (setq _label (string __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rtabmap_msgs::RemoveLabelResponse
  :super ros::object
  :slots ())

(defmethod rtabmap_msgs::RemoveLabelResponse
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

(defclass rtabmap_msgs::RemoveLabel
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::RemoveLabel :md5sum-) "ea23f97416b04c6151d2b576c0665ac1")
(setf (get rtabmap_msgs::RemoveLabel :datatype-) "rtabmap_msgs/RemoveLabel")
(setf (get rtabmap_msgs::RemoveLabel :request) rtabmap_msgs::RemoveLabelRequest)
(setf (get rtabmap_msgs::RemoveLabel :response) rtabmap_msgs::RemoveLabelResponse)

(defmethod rtabmap_msgs::RemoveLabelRequest
  (:response () (instance rtabmap_msgs::RemoveLabelResponse :init)))

(setf (get rtabmap_msgs::RemoveLabelRequest :md5sum-) "ea23f97416b04c6151d2b576c0665ac1")
(setf (get rtabmap_msgs::RemoveLabelRequest :datatype-) "rtabmap_msgs/RemoveLabelRequest")
(setf (get rtabmap_msgs::RemoveLabelRequest :definition-)
      "#request
string label
---
#response 
")

(setf (get rtabmap_msgs::RemoveLabelResponse :md5sum-) "ea23f97416b04c6151d2b576c0665ac1")
(setf (get rtabmap_msgs::RemoveLabelResponse :datatype-) "rtabmap_msgs/RemoveLabelResponse")
(setf (get rtabmap_msgs::RemoveLabelResponse :definition-)
      "#request
string label
---
#response 
")



(provide :rtabmap_msgs/RemoveLabel "ea23f97416b04c6151d2b576c0665ac1")


