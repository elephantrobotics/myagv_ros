
(cl:in-package :asdf)

(defsystem "orbbec_camera-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :orbbec_camera-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetBool" :depends-on ("_package_GetBool"))
    (:file "_package_GetBool" :depends-on ("_package"))
    (:file "GetCameraInfo" :depends-on ("_package_GetCameraInfo"))
    (:file "_package_GetCameraInfo" :depends-on ("_package"))
    (:file "GetCameraParams" :depends-on ("_package_GetCameraParams"))
    (:file "_package_GetCameraParams" :depends-on ("_package"))
    (:file "GetDeviceInfo" :depends-on ("_package_GetDeviceInfo"))
    (:file "_package_GetDeviceInfo" :depends-on ("_package"))
    (:file "GetInt32" :depends-on ("_package_GetInt32"))
    (:file "_package_GetInt32" :depends-on ("_package"))
    (:file "GetString" :depends-on ("_package_GetString"))
    (:file "_package_GetString" :depends-on ("_package"))
    (:file "SetBool" :depends-on ("_package_SetBool"))
    (:file "_package_SetBool" :depends-on ("_package"))
    (:file "SetInt32" :depends-on ("_package_SetInt32"))
    (:file "_package_SetInt32" :depends-on ("_package"))
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
  ))