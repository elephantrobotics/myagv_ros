;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::SetLabel)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'SetLabel (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::SETLABEL")
  (make-package "RTABMAP_MSGS::SETLABEL"))
(unless (find-package "RTABMAP_MSGS::SETLABELREQUEST")
  (make-package "RTABMAP_MSGS::SETLABELREQUEST"))
(unless (find-package "RTABMAP_MSGS::SETLABELRESPONSE")
  (make-package "RTABMAP_MSGS::SETLABELRESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::SetLabelRequest
  :super ros::object
  :slots (_node_id _node_label ))

(defmethod rtabmap_msgs::SetLabelRequest
  (:init
   (&key
    ((:node_id __node_id) 0)
    ((:node_label __node_label) "")
    )
   (send-super :init)
   (setq _node_id (round __node_id))
   (setq _node_label (string __node_label))
   self)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:node_label
   (&optional __node_label)
   (if __node_label (setq _node_label __node_label)) _node_label)
  (:serialization-length
   ()
   (+
    ;; int32 _node_id
    4
    ;; string _node_label
    4 (length _node_label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _node_id
       (write-long _node_id s)
     ;; string _node_label
       (write-long (length _node_label) s) (princ _node_label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _node_label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rtabmap_msgs::SetLabelResponse
  :super ros::object
  :slots ())

(defmethod rtabmap_msgs::SetLabelResponse
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

(defclass rtabmap_msgs::SetLabel
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::SetLabel :md5sum-) "baadfb04a43ec26085eb7bebc9a80862")
(setf (get rtabmap_msgs::SetLabel :datatype-) "rtabmap_msgs/SetLabel")
(setf (get rtabmap_msgs::SetLabel :request) rtabmap_msgs::SetLabelRequest)
(setf (get rtabmap_msgs::SetLabel :response) rtabmap_msgs::SetLabelResponse)

(defmethod rtabmap_msgs::SetLabelRequest
  (:response () (instance rtabmap_msgs::SetLabelResponse :init)))

(setf (get rtabmap_msgs::SetLabelRequest :md5sum-) "baadfb04a43ec26085eb7bebc9a80862")
(setf (get rtabmap_msgs::SetLabelRequest :datatype-) "rtabmap_msgs/SetLabelRequest")
(setf (get rtabmap_msgs::SetLabelRequest :definition-)
      "#request
# Set node_id = 0 to set label to last node
int32 node_id
string node_label
---
#response 
")

(setf (get rtabmap_msgs::SetLabelResponse :md5sum-) "baadfb04a43ec26085eb7bebc9a80862")
(setf (get rtabmap_msgs::SetLabelResponse :datatype-) "rtabmap_msgs/SetLabelResponse")
(setf (get rtabmap_msgs::SetLabelResponse :definition-)
      "#request
# Set node_id = 0 to set label to last node
int32 node_id
string node_label
---
#response 
")



(provide :rtabmap_msgs/SetLabel "baadfb04a43ec26085eb7bebc9a80862")


