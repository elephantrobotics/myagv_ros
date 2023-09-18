;; Auto-generated. Do not edit!


(when (boundp 'orbbec_camera::SetInt32)
  (if (not (find-package "ORBBEC_CAMERA"))
    (make-package "ORBBEC_CAMERA"))
  (shadow 'SetInt32 (find-package "ORBBEC_CAMERA")))
(unless (find-package "ORBBEC_CAMERA::SETINT32")
  (make-package "ORBBEC_CAMERA::SETINT32"))
(unless (find-package "ORBBEC_CAMERA::SETINT32REQUEST")
  (make-package "ORBBEC_CAMERA::SETINT32REQUEST"))
(unless (find-package "ORBBEC_CAMERA::SETINT32RESPONSE")
  (make-package "ORBBEC_CAMERA::SETINT32RESPONSE"))

(in-package "ROS")





(defclass orbbec_camera::SetInt32Request
  :super ros::object
  :slots (_data ))

(defmethod orbbec_camera::SetInt32Request
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass orbbec_camera::SetInt32Response
  :super ros::object
  :slots (_success _message ))

(defmethod orbbec_camera::SetInt32Response
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass orbbec_camera::SetInt32
  :super ros::object
  :slots ())

(setf (get orbbec_camera::SetInt32 :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get orbbec_camera::SetInt32 :datatype-) "orbbec_camera/SetInt32")
(setf (get orbbec_camera::SetInt32 :request) orbbec_camera::SetInt32Request)
(setf (get orbbec_camera::SetInt32 :response) orbbec_camera::SetInt32Response)

(defmethod orbbec_camera::SetInt32Request
  (:response () (instance orbbec_camera::SetInt32Response :init)))

(setf (get orbbec_camera::SetInt32Request :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get orbbec_camera::SetInt32Request :datatype-) "orbbec_camera/SetInt32Request")
(setf (get orbbec_camera::SetInt32Request :definition-)
      "int32 data
---
bool success
string message

")

(setf (get orbbec_camera::SetInt32Response :md5sum-) "41a6318c88ca9d75d7a585e2aa4ca6ea")
(setf (get orbbec_camera::SetInt32Response :datatype-) "orbbec_camera/SetInt32Response")
(setf (get orbbec_camera::SetInt32Response :definition-)
      "int32 data
---
bool success
string message

")



(provide :orbbec_camera/SetInt32 "41a6318c88ca9d75d7a585e2aa4ca6ea")


