;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::GetCameraParams)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'GetCameraParams (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::GETCAMERAPARAMS")
  (make-package "ASTRA_CAMERA::GETCAMERAPARAMS"))
(unless (find-package "ASTRA_CAMERA::GETCAMERAPARAMSREQUEST")
  (make-package "ASTRA_CAMERA::GETCAMERAPARAMSREQUEST"))
(unless (find-package "ASTRA_CAMERA::GETCAMERAPARAMSRESPONSE")
  (make-package "ASTRA_CAMERA::GETCAMERAPARAMSRESPONSE"))

(in-package "ROS")





(defclass astra_camera::GetCameraParamsRequest
  :super ros::object
  :slots ())

(defmethod astra_camera::GetCameraParamsRequest
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

(defclass astra_camera::GetCameraParamsResponse
  :super ros::object
  :slots (_l_intr_p _r_intr_p _r2l_r _r2l_t _l_k _r_k _success _message ))

(defmethod astra_camera::GetCameraParamsResponse
  (:init
   (&key
    ((:l_intr_p __l_intr_p) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:r_intr_p __r_intr_p) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:r2l_r __r2l_r) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:r2l_t __r2l_t) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:l_k __l_k) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:r_k __r_k) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _l_intr_p __l_intr_p)
   (setq _r_intr_p __r_intr_p)
   (setq _r2l_r __r2l_r)
   (setq _r2l_t __r2l_t)
   (setq _l_k __l_k)
   (setq _r_k __r_k)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:l_intr_p
   (&optional __l_intr_p)
   (if __l_intr_p (setq _l_intr_p __l_intr_p)) _l_intr_p)
  (:r_intr_p
   (&optional __r_intr_p)
   (if __r_intr_p (setq _r_intr_p __r_intr_p)) _r_intr_p)
  (:r2l_r
   (&optional __r2l_r)
   (if __r2l_r (setq _r2l_r __r2l_r)) _r2l_r)
  (:r2l_t
   (&optional __r2l_t)
   (if __r2l_t (setq _r2l_t __r2l_t)) _r2l_t)
  (:l_k
   (&optional __l_k)
   (if __l_k (setq _l_k __l_k)) _l_k)
  (:r_k
   (&optional __r_k)
   (if __r_k (setq _r_k __r_k)) _r_k)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float32[4] _l_intr_p
    (* 4    4)
    ;; float32[4] _r_intr_p
    (* 4    4)
    ;; float32[9] _r2l_r
    (* 4    9)
    ;; float32[3] _r2l_t
    (* 4    3)
    ;; float32[5] _l_k
    (* 4    5)
    ;; float32[5] _r_k
    (* 4    5)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _l_intr_p
     (dotimes (i 4)
       (sys::poke (elt _l_intr_p i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _r_intr_p
     (dotimes (i 4)
       (sys::poke (elt _r_intr_p i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[9] _r2l_r
     (dotimes (i 9)
       (sys::poke (elt _r2l_r i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _r2l_t
     (dotimes (i 3)
       (sys::poke (elt _r2l_t i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[5] _l_k
     (dotimes (i 5)
       (sys::poke (elt _l_k i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[5] _r_k
     (dotimes (i 5)
       (sys::poke (elt _r_k i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _l_intr_p
   (dotimes (i (length _l_intr_p))
     (setf (elt _l_intr_p i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _r_intr_p
   (dotimes (i (length _r_intr_p))
     (setf (elt _r_intr_p i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[9] _r2l_r
   (dotimes (i (length _r2l_r))
     (setf (elt _r2l_r i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _r2l_t
   (dotimes (i (length _r2l_t))
     (setf (elt _r2l_t i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[5] _l_k
   (dotimes (i (length _l_k))
     (setf (elt _l_k i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[5] _r_k
   (dotimes (i (length _r_k))
     (setf (elt _r_k i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass astra_camera::GetCameraParams
  :super ros::object
  :slots ())

(setf (get astra_camera::GetCameraParams :md5sum-) "82a0d82977d6826869eb4772054042e0")
(setf (get astra_camera::GetCameraParams :datatype-) "astra_camera/GetCameraParams")
(setf (get astra_camera::GetCameraParams :request) astra_camera::GetCameraParamsRequest)
(setf (get astra_camera::GetCameraParams :response) astra_camera::GetCameraParamsResponse)

(defmethod astra_camera::GetCameraParamsRequest
  (:response () (instance astra_camera::GetCameraParamsResponse :init)))

(setf (get astra_camera::GetCameraParamsRequest :md5sum-) "82a0d82977d6826869eb4772054042e0")
(setf (get astra_camera::GetCameraParamsRequest :datatype-) "astra_camera/GetCameraParamsRequest")
(setf (get astra_camera::GetCameraParamsRequest :definition-)
      "---
float32[4] l_intr_p
float32[4] r_intr_p
float32[9] r2l_r
float32[3] r2l_t
float32[5] l_k
float32[5] r_k
bool success
string message

")

(setf (get astra_camera::GetCameraParamsResponse :md5sum-) "82a0d82977d6826869eb4772054042e0")
(setf (get astra_camera::GetCameraParamsResponse :datatype-) "astra_camera/GetCameraParamsResponse")
(setf (get astra_camera::GetCameraParamsResponse :definition-)
      "---
float32[4] l_intr_p
float32[4] r_intr_p
float32[9] r2l_r
float32[3] r2l_t
float32[5] l_k
float32[5] r_k
bool success
string message

")



(provide :astra_camera/GetCameraParams "82a0d82977d6826869eb4772054042e0")


