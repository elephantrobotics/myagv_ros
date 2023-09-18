;; Auto-generated. Do not edit!


(when (boundp 'orbbec_camera::GetInt32)
  (if (not (find-package "ORBBEC_CAMERA"))
    (make-package "ORBBEC_CAMERA"))
  (shadow 'GetInt32 (find-package "ORBBEC_CAMERA")))
(unless (find-package "ORBBEC_CAMERA::GETINT32")
  (make-package "ORBBEC_CAMERA::GETINT32"))
(unless (find-package "ORBBEC_CAMERA::GETINT32REQUEST")
  (make-package "ORBBEC_CAMERA::GETINT32REQUEST"))
(unless (find-package "ORBBEC_CAMERA::GETINT32RESPONSE")
  (make-package "ORBBEC_CAMERA::GETINT32RESPONSE"))

(in-package "ROS")





(defclass orbbec_camera::GetInt32Request
  :super ros::object
  :slots ())

(defmethod orbbec_camera::GetInt32Request
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

(defclass orbbec_camera::GetInt32Response
  :super ros::object
  :slots (_data _success _message ))

(defmethod orbbec_camera::GetInt32Response
  (:init
   (&key
    ((:data __data) 0)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data (round __data))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass orbbec_camera::GetInt32
  :super ros::object
  :slots ())

(setf (get orbbec_camera::GetInt32 :md5sum-) "1e06c77f31583d55c01571a573d75b9f")
(setf (get orbbec_camera::GetInt32 :datatype-) "orbbec_camera/GetInt32")
(setf (get orbbec_camera::GetInt32 :request) orbbec_camera::GetInt32Request)
(setf (get orbbec_camera::GetInt32 :response) orbbec_camera::GetInt32Response)

(defmethod orbbec_camera::GetInt32Request
  (:response () (instance orbbec_camera::GetInt32Response :init)))

(setf (get orbbec_camera::GetInt32Request :md5sum-) "1e06c77f31583d55c01571a573d75b9f")
(setf (get orbbec_camera::GetInt32Request :datatype-) "orbbec_camera/GetInt32Request")
(setf (get orbbec_camera::GetInt32Request :definition-)
      "---
int32 data
bool success
string message

")

(setf (get orbbec_camera::GetInt32Response :md5sum-) "1e06c77f31583d55c01571a573d75b9f")
(setf (get orbbec_camera::GetInt32Response :datatype-) "orbbec_camera/GetInt32Response")
(setf (get orbbec_camera::GetInt32Response :definition-)
      "---
int32 data
bool success
string message

")



(provide :orbbec_camera/GetInt32 "1e06c77f31583d55c01571a573d75b9f")


