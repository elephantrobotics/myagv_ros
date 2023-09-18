;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetBool)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetBool (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETBOOL")
  (make-package "ASTRA_CAMERA::GETBOOL"))
(unless (find-package "ASTRA_CAMERA::GETBOOLREQUEST")
  (make-package "ASTRA_CAMERA::GETBOOLREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETBOOLRESPONSE")
  (make-package "ASTRA_CAMERA::GETBOOLRESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetBoolRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetBoolRequest
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

(defclass astra_camera::GetBoolResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod astra_camera::GetBoolResponse
  (:init
   (&key
    ((:data __data) nil)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data __data)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass astra_camera::GetBool
  :super ros::object
  :slots ())

(setf (get astra_camera::GetBool :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get astra_camera::GetBool :datatype-) "astra_camera/GetBool")
(setf (get astra_camera::GetBool :request) astra_camera::GetBoolRequest)
(setf (get astra_camera::GetBool :response) astra_camera::GetBoolResponse)

(defmethod astra_camera::GetBoolRequest
  (:response () (instance astra_camera::GetBoolResponse :init)))

(setf (get astra_camera::GetBoolRequest :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get astra_camera::GetBoolRequest :datatype-) "astra_camera/GetBoolRequest")
(setf (get astra_camera::GetBoolRequest :definition-)
      "---
bool data
bool success
string message

")

(setf (get astra_camera::GetBoolResponse :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get astra_camera::GetBoolResponse :datatype-) "astra_camera/GetBoolResponse")
(setf (get astra_camera::GetBoolResponse :definition-)
      "---
bool data
bool success
string message

")



(provide :astra_camera/GetBool "43f76a855b16e988566e147b692f2fab")


