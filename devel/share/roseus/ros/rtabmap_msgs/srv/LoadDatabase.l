;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::LoadDatabase)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'LoadDatabase (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::LOADDATABASE")
  (make-package "RTABMAP_MSGS::LOADDATABASE"))
(unless (find-package "RTABMAP_MSGS::LOADDATABASEREQUEST")
  (make-package "RTABMAP_MSGS::LOADDATABASEREQUEST"))
(unless (find-package "RTABMAP_MSGS::LOADDATABASERESPONSE")
  (make-package "RTABMAP_MSGS::LOADDATABASERESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::LoadDatabaseRequest
  :super ros::object
  :slots (_database_path _clear ))

(defmethod rtabmap_msgs::LoadDatabaseRequest
  (:init
   (&key
    ((:database_path __database_path) "")
    ((:clear __clear) nil)
    )
   (send-super :init)
   (setq _database_path (string __database_path))
   (setq _clear __clear)
   self)
  (:database_path
   (&optional __database_path)
   (if __database_path (setq _database_path __database_path)) _database_path)
  (:clear
   (&optional (__clear :null))
   (if (not (eq __clear :null)) (setq _clear __clear)) _clear)
  (:serialization-length
   ()
   (+
    ;; string _database_path
    4 (length _database_path)
    ;; bool _clear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _database_path
       (write-long (length _database_path) s) (princ _database_path s)
     ;; bool _clear
       (if _clear (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _database_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _database_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _clear
     (setq _clear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rtabmap_msgs::LoadDatabaseResponse
  :super ros::object
  :slots ())

(defmethod rtabmap_msgs::LoadDatabaseResponse
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

(defclass rtabmap_msgs::LoadDatabase
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::LoadDatabase :md5sum-) "686abf12c0ee22118c7e5fcc29bcdabe")
(setf (get rtabmap_msgs::LoadDatabase :datatype-) "rtabmap_msgs/LoadDatabase")
(setf (get rtabmap_msgs::LoadDatabase :request) rtabmap_msgs::LoadDatabaseRequest)
(setf (get rtabmap_msgs::LoadDatabase :response) rtabmap_msgs::LoadDatabaseResponse)

(defmethod rtabmap_msgs::LoadDatabaseRequest
  (:response () (instance rtabmap_msgs::LoadDatabaseResponse :init)))

(setf (get rtabmap_msgs::LoadDatabaseRequest :md5sum-) "686abf12c0ee22118c7e5fcc29bcdabe")
(setf (get rtabmap_msgs::LoadDatabaseRequest :datatype-) "rtabmap_msgs/LoadDatabaseRequest")
(setf (get rtabmap_msgs::LoadDatabaseRequest :definition-)
      "#request

# Local database path on which rtabmap is running.
# If the path doesn't exist, a new database will be created.
string database_path

# If the database already exists, data will be cleared if true.
bool clear

---
#response, return false on rtabmap initialization failure.
")

(setf (get rtabmap_msgs::LoadDatabaseResponse :md5sum-) "686abf12c0ee22118c7e5fcc29bcdabe")
(setf (get rtabmap_msgs::LoadDatabaseResponse :datatype-) "rtabmap_msgs/LoadDatabaseResponse")
(setf (get rtabmap_msgs::LoadDatabaseResponse :definition-)
      "#request

# Local database path on which rtabmap is running.
# If the path doesn't exist, a new database will be created.
string database_path

# If the database already exists, data will be cleared if true.
bool clear

---
#response, return false on rtabmap initialization failure.
")



(provide :rtabmap_msgs/LoadDatabase "686abf12c0ee22118c7e5fcc29bcdabe")


