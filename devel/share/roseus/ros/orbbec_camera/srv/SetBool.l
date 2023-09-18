;; Auto-generated. Do not edit!


(when (boundp 'orbbec_camera::SetBool)
  (if (not (find-package "ORBBEC_CAMERA"))
    (make-package "ORBBEC_CAMERA"))
  (shadow 'SetBool (find-package "ORBBEC_CAMERA")))
(unless (find-package "ORBBEC_CAMERA::SETBOOL")
  (make-package "ORBBEC_CAMERA::SETBOOL"))
(unless (find-package "ORBBEC_CAMERA::SETBOOLREQUEST")
  (make-package "ORBBEC_CAMERA::SETBOOLREQUEST"))
(unless (find-package "ORBBEC_CAMERA::SETBOOLRESPONSE")
  (make-package "ORBBEC_CAMERA::SETBOOLRESPONSE"))

(in-package "ROS")





(defclass orbbec_camera::SetBoolRequest
  :super ros::object
  :slots (_data ))

(defmethod orbbec_camera::SetBoolRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass orbbec_camera::SetBoolResponse
  :super ros::object
  :slots (_success _message ))

(defmethod orbbec_camera::SetBoolResponse
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

(defclass orbbec_camera::SetBool
  :super ros::object
  :slots ())

(setf (get orbbec_camera::SetBool :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get orbbec_camera::SetBool :datatype-) "orbbec_camera/SetBool")
(setf (get orbbec_camera::SetBool :request) orbbec_camera::SetBoolRequest)
(setf (get orbbec_camera::SetBool :response) orbbec_camera::SetBoolResponse)

(defmethod orbbec_camera::SetBoolRequest
  (:response () (instance orbbec_camera::SetBoolResponse :init)))

(setf (get orbbec_camera::SetBoolRequest :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get orbbec_camera::SetBoolRequest :datatype-) "orbbec_camera/SetBoolRequest")
(setf (get orbbec_camera::SetBoolRequest :definition-)
      "bool data
---
bool success
string message

")

(setf (get orbbec_camera::SetBoolResponse :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get orbbec_camera::SetBoolResponse :datatype-) "orbbec_camera/SetBoolResponse")
(setf (get orbbec_camera::SetBoolResponse :definition-)
      "bool data
---
bool success
string message

")



(provide :orbbec_camera/SetBool "09fb03525b03e7ea1fd3992bafd87e16")


