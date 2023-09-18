
(cl:in-package :asdf)

(defsystem "astra_camera-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DeviceInfo" :depends-on ("_package_DeviceInfo"))
    (:file "_package_DeviceInfo" :depends-on ("_package"))
    (:file "Extrinsics" :depends-on ("_package_Extrinsics"))
    (:file "_package_Extrinsics" :depends-on ("_package"))
    (:file "Metadata" :depends-on ("_package_Metadata"))
    (:file "_package_Metadata" :depends-on ("_package"))
  ))