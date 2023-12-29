;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::SensorData)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'SensorData (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::SENSORDATA")
  (make-package "RTABMAP_MSGS::SENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude SensorData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::SensorData
  :super ros::object
  :slots (_header _left _right _left_compressed _right_compressed _left_camera_info _right_camera_info _local_transform _laser_scan _laser_scan_compressed _laser_scan_max_pts _laser_scan_max_range _laser_scan_format _laser_scan_local_transform _user_data _grid_ground _grid_obstacles _grid_empty_cells _grid_cell_size _grid_view_point _key_points _points _descriptors _global_descriptors _env_sensors _imu _imu_local_transform _landmarks _ground_truth_pose _gps ))

(defmethod rtabmap_msgs::SensorData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left __left) (instance sensor_msgs::Image :init))
    ((:right __right) (instance sensor_msgs::Image :init))
    ((:left_compressed __left_compressed) (make-array 0 :initial-element 0 :element-type :char))
    ((:right_compressed __right_compressed) (make-array 0 :initial-element 0 :element-type :char))
    ((:left_camera_info __left_camera_info) ())
    ((:right_camera_info __right_camera_info) ())
    ((:local_transform __local_transform) ())
    ((:laser_scan __laser_scan) (instance sensor_msgs::PointCloud2 :init))
    ((:laser_scan_compressed __laser_scan_compressed) (make-array 0 :initial-element 0 :element-type :char))
    ((:laser_scan_max_pts __laser_scan_max_pts) 0)
    ((:laser_scan_max_range __laser_scan_max_range) 0.0)
    ((:laser_scan_format __laser_scan_format) 0)
    ((:laser_scan_local_transform __laser_scan_local_transform) (instance geometry_msgs::Transform :init))
    ((:user_data __user_data) (make-array 0 :initial-element 0 :element-type :char))
    ((:grid_ground __grid_ground) (make-array 0 :initial-element 0 :element-type :char))
    ((:grid_obstacles __grid_obstacles) (make-array 0 :initial-element 0 :element-type :char))
    ((:grid_empty_cells __grid_empty_cells) (make-array 0 :initial-element 0 :element-type :char))
    ((:grid_cell_size __grid_cell_size) 0.0)
    ((:grid_view_point __grid_view_point) (instance rtabmap_msgs::Point3f :init))
    ((:key_points __key_points) ())
    ((:points __points) ())
    ((:descriptors __descriptors) (make-array 0 :initial-element 0 :element-type :char))
    ((:global_descriptors __global_descriptors) ())
    ((:env_sensors __env_sensors) ())
    ((:imu __imu) (instance sensor_msgs::Imu :init))
    ((:imu_local_transform __imu_local_transform) (instance geometry_msgs::Transform :init))
    ((:landmarks __landmarks) ())
    ((:ground_truth_pose __ground_truth_pose) (instance geometry_msgs::Pose :init))
    ((:gps __gps) (instance rtabmap_msgs::GPS :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _left __left)
   (setq _right __right)
   (setq _left_compressed __left_compressed)
   (setq _right_compressed __right_compressed)
   (setq _left_camera_info __left_camera_info)
   (setq _right_camera_info __right_camera_info)
   (setq _local_transform __local_transform)
   (setq _laser_scan __laser_scan)
   (setq _laser_scan_compressed __laser_scan_compressed)
   (setq _laser_scan_max_pts (round __laser_scan_max_pts))
   (setq _laser_scan_max_range (float __laser_scan_max_range))
   (setq _laser_scan_format (round __laser_scan_format))
   (setq _laser_scan_local_transform __laser_scan_local_transform)
   (setq _user_data __user_data)
   (setq _grid_ground __grid_ground)
   (setq _grid_obstacles __grid_obstacles)
   (setq _grid_empty_cells __grid_empty_cells)
   (setq _grid_cell_size (float __grid_cell_size))
   (setq _grid_view_point __grid_view_point)
   (setq _key_points __key_points)
   (setq _points __points)
   (setq _descriptors __descriptors)
   (setq _global_descriptors __global_descriptors)
   (setq _env_sensors __env_sensors)
   (setq _imu __imu)
   (setq _imu_local_transform __imu_local_transform)
   (setq _landmarks __landmarks)
   (setq _ground_truth_pose __ground_truth_pose)
   (setq _gps __gps)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:left_compressed
   (&optional __left_compressed)
   (if __left_compressed (setq _left_compressed __left_compressed)) _left_compressed)
  (:right_compressed
   (&optional __right_compressed)
   (if __right_compressed (setq _right_compressed __right_compressed)) _right_compressed)
  (:left_camera_info
   (&rest __left_camera_info)
   (if (keywordp (car __left_camera_info))
       (send* _left_camera_info __left_camera_info)
     (progn
       (if __left_camera_info (setq _left_camera_info (car __left_camera_info)))
       _left_camera_info)))
  (:right_camera_info
   (&rest __right_camera_info)
   (if (keywordp (car __right_camera_info))
       (send* _right_camera_info __right_camera_info)
     (progn
       (if __right_camera_info (setq _right_camera_info (car __right_camera_info)))
       _right_camera_info)))
  (:local_transform
   (&rest __local_transform)
   (if (keywordp (car __local_transform))
       (send* _local_transform __local_transform)
     (progn
       (if __local_transform (setq _local_transform (car __local_transform)))
       _local_transform)))
  (:laser_scan
   (&rest __laser_scan)
   (if (keywordp (car __laser_scan))
       (send* _laser_scan __laser_scan)
     (progn
       (if __laser_scan (setq _laser_scan (car __laser_scan)))
       _laser_scan)))
  (:laser_scan_compressed
   (&optional __laser_scan_compressed)
   (if __laser_scan_compressed (setq _laser_scan_compressed __laser_scan_compressed)) _laser_scan_compressed)
  (:laser_scan_max_pts
   (&optional __laser_scan_max_pts)
   (if __laser_scan_max_pts (setq _laser_scan_max_pts __laser_scan_max_pts)) _laser_scan_max_pts)
  (:laser_scan_max_range
   (&optional __laser_scan_max_range)
   (if __laser_scan_max_range (setq _laser_scan_max_range __laser_scan_max_range)) _laser_scan_max_range)
  (:laser_scan_format
   (&optional __laser_scan_format)
   (if __laser_scan_format (setq _laser_scan_format __laser_scan_format)) _laser_scan_format)
  (:laser_scan_local_transform
   (&rest __laser_scan_local_transform)
   (if (keywordp (car __laser_scan_local_transform))
       (send* _laser_scan_local_transform __laser_scan_local_transform)
     (progn
       (if __laser_scan_local_transform (setq _laser_scan_local_transform (car __laser_scan_local_transform)))
       _laser_scan_local_transform)))
  (:user_data
   (&optional __user_data)
   (if __user_data (setq _user_data __user_data)) _user_data)
  (:grid_ground
   (&optional __grid_ground)
   (if __grid_ground (setq _grid_ground __grid_ground)) _grid_ground)
  (:grid_obstacles
   (&optional __grid_obstacles)
   (if __grid_obstacles (setq _grid_obstacles __grid_obstacles)) _grid_obstacles)
  (:grid_empty_cells
   (&optional __grid_empty_cells)
   (if __grid_empty_cells (setq _grid_empty_cells __grid_empty_cells)) _grid_empty_cells)
  (:grid_cell_size
   (&optional __grid_cell_size)
   (if __grid_cell_size (setq _grid_cell_size __grid_cell_size)) _grid_cell_size)
  (:grid_view_point
   (&rest __grid_view_point)
   (if (keywordp (car __grid_view_point))
       (send* _grid_view_point __grid_view_point)
     (progn
       (if __grid_view_point (setq _grid_view_point (car __grid_view_point)))
       _grid_view_point)))
  (:key_points
   (&rest __key_points)
   (if (keywordp (car __key_points))
       (send* _key_points __key_points)
     (progn
       (if __key_points (setq _key_points (car __key_points)))
       _key_points)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:descriptors
   (&optional __descriptors)
   (if __descriptors (setq _descriptors __descriptors)) _descriptors)
  (:global_descriptors
   (&rest __global_descriptors)
   (if (keywordp (car __global_descriptors))
       (send* _global_descriptors __global_descriptors)
     (progn
       (if __global_descriptors (setq _global_descriptors (car __global_descriptors)))
       _global_descriptors)))
  (:env_sensors
   (&rest __env_sensors)
   (if (keywordp (car __env_sensors))
       (send* _env_sensors __env_sensors)
     (progn
       (if __env_sensors (setq _env_sensors (car __env_sensors)))
       _env_sensors)))
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:imu_local_transform
   (&rest __imu_local_transform)
   (if (keywordp (car __imu_local_transform))
       (send* _imu_local_transform __imu_local_transform)
     (progn
       (if __imu_local_transform (setq _imu_local_transform (car __imu_local_transform)))
       _imu_local_transform)))
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:ground_truth_pose
   (&rest __ground_truth_pose)
   (if (keywordp (car __ground_truth_pose))
       (send* _ground_truth_pose __ground_truth_pose)
     (progn
       (if __ground_truth_pose (setq _ground_truth_pose (car __ground_truth_pose)))
       _ground_truth_pose)))
  (:gps
   (&rest __gps)
   (if (keywordp (car __gps))
       (send* _gps __gps)
     (progn
       (if __gps (setq _gps (car __gps)))
       _gps)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Image _left
    (send _left :serialization-length)
    ;; sensor_msgs/Image _right
    (send _right :serialization-length)
    ;; uint8[] _left_compressed
    (* 1    (length _left_compressed)) 4
    ;; uint8[] _right_compressed
    (* 1    (length _right_compressed)) 4
    ;; sensor_msgs/CameraInfo[] _left_camera_info
    (apply #'+ (send-all _left_camera_info :serialization-length)) 4
    ;; sensor_msgs/CameraInfo[] _right_camera_info
    (apply #'+ (send-all _right_camera_info :serialization-length)) 4
    ;; geometry_msgs/Transform[] _local_transform
    (apply #'+ (send-all _local_transform :serialization-length)) 4
    ;; sensor_msgs/PointCloud2 _laser_scan
    (send _laser_scan :serialization-length)
    ;; uint8[] _laser_scan_compressed
    (* 1    (length _laser_scan_compressed)) 4
    ;; int32 _laser_scan_max_pts
    4
    ;; float32 _laser_scan_max_range
    4
    ;; int32 _laser_scan_format
    4
    ;; geometry_msgs/Transform _laser_scan_local_transform
    (send _laser_scan_local_transform :serialization-length)
    ;; uint8[] _user_data
    (* 1    (length _user_data)) 4
    ;; uint8[] _grid_ground
    (* 1    (length _grid_ground)) 4
    ;; uint8[] _grid_obstacles
    (* 1    (length _grid_obstacles)) 4
    ;; uint8[] _grid_empty_cells
    (* 1    (length _grid_empty_cells)) 4
    ;; float32 _grid_cell_size
    4
    ;; rtabmap_msgs/Point3f _grid_view_point
    (send _grid_view_point :serialization-length)
    ;; rtabmap_msgs/KeyPoint[] _key_points
    (apply #'+ (send-all _key_points :serialization-length)) 4
    ;; rtabmap_msgs/Point3f[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; uint8[] _descriptors
    (* 1    (length _descriptors)) 4
    ;; rtabmap_msgs/GlobalDescriptor[] _global_descriptors
    (apply #'+ (send-all _global_descriptors :serialization-length)) 4
    ;; rtabmap_msgs/EnvSensor[] _env_sensors
    (apply #'+ (send-all _env_sensors :serialization-length)) 4
    ;; sensor_msgs/Imu _imu
    (send _imu :serialization-length)
    ;; geometry_msgs/Transform _imu_local_transform
    (send _imu_local_transform :serialization-length)
    ;; rtabmap_msgs/LandmarkDetection[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ;; geometry_msgs/Pose _ground_truth_pose
    (send _ground_truth_pose :serialization-length)
    ;; rtabmap_msgs/GPS _gps
    (send _gps :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Image _left
       (send _left :serialize s)
     ;; sensor_msgs/Image _right
       (send _right :serialize s)
     ;; uint8[] _left_compressed
     (write-long (length _left_compressed) s)
     (princ _left_compressed s)
     ;; uint8[] _right_compressed
     (write-long (length _right_compressed) s)
     (princ _right_compressed s)
     ;; sensor_msgs/CameraInfo[] _left_camera_info
     (write-long (length _left_camera_info) s)
     (dolist (elem _left_camera_info)
       (send elem :serialize s)
       )
     ;; sensor_msgs/CameraInfo[] _right_camera_info
     (write-long (length _right_camera_info) s)
     (dolist (elem _right_camera_info)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Transform[] _local_transform
     (write-long (length _local_transform) s)
     (dolist (elem _local_transform)
       (send elem :serialize s)
       )
     ;; sensor_msgs/PointCloud2 _laser_scan
       (send _laser_scan :serialize s)
     ;; uint8[] _laser_scan_compressed
     (write-long (length _laser_scan_compressed) s)
     (princ _laser_scan_compressed s)
     ;; int32 _laser_scan_max_pts
       (write-long _laser_scan_max_pts s)
     ;; float32 _laser_scan_max_range
       (sys::poke _laser_scan_max_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _laser_scan_format
       (write-long _laser_scan_format s)
     ;; geometry_msgs/Transform _laser_scan_local_transform
       (send _laser_scan_local_transform :serialize s)
     ;; uint8[] _user_data
     (write-long (length _user_data) s)
     (princ _user_data s)
     ;; uint8[] _grid_ground
     (write-long (length _grid_ground) s)
     (princ _grid_ground s)
     ;; uint8[] _grid_obstacles
     (write-long (length _grid_obstacles) s)
     (princ _grid_obstacles s)
     ;; uint8[] _grid_empty_cells
     (write-long (length _grid_empty_cells) s)
     (princ _grid_empty_cells s)
     ;; float32 _grid_cell_size
       (sys::poke _grid_cell_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; rtabmap_msgs/Point3f _grid_view_point
       (send _grid_view_point :serialize s)
     ;; rtabmap_msgs/KeyPoint[] _key_points
     (write-long (length _key_points) s)
     (dolist (elem _key_points)
       (send elem :serialize s)
       )
     ;; rtabmap_msgs/Point3f[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; uint8[] _descriptors
     (write-long (length _descriptors) s)
     (princ _descriptors s)
     ;; rtabmap_msgs/GlobalDescriptor[] _global_descriptors
     (write-long (length _global_descriptors) s)
     (dolist (elem _global_descriptors)
       (send elem :serialize s)
       )
     ;; rtabmap_msgs/EnvSensor[] _env_sensors
     (write-long (length _env_sensors) s)
     (dolist (elem _env_sensors)
       (send elem :serialize s)
       )
     ;; sensor_msgs/Imu _imu
       (send _imu :serialize s)
     ;; geometry_msgs/Transform _imu_local_transform
       (send _imu_local_transform :serialize s)
     ;; rtabmap_msgs/LandmarkDetection[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose _ground_truth_pose
       (send _ground_truth_pose :serialize s)
     ;; rtabmap_msgs/GPS _gps
       (send _gps :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Image _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; sensor_msgs/Image _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;; uint8[] _left_compressed
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _left_compressed (make-array n :element-type :char))
     (replace _left_compressed buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _right_compressed
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _right_compressed (make-array n :element-type :char))
     (replace _right_compressed buf :start2 ptr-) (incf ptr- n))
   ;; sensor_msgs/CameraInfo[] _left_camera_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_camera_info (let (r) (dotimes (i n) (push (instance sensor_msgs::CameraInfo :init) r)) r))
     (dolist (elem- _left_camera_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/CameraInfo[] _right_camera_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_camera_info (let (r) (dotimes (i n) (push (instance sensor_msgs::CameraInfo :init) r)) r))
     (dolist (elem- _right_camera_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Transform[] _local_transform
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_transform (let (r) (dotimes (i n) (push (instance geometry_msgs::Transform :init) r)) r))
     (dolist (elem- _local_transform)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/PointCloud2 _laser_scan
     (send _laser_scan :deserialize buf ptr-) (incf ptr- (send _laser_scan :serialization-length))
   ;; uint8[] _laser_scan_compressed
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _laser_scan_compressed (make-array n :element-type :char))
     (replace _laser_scan_compressed buf :start2 ptr-) (incf ptr- n))
   ;; int32 _laser_scan_max_pts
     (setq _laser_scan_max_pts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _laser_scan_max_range
     (setq _laser_scan_max_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _laser_scan_format
     (setq _laser_scan_format (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Transform _laser_scan_local_transform
     (send _laser_scan_local_transform :deserialize buf ptr-) (incf ptr- (send _laser_scan_local_transform :serialization-length))
   ;; uint8[] _user_data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _user_data (make-array n :element-type :char))
     (replace _user_data buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _grid_ground
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _grid_ground (make-array n :element-type :char))
     (replace _grid_ground buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _grid_obstacles
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _grid_obstacles (make-array n :element-type :char))
     (replace _grid_obstacles buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _grid_empty_cells
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _grid_empty_cells (make-array n :element-type :char))
     (replace _grid_empty_cells buf :start2 ptr-) (incf ptr- n))
   ;; float32 _grid_cell_size
     (setq _grid_cell_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; rtabmap_msgs/Point3f _grid_view_point
     (send _grid_view_point :deserialize buf ptr-) (incf ptr- (send _grid_view_point :serialization-length))
   ;; rtabmap_msgs/KeyPoint[] _key_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _key_points (let (r) (dotimes (i n) (push (instance rtabmap_msgs::KeyPoint :init) r)) r))
     (dolist (elem- _key_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rtabmap_msgs/Point3f[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance rtabmap_msgs::Point3f :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _descriptors
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _descriptors (make-array n :element-type :char))
     (replace _descriptors buf :start2 ptr-) (incf ptr- n))
   ;; rtabmap_msgs/GlobalDescriptor[] _global_descriptors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_descriptors (let (r) (dotimes (i n) (push (instance rtabmap_msgs::GlobalDescriptor :init) r)) r))
     (dolist (elem- _global_descriptors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rtabmap_msgs/EnvSensor[] _env_sensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _env_sensors (let (r) (dotimes (i n) (push (instance rtabmap_msgs::EnvSensor :init) r)) r))
     (dolist (elem- _env_sensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/Imu _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; geometry_msgs/Transform _imu_local_transform
     (send _imu_local_transform :deserialize buf ptr-) (incf ptr- (send _imu_local_transform :serialization-length))
   ;; rtabmap_msgs/LandmarkDetection[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance rtabmap_msgs::LandmarkDetection :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose _ground_truth_pose
     (send _ground_truth_pose :deserialize buf ptr-) (incf ptr- (send _ground_truth_pose :serialization-length))
   ;; rtabmap_msgs/GPS _gps
     (send _gps :deserialize buf ptr-) (incf ptr- (send _gps :serialization-length))
   ;;
   self)
  )

(setf (get rtabmap_msgs::SensorData :md5sum-) "1408cf03fa94547ee9b7bdda6d8918c2")
(setf (get rtabmap_msgs::SensorData :datatype-) "rtabmap_msgs/SensorData")
(setf (get rtabmap_msgs::SensorData :definition-)
      "#class rtabmap::SensorData

Header header

# For RGB-D, left corresponds to rgb camera, and right corresponds to depth camera.

# Raw images
sensor_msgs/Image left
sensor_msgs/Image right

# Compressed images
# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"
uint8[] left_compressed
uint8[] right_compressed

# Camera info
sensor_msgs/CameraInfo[] left_camera_info
sensor_msgs/CameraInfo[] right_camera_info

# Transform from base frame to camera frame
geometry_msgs/Transform[] local_transform

# raw 2d or 3D laser scan
sensor_msgs/PointCloud2 laser_scan
# compressed 2D or 3D laser scan
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] laser_scan_compressed
int32 laser_scan_max_pts
float32 laser_scan_max_range
int32 laser_scan_format
# local transform (base frame -> laser frame)
geometry_msgs/Transform laser_scan_local_transform

# compressed user data
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] user_data

# compressed occupancy grid
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] grid_ground
uint8[] grid_obstacles
uint8[] grid_empty_cells
float32 grid_cell_size
Point3f grid_view_point

# Local features
KeyPoint[] key_points
Point3f[] points
# compressed descriptors
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] descriptors

GlobalDescriptor[] global_descriptors

EnvSensor[] env_sensors

sensor_msgs/Imu imu
geometry_msgs/Transform imu_local_transform

LandmarkDetection[] landmarks

# Ground truth
geometry_msgs/Pose ground_truth_pose

# GPS
GPS gps

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

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: sensor_msgs/CameraInfo
# This message defines meta information for a camera. It should be in a
# camera namespace on topic \"camera_info\" and accompanied by up to five
# image topics named:
#
#   image_raw - raw data from the camera driver, possibly Bayer encoded
#   image            - monochrome, distorted
#   image_color      - color, distorted
#   image_rect       - monochrome, rectified
#   image_rect_color - color, rectified
#
# The image_pipeline contains packages (image_proc, stereo_image_proc)
# for producing the four processed image topics from image_raw and
# camera_info. The meaning of the camera parameters are described in
# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
#
# The image_geometry package provides a user-friendly interface to
# common operations using this meta information. If you want to, e.g.,
# project a 3d point into image coordinates, we strongly recommend
# using image_geometry.
#
# If the camera is uncalibrated, the matrices D, K, R, P should be left
# zeroed out. In particular, clients may assume that K[0] == 0.0
# indicates an uncalibrated camera.

#######################################################################
#                     Image acquisition info                          #
#######################################################################

# Time of image acquisition, camera coordinate frame ID
Header header    # Header timestamp should be acquisition time of image
                 # Header frame_id should be optical frame of camera
                 # origin of frame should be optical center of camera
                 # +x should point to the right in the image
                 # +y should point down in the image
                 # +z should point into the plane of the image


#######################################################################
#                      Calibration Parameters                         #
#######################################################################
# These are fixed during camera calibration. Their values will be the #
# same in all messages until the camera is recalibrated. Note that    #
# self-calibrating systems may \"recalibrate\" frequently.              #
#                                                                     #
# The internal parameters can be used to warp a raw (distorted) image #
# to:                                                                 #
#   1. An undistorted image (requires D and K)                        #
#   2. A rectified image (requires D, K, R)                           #
# The projection matrix P projects 3D points into the rectified image.#
#######################################################################

# The image dimensions with which the camera was calibrated. Normally
# this will be the full camera resolution in pixels.
uint32 height
uint32 width

# The distortion model used. Supported models are listed in
# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a
# simple model of radial and tangential distortion - is sufficient.
string distortion_model

# The distortion parameters, size depending on the distortion model.
# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).
float64[] D

# Intrinsic camera matrix for the raw (distorted) images.
#     [fx  0 cx]
# K = [ 0 fy cy]
#     [ 0  0  1]
# Projects 3D points in the camera coordinate frame to 2D pixel
# coordinates using the focal lengths (fx, fy) and principal point
# (cx, cy).
float64[9]  K # 3x3 row-major matrix

# Rectification matrix (stereo cameras only)
# A rotation matrix aligning the camera coordinate system to the ideal
# stereo image plane so that epipolar lines in both stereo images are
# parallel.
float64[9]  R # 3x3 row-major matrix

# Projection/camera matrix
#     [fx'  0  cx' Tx]
# P = [ 0  fy' cy' Ty]
#     [ 0   0   1   0]
# By convention, this matrix specifies the intrinsic (camera) matrix
#  of the processed (rectified) image. That is, the left 3x3 portion
#  is the normal camera intrinsic matrix for the rectified image.
# It projects 3D points in the camera coordinate frame to 2D pixel
#  coordinates using the focal lengths (fx', fy') and principal point
#  (cx', cy') - these may differ from the values in K.
# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
#  also have R = the identity and P[1:3,1:3] = K.
# For a stereo pair, the fourth column [Tx Ty 0]' is related to the
#  position of the optical center of the second camera in the first
#  camera's frame. We assume Tz = 0 so both cameras are in the same
#  stereo image plane. The first camera always has Tx = Ty = 0. For
#  the right (second) camera of a horizontal stereo pair, Ty = 0 and
#  Tx = -fx' * B, where B is the baseline between the cameras.
# Given a 3D point [X Y Z]', the projection (x, y) of the point onto
#  the rectified image is given by:
#  [u v w]' = P * [X Y Z 1]'
#         x = u / w
#         y = v / w
#  This holds for both images of a stereo pair.
float64[12] P # 3x4 row-major matrix


#######################################################################
#                      Operational Parameters                         #
#######################################################################
# These define the image region actually captured by the camera       #
# driver. Although they affect the geometry of the output image, they #
# may be changed freely without recalibrating the camera.             #
#######################################################################

# Binning refers here to any camera setting which combines rectangular
#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the
#  resolution of the output image to
#  (width / binning_x) x (height / binning_y).
# The default values binning_x = binning_y = 0 is considered the same
#  as binning_x = binning_y = 1 (no subsampling).
uint32 binning_x
uint32 binning_y

# Region of interest (subwindow of full camera resolution), given in
#  full resolution (unbinned) image coordinates. A particular ROI
#  always denotes the same window of pixels on the camera sensor,
#  regardless of binning settings.
# The default setting of roi (all values 0) is considered the same as
#  full resolution (roi.width = width, roi.height = height).
RegionOfInterest roi

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: rtabmap_msgs/Point3f
#class cv::Point3f
#{
#    float x;
#    float y;
#    float z;
#}

float32 x
float32 y
float32 z
================================================================================
MSG: rtabmap_msgs/KeyPoint
#class cv::KeyPoint
#{
#    Point2f pt;
#    float size;
#    float angle;
#    float response;
#    int octave;
#    int class_id;
#}

Point2f pt
float32 size
float32 angle
float32 response
int32 octave
int32 class_id
================================================================================
MSG: rtabmap_msgs/Point2f
#class cv::Point2f
#{
#    float x;
#    float y;
#}

float32 x
float32 y
================================================================================
MSG: rtabmap_msgs/GlobalDescriptor

Header header

# compressed global descriptor
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
int32 type
uint8[] info
uint8[] data
================================================================================
MSG: rtabmap_msgs/EnvSensor

Header header

# EnvSensor
int32 type
float64 value
================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

================================================================================
MSG: rtabmap_msgs/LandmarkDetection

# header.stamp: the timestamp of the detection (e.g. image timestamp)
# header.frame_id: the base frame of pose (e.g., camera optical frame)
std_msgs/Header header

# Landmark's frame id
string landmark_frame_id

# Landmark's unique ID: should be >0
int32 id

# Size in meters of the landmark/tag (optional, set 0 to not use it).
float32 size

# Pose of the landmark in header.frame_id frame.
# If covariance is unknown, keep it as null matrix.
# rtabmap_slam/rtabmap's landmark_angular_variance and
# landmark_linear_variance parameters can be used
# for convenience if covariance is null.
geometry_msgs/PoseWithCovariance pose



================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: rtabmap_msgs/GPS

float64 stamp      # in seconds
float64 longitude  # DD format
float64 latitude   # DD format
float64 altitude   # in meters
float64 error      # in meters
float64 bearing    # North 0->360 deg
")



(provide :rtabmap_msgs/SensorData "1408cf03fa94547ee9b7bdda6d8918c2")


