;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetString)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetString (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETSTRING")
  (make-package "ASTRA_CAMERA::GETSTRING"))
(unless (find-package "ASTRA_CAMERA::GETSTRINGREQUEST")
  (make-package "ASTRA_CAMERA::GETSTRINGREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETSTRINGRESPONSE")
  (make-package "ASTRA_CAMERA::GETSTRINGRESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetStringRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetStringRequest
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

(defclass astra_camera::GetStringResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod astra_camera::GetStringResponse
  (:init
   (&key
    ((:data __data) "")
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data (string __data))
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
    ;; string _data
    4 (length _data)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass astra_camera::GetString
  :super ros::object
  :slots ())

(setf (get astra_camera::GetString :md5sum-) "15baad3d82a7b70bfc4eb31d66322293")
(setf (get astra_camera::GetString :datatype-) "astra_camera/GetString")
(setf (get astra_camera::GetString :request) astra_camera::GetStringRequest)
(setf (get astra_camera::GetString :response) astra_camera::GetStringResponse)

(defmethod astra_camera::GetStringRequest
  (:response () (instance astra_camera::GetStringResponse :init)))

(setf (get astra_camera::GetStringRequest :md5sum-) "15baad3d82a7b70bfc4eb31d66322293")
(setf (get astra_camera::GetStringRequest :datatype-) "astra_camera/GetStringRequest")
(setf (get astra_camera::GetStringRequest :definition-)
      "---
string data
bool success
string message

")

(setf (get astra_camera::GetStringResponse :md5sum-) "15baad3d82a7b70bfc4eb31d66322293")
(setf (get astra_camera::GetStringResponse :datatype-) "astra_camera/GetStringResponse")
(setf (get astra_camera::GetStringResponse :definition-)
      "---
string data
bool success
string message

")



(provide :astra_camera/GetString "15baad3d82a7b70bfc4eb31d66322293")


