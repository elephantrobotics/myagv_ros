;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetDeviceInfo)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetDeviceInfo (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETDEVICEINFO")
  (make-package "ASTRA_CAMERA::GETDEVICEINFO"))
(unless (find-package "ASTRA_CAMERA::GETDEVICEINFOREQUEST")
  (make-package "ASTRA_CAMERA::GETDEVICEINFOREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETDEVICEINFORESPONSE")
  (make-package "ASTRA_CAMERA::GETDEVICEINFORESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetDeviceInfoRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetDeviceInfoRequest
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

(defclass astra_camera::GetDeviceInfoResponse
  :super ros::object
  :slots (_info _success _message ))

(defmethod astra_camera::GetDeviceInfoResponse
  (:init
   (&key
    ((:info __info) (instance astra_camera::DeviceInfo :init))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _info __info)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; astra_camera/DeviceInfo _info
    (send _info :serialization-length)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; astra_camera/DeviceInfo _info
       (send _info :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; astra_camera/DeviceInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass astra_camera::GetDeviceInfo
  :super ros::object
  :slots ())

(setf (get astra_camera::GetDeviceInfo :md5sum-) "1e369ba84c0330473501a0820257661a")
(setf (get astra_camera::GetDeviceInfo :datatype-) "astra_camera/GetDeviceInfo")
(setf (get astra_camera::GetDeviceInfo :request) astra_camera::GetDeviceInfoRequest)
(setf (get astra_camera::GetDeviceInfo :response) astra_camera::GetDeviceInfoResponse)

(defmethod astra_camera::GetDeviceInfoRequest
  (:response () (instance astra_camera::GetDeviceInfoResponse :init)))

(setf (get astra_camera::GetDeviceInfoRequest :md5sum-) "1e369ba84c0330473501a0820257661a")
(setf (get astra_camera::GetDeviceInfoRequest :datatype-) "astra_camera/GetDeviceInfoRequest")
(setf (get astra_camera::GetDeviceInfoRequest :definition-)
      "---
DeviceInfo info
bool success
string message


================================================================================
MSG: astra_camera/DeviceInfo
std_msgs/Header header
string name
int32 vid
int32 pid
string serial_number
string firmware_version
string supported_min_sdk_version
string hardware_version

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get astra_camera::GetDeviceInfoResponse :md5sum-) "1e369ba84c0330473501a0820257661a")
(setf (get astra_camera::GetDeviceInfoResponse :datatype-) "astra_camera/GetDeviceInfoResponse")
(setf (get astra_camera::GetDeviceInfoResponse :definition-)
      "---
DeviceInfo info
bool success
string message


================================================================================
MSG: astra_camera/DeviceInfo
std_msgs/Header header
string name
int32 vid
int32 pid
string serial_number
string firmware_version
string supported_min_sdk_version
string hardware_version

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :astra_camera/GetDeviceInfo "1e369ba84c0330473501a0820257661a")


