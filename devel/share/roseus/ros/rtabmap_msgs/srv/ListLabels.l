;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::ListLabels)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'ListLabels (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::LISTLABELS")
  (make-package "RTABMAP_MSGS::LISTLABELS"))
(unless (find-package "RTABMAP_MSGS::LISTLABELSREQUEST")
  (make-package "RTABMAP_MSGS::LISTLABELSREQUEST"))
(unless (find-package "RTABMAP_MSGS::LISTLABELSRESPONSE")
  (make-package "RTABMAP_MSGS::LISTLABELSRESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::ListLabelsRequest
  :super ros::object
  :slots ())

(defmethod rtabmap_msgs::ListLabelsRequest
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

(defclass rtabmap_msgs::ListLabelsResponse
  :super ros::object
  :slots (_ids _labels ))

(defmethod rtabmap_msgs::ListLabelsResponse
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:labels __labels) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _labels __labels)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:serialization-length
   ()
   (+
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; string[] _labels
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _labels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; string[] _labels
     (write-long (length _labels) s)
     (dolist (elem _labels)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _labels i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rtabmap_msgs::ListLabels
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::ListLabels :md5sum-) "eeaf81b9c58c5f0e5150e4704df1159c")
(setf (get rtabmap_msgs::ListLabels :datatype-) "rtabmap_msgs/ListLabels")
(setf (get rtabmap_msgs::ListLabels :request) rtabmap_msgs::ListLabelsRequest)
(setf (get rtabmap_msgs::ListLabels :response) rtabmap_msgs::ListLabelsResponse)

(defmethod rtabmap_msgs::ListLabelsRequest
  (:response () (instance rtabmap_msgs::ListLabelsResponse :init)))

(setf (get rtabmap_msgs::ListLabelsRequest :md5sum-) "eeaf81b9c58c5f0e5150e4704df1159c")
(setf (get rtabmap_msgs::ListLabelsRequest :datatype-) "rtabmap_msgs/ListLabelsRequest")
(setf (get rtabmap_msgs::ListLabelsRequest :definition-)
      "#request
---
#response 
int32[] ids
string[] labels
")

(setf (get rtabmap_msgs::ListLabelsResponse :md5sum-) "eeaf81b9c58c5f0e5150e4704df1159c")
(setf (get rtabmap_msgs::ListLabelsResponse :datatype-) "rtabmap_msgs/ListLabelsResponse")
(setf (get rtabmap_msgs::ListLabelsResponse :definition-)
      "#request
---
#response 
int32[] ids
string[] labels
")



(provide :rtabmap_msgs/ListLabels "eeaf81b9c58c5f0e5150e4704df1159c")


