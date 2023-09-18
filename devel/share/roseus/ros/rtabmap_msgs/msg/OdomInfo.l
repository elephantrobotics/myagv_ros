;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::OdomInfo)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'OdomInfo (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::ODOMINFO")
  (make-package "RTABMAP_MSGS::ODOMINFO"))

(in-package "ROS")
;;//! \htmlinclude OdomInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::OdomInfo
  :super ros::object
  :slots (_header _lost _matches _inliers _icpInliersRatio _icpRotation _icpTranslation _icpStructuralComplexity _icpStructuralDistribution _icpCorrespondences _covariance _features _localMapSize _localScanMapSize _localKeyFrames _localBundleOutliers _localBundleConstraints _localBundleTime _keyFrameAdded _timeEstimation _timeParticleFiltering _stamp _interval _distanceTravelled _memoryUsage _gravityRollError _gravityPitchError _localBundleIds _localBundleModels _localBundlePoses _transform _transformFiltered _transformGroundTruth _guess _type _wordsKeys _wordsValues _wordMatches _wordInliers _localMapKeys _localMapValues _localScanMap _refCorners _newCorners _cornerInliers ))

(defmethod rtabmap_msgs::OdomInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lost __lost) nil)
    ((:matches __matches) 0)
    ((:inliers __inliers) 0)
    ((:icpInliersRatio __icpInliersRatio) 0.0)
    ((:icpRotation __icpRotation) 0.0)
    ((:icpTranslation __icpTranslation) 0.0)
    ((:icpStructuralComplexity __icpStructuralComplexity) 0.0)
    ((:icpStructuralDistribution __icpStructuralDistribution) 0.0)
    ((:icpCorrespondences __icpCorrespondences) 0)
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    ((:features __features) 0)
    ((:localMapSize __localMapSize) 0)
    ((:localScanMapSize __localScanMapSize) 0)
    ((:localKeyFrames __localKeyFrames) 0)
    ((:localBundleOutliers __localBundleOutliers) 0)
    ((:localBundleConstraints __localBundleConstraints) 0)
    ((:localBundleTime __localBundleTime) 0.0)
    ((:keyFrameAdded __keyFrameAdded) nil)
    ((:timeEstimation __timeEstimation) 0.0)
    ((:timeParticleFiltering __timeParticleFiltering) 0.0)
    ((:stamp __stamp) 0.0)
    ((:interval __interval) 0.0)
    ((:distanceTravelled __distanceTravelled) 0.0)
    ((:memoryUsage __memoryUsage) 0)
    ((:gravityRollError __gravityRollError) 0.0)
    ((:gravityPitchError __gravityPitchError) 0.0)
    ((:localBundleIds __localBundleIds) (make-array 0 :initial-element 0 :element-type :integer))
    ((:localBundleModels __localBundleModels) ())
    ((:localBundlePoses __localBundlePoses) ())
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:transformFiltered __transformFiltered) (instance geometry_msgs::Transform :init))
    ((:transformGroundTruth __transformGroundTruth) (instance geometry_msgs::Transform :init))
    ((:guess __guess) (instance geometry_msgs::Transform :init))
    ((:type __type) 0)
    ((:wordsKeys __wordsKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wordsValues __wordsValues) ())
    ((:wordMatches __wordMatches) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wordInliers __wordInliers) (make-array 0 :initial-element 0 :element-type :integer))
    ((:localMapKeys __localMapKeys) (make-array 0 :initial-element 0 :element-type :integer))
    ((:localMapValues __localMapValues) ())
    ((:localScanMap __localScanMap) (instance sensor_msgs::PointCloud2 :init))
    ((:refCorners __refCorners) ())
    ((:newCorners __newCorners) ())
    ((:cornerInliers __cornerInliers) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lost __lost)
   (setq _matches (round __matches))
   (setq _inliers (round __inliers))
   (setq _icpInliersRatio (float __icpInliersRatio))
   (setq _icpRotation (float __icpRotation))
   (setq _icpTranslation (float __icpTranslation))
   (setq _icpStructuralComplexity (float __icpStructuralComplexity))
   (setq _icpStructuralDistribution (float __icpStructuralDistribution))
   (setq _icpCorrespondences (round __icpCorrespondences))
   (setq _covariance __covariance)
   (setq _features (round __features))
   (setq _localMapSize (round __localMapSize))
   (setq _localScanMapSize (round __localScanMapSize))
   (setq _localKeyFrames (round __localKeyFrames))
   (setq _localBundleOutliers (round __localBundleOutliers))
   (setq _localBundleConstraints (round __localBundleConstraints))
   (setq _localBundleTime (float __localBundleTime))
   (setq _keyFrameAdded __keyFrameAdded)
   (setq _timeEstimation (float __timeEstimation))
   (setq _timeParticleFiltering (float __timeParticleFiltering))
   (setq _stamp (float __stamp))
   (setq _interval (float __interval))
   (setq _distanceTravelled (float __distanceTravelled))
   (setq _memoryUsage (round __memoryUsage))
   (setq _gravityRollError (float __gravityRollError))
   (setq _gravityPitchError (float __gravityPitchError))
   (setq _localBundleIds __localBundleIds)
   (setq _localBundleModels __localBundleModels)
   (setq _localBundlePoses __localBundlePoses)
   (setq _transform __transform)
   (setq _transformFiltered __transformFiltered)
   (setq _transformGroundTruth __transformGroundTruth)
   (setq _guess __guess)
   (setq _type (round __type))
   (setq _wordsKeys __wordsKeys)
   (setq _wordsValues __wordsValues)
   (setq _wordMatches __wordMatches)
   (setq _wordInliers __wordInliers)
   (setq _localMapKeys __localMapKeys)
   (setq _localMapValues __localMapValues)
   (setq _localScanMap __localScanMap)
   (setq _refCorners __refCorners)
   (setq _newCorners __newCorners)
   (setq _cornerInliers __cornerInliers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lost
   (&optional (__lost :null))
   (if (not (eq __lost :null)) (setq _lost __lost)) _lost)
  (:matches
   (&optional __matches)
   (if __matches (setq _matches __matches)) _matches)
  (:inliers
   (&optional __inliers)
   (if __inliers (setq _inliers __inliers)) _inliers)
  (:icpInliersRatio
   (&optional __icpInliersRatio)
   (if __icpInliersRatio (setq _icpInliersRatio __icpInliersRatio)) _icpInliersRatio)
  (:icpRotation
   (&optional __icpRotation)
   (if __icpRotation (setq _icpRotation __icpRotation)) _icpRotation)
  (:icpTranslation
   (&optional __icpTranslation)
   (if __icpTranslation (setq _icpTranslation __icpTranslation)) _icpTranslation)
  (:icpStructuralComplexity
   (&optional __icpStructuralComplexity)
   (if __icpStructuralComplexity (setq _icpStructuralComplexity __icpStructuralComplexity)) _icpStructuralComplexity)
  (:icpStructuralDistribution
   (&optional __icpStructuralDistribution)
   (if __icpStructuralDistribution (setq _icpStructuralDistribution __icpStructuralDistribution)) _icpStructuralDistribution)
  (:icpCorrespondences
   (&optional __icpCorrespondences)
   (if __icpCorrespondences (setq _icpCorrespondences __icpCorrespondences)) _icpCorrespondences)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:features
   (&optional __features)
   (if __features (setq _features __features)) _features)
  (:localMapSize
   (&optional __localMapSize)
   (if __localMapSize (setq _localMapSize __localMapSize)) _localMapSize)
  (:localScanMapSize
   (&optional __localScanMapSize)
   (if __localScanMapSize (setq _localScanMapSize __localScanMapSize)) _localScanMapSize)
  (:localKeyFrames
   (&optional __localKeyFrames)
   (if __localKeyFrames (setq _localKeyFrames __localKeyFrames)) _localKeyFrames)
  (:localBundleOutliers
   (&optional __localBundleOutliers)
   (if __localBundleOutliers (setq _localBundleOutliers __localBundleOutliers)) _localBundleOutliers)
  (:localBundleConstraints
   (&optional __localBundleConstraints)
   (if __localBundleConstraints (setq _localBundleConstraints __localBundleConstraints)) _localBundleConstraints)
  (:localBundleTime
   (&optional __localBundleTime)
   (if __localBundleTime (setq _localBundleTime __localBundleTime)) _localBundleTime)
  (:keyFrameAdded
   (&optional (__keyFrameAdded :null))
   (if (not (eq __keyFrameAdded :null)) (setq _keyFrameAdded __keyFrameAdded)) _keyFrameAdded)
  (:timeEstimation
   (&optional __timeEstimation)
   (if __timeEstimation (setq _timeEstimation __timeEstimation)) _timeEstimation)
  (:timeParticleFiltering
   (&optional __timeParticleFiltering)
   (if __timeParticleFiltering (setq _timeParticleFiltering __timeParticleFiltering)) _timeParticleFiltering)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:interval
   (&optional __interval)
   (if __interval (setq _interval __interval)) _interval)
  (:distanceTravelled
   (&optional __distanceTravelled)
   (if __distanceTravelled (setq _distanceTravelled __distanceTravelled)) _distanceTravelled)
  (:memoryUsage
   (&optional __memoryUsage)
   (if __memoryUsage (setq _memoryUsage __memoryUsage)) _memoryUsage)
  (:gravityRollError
   (&optional __gravityRollError)
   (if __gravityRollError (setq _gravityRollError __gravityRollError)) _gravityRollError)
  (:gravityPitchError
   (&optional __gravityPitchError)
   (if __gravityPitchError (setq _gravityPitchError __gravityPitchError)) _gravityPitchError)
  (:localBundleIds
   (&optional __localBundleIds)
   (if __localBundleIds (setq _localBundleIds __localBundleIds)) _localBundleIds)
  (:localBundleModels
   (&rest __localBundleModels)
   (if (keywordp (car __localBundleModels))
       (send* _localBundleModels __localBundleModels)
     (progn
       (if __localBundleModels (setq _localBundleModels (car __localBundleModels)))
       _localBundleModels)))
  (:localBundlePoses
   (&rest __localBundlePoses)
   (if (keywordp (car __localBundlePoses))
       (send* _localBundlePoses __localBundlePoses)
     (progn
       (if __localBundlePoses (setq _localBundlePoses (car __localBundlePoses)))
       _localBundlePoses)))
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:transformFiltered
   (&rest __transformFiltered)
   (if (keywordp (car __transformFiltered))
       (send* _transformFiltered __transformFiltered)
     (progn
       (if __transformFiltered (setq _transformFiltered (car __transformFiltered)))
       _transformFiltered)))
  (:transformGroundTruth
   (&rest __transformGroundTruth)
   (if (keywordp (car __transformGroundTruth))
       (send* _transformGroundTruth __transformGroundTruth)
     (progn
       (if __transformGroundTruth (setq _transformGroundTruth (car __transformGroundTruth)))
       _transformGroundTruth)))
  (:guess
   (&rest __guess)
   (if (keywordp (car __guess))
       (send* _guess __guess)
     (progn
       (if __guess (setq _guess (car __guess)))
       _guess)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:wordsKeys
   (&optional __wordsKeys)
   (if __wordsKeys (setq _wordsKeys __wordsKeys)) _wordsKeys)
  (:wordsValues
   (&rest __wordsValues)
   (if (keywordp (car __wordsValues))
       (send* _wordsValues __wordsValues)
     (progn
       (if __wordsValues (setq _wordsValues (car __wordsValues)))
       _wordsValues)))
  (:wordMatches
   (&optional __wordMatches)
   (if __wordMatches (setq _wordMatches __wordMatches)) _wordMatches)
  (:wordInliers
   (&optional __wordInliers)
   (if __wordInliers (setq _wordInliers __wordInliers)) _wordInliers)
  (:localMapKeys
   (&optional __localMapKeys)
   (if __localMapKeys (setq _localMapKeys __localMapKeys)) _localMapKeys)
  (:localMapValues
   (&rest __localMapValues)
   (if (keywordp (car __localMapValues))
       (send* _localMapValues __localMapValues)
     (progn
       (if __localMapValues (setq _localMapValues (car __localMapValues)))
       _localMapValues)))
  (:localScanMap
   (&rest __localScanMap)
   (if (keywordp (car __localScanMap))
       (send* _localScanMap __localScanMap)
     (progn
       (if __localScanMap (setq _localScanMap (car __localScanMap)))
       _localScanMap)))
  (:refCorners
   (&rest __refCorners)
   (if (keywordp (car __refCorners))
       (send* _refCorners __refCorners)
     (progn
       (if __refCorners (setq _refCorners (car __refCorners)))
       _refCorners)))
  (:newCorners
   (&rest __newCorners)
   (if (keywordp (car __newCorners))
       (send* _newCorners __newCorners)
     (progn
       (if __newCorners (setq _newCorners (car __newCorners)))
       _newCorners)))
  (:cornerInliers
   (&optional __cornerInliers)
   (if __cornerInliers (setq _cornerInliers __cornerInliers)) _cornerInliers)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _lost
    1
    ;; int32 _matches
    4
    ;; int32 _inliers
    4
    ;; float32 _icpInliersRatio
    4
    ;; float32 _icpRotation
    4
    ;; float32 _icpTranslation
    4
    ;; float32 _icpStructuralComplexity
    4
    ;; float32 _icpStructuralDistribution
    4
    ;; int32 _icpCorrespondences
    4
    ;; float64[36] _covariance
    (* 8    36)
    ;; int32 _features
    4
    ;; int32 _localMapSize
    4
    ;; int32 _localScanMapSize
    4
    ;; int32 _localKeyFrames
    4
    ;; int32 _localBundleOutliers
    4
    ;; int32 _localBundleConstraints
    4
    ;; float32 _localBundleTime
    4
    ;; bool _keyFrameAdded
    1
    ;; float32 _timeEstimation
    4
    ;; float32 _timeParticleFiltering
    4
    ;; float32 _stamp
    4
    ;; float32 _interval
    4
    ;; float32 _distanceTravelled
    4
    ;; int32 _memoryUsage
    4
    ;; float32 _gravityRollError
    4
    ;; float32 _gravityPitchError
    4
    ;; int32[] _localBundleIds
    (* 4    (length _localBundleIds)) 4
    ;; rtabmap_msgs/CameraModels[] _localBundleModels
    (apply #'+ (send-all _localBundleModels :serialization-length)) 4
    ;; geometry_msgs/Pose[] _localBundlePoses
    (apply #'+ (send-all _localBundlePoses :serialization-length)) 4
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; geometry_msgs/Transform _transformFiltered
    (send _transformFiltered :serialization-length)
    ;; geometry_msgs/Transform _transformGroundTruth
    (send _transformGroundTruth :serialization-length)
    ;; geometry_msgs/Transform _guess
    (send _guess :serialization-length)
    ;; int32 _type
    4
    ;; int32[] _wordsKeys
    (* 4    (length _wordsKeys)) 4
    ;; rtabmap_msgs/KeyPoint[] _wordsValues
    (apply #'+ (send-all _wordsValues :serialization-length)) 4
    ;; int32[] _wordMatches
    (* 4    (length _wordMatches)) 4
    ;; int32[] _wordInliers
    (* 4    (length _wordInliers)) 4
    ;; int32[] _localMapKeys
    (* 4    (length _localMapKeys)) 4
    ;; rtabmap_msgs/Point3f[] _localMapValues
    (apply #'+ (send-all _localMapValues :serialization-length)) 4
    ;; sensor_msgs/PointCloud2 _localScanMap
    (send _localScanMap :serialization-length)
    ;; rtabmap_msgs/Point2f[] _refCorners
    (apply #'+ (send-all _refCorners :serialization-length)) 4
    ;; rtabmap_msgs/Point2f[] _newCorners
    (apply #'+ (send-all _newCorners :serialization-length)) 4
    ;; int32[] _cornerInliers
    (* 4    (length _cornerInliers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _lost
       (if _lost (write-byte -1 s) (write-byte 0 s))
     ;; int32 _matches
       (write-long _matches s)
     ;; int32 _inliers
       (write-long _inliers s)
     ;; float32 _icpInliersRatio
       (sys::poke _icpInliersRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _icpRotation
       (sys::poke _icpRotation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _icpTranslation
       (sys::poke _icpTranslation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _icpStructuralComplexity
       (sys::poke _icpStructuralComplexity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _icpStructuralDistribution
       (sys::poke _icpStructuralDistribution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _icpCorrespondences
       (write-long _icpCorrespondences s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _features
       (write-long _features s)
     ;; int32 _localMapSize
       (write-long _localMapSize s)
     ;; int32 _localScanMapSize
       (write-long _localScanMapSize s)
     ;; int32 _localKeyFrames
       (write-long _localKeyFrames s)
     ;; int32 _localBundleOutliers
       (write-long _localBundleOutliers s)
     ;; int32 _localBundleConstraints
       (write-long _localBundleConstraints s)
     ;; float32 _localBundleTime
       (sys::poke _localBundleTime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _keyFrameAdded
       (if _keyFrameAdded (write-byte -1 s) (write-byte 0 s))
     ;; float32 _timeEstimation
       (sys::poke _timeEstimation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _timeParticleFiltering
       (sys::poke _timeParticleFiltering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stamp
       (sys::poke _stamp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _interval
       (sys::poke _interval (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceTravelled
       (sys::poke _distanceTravelled (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _memoryUsage
       (write-long _memoryUsage s)
     ;; float32 _gravityRollError
       (sys::poke _gravityRollError (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gravityPitchError
       (sys::poke _gravityPitchError (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32[] _localBundleIds
     (write-long (length _localBundleIds) s)
     (dotimes (i (length _localBundleIds))
       (write-long (elt _localBundleIds i) s)
       )
     ;; rtabmap_msgs/CameraModels[] _localBundleModels
     (write-long (length _localBundleModels) s)
     (dolist (elem _localBundleModels)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _localBundlePoses
     (write-long (length _localBundlePoses) s)
     (dolist (elem _localBundlePoses)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; geometry_msgs/Transform _transformFiltered
       (send _transformFiltered :serialize s)
     ;; geometry_msgs/Transform _transformGroundTruth
       (send _transformGroundTruth :serialize s)
     ;; geometry_msgs/Transform _guess
       (send _guess :serialize s)
     ;; int32 _type
       (write-long _type s)
     ;; int32[] _wordsKeys
     (write-long (length _wordsKeys) s)
     (dotimes (i (length _wordsKeys))
       (write-long (elt _wordsKeys i) s)
       )
     ;; rtabmap_msgs/KeyPoint[] _wordsValues
     (write-long (length _wordsValues) s)
     (dolist (elem _wordsValues)
       (send elem :serialize s)
       )
     ;; int32[] _wordMatches
     (write-long (length _wordMatches) s)
     (dotimes (i (length _wordMatches))
       (write-long (elt _wordMatches i) s)
       )
     ;; int32[] _wordInliers
     (write-long (length _wordInliers) s)
     (dotimes (i (length _wordInliers))
       (write-long (elt _wordInliers i) s)
       )
     ;; int32[] _localMapKeys
     (write-long (length _localMapKeys) s)
     (dotimes (i (length _localMapKeys))
       (write-long (elt _localMapKeys i) s)
       )
     ;; rtabmap_msgs/Point3f[] _localMapValues
     (write-long (length _localMapValues) s)
     (dolist (elem _localMapValues)
       (send elem :serialize s)
       )
     ;; sensor_msgs/PointCloud2 _localScanMap
       (send _localScanMap :serialize s)
     ;; rtabmap_msgs/Point2f[] _refCorners
     (write-long (length _refCorners) s)
     (dolist (elem _refCorners)
       (send elem :serialize s)
       )
     ;; rtabmap_msgs/Point2f[] _newCorners
     (write-long (length _newCorners) s)
     (dolist (elem _newCorners)
       (send elem :serialize s)
       )
     ;; int32[] _cornerInliers
     (write-long (length _cornerInliers) s)
     (dotimes (i (length _cornerInliers))
       (write-long (elt _cornerInliers i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _lost
     (setq _lost (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _matches
     (setq _matches (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _inliers
     (setq _inliers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _icpInliersRatio
     (setq _icpInliersRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _icpRotation
     (setq _icpRotation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _icpTranslation
     (setq _icpTranslation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _icpStructuralComplexity
     (setq _icpStructuralComplexity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _icpStructuralDistribution
     (setq _icpStructuralDistribution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _icpCorrespondences
     (setq _icpCorrespondences (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _features
     (setq _features (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localMapSize
     (setq _localMapSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localScanMapSize
     (setq _localScanMapSize (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localKeyFrames
     (setq _localKeyFrames (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localBundleOutliers
     (setq _localBundleOutliers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _localBundleConstraints
     (setq _localBundleConstraints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _localBundleTime
     (setq _localBundleTime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _keyFrameAdded
     (setq _keyFrameAdded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _timeEstimation
     (setq _timeEstimation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _timeParticleFiltering
     (setq _timeParticleFiltering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stamp
     (setq _stamp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _interval
     (setq _interval (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceTravelled
     (setq _distanceTravelled (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _memoryUsage
     (setq _memoryUsage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _gravityRollError
     (setq _gravityRollError (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gravityPitchError
     (setq _gravityPitchError (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32[] _localBundleIds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localBundleIds (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _localBundleIds i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; rtabmap_msgs/CameraModels[] _localBundleModels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localBundleModels (let (r) (dotimes (i n) (push (instance rtabmap_msgs::CameraModels :init) r)) r))
     (dolist (elem- _localBundleModels)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _localBundlePoses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localBundlePoses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _localBundlePoses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; geometry_msgs/Transform _transformFiltered
     (send _transformFiltered :deserialize buf ptr-) (incf ptr- (send _transformFiltered :serialization-length))
   ;; geometry_msgs/Transform _transformGroundTruth
     (send _transformGroundTruth :deserialize buf ptr-) (incf ptr- (send _transformGroundTruth :serialization-length))
   ;; geometry_msgs/Transform _guess
     (send _guess :deserialize buf ptr-) (incf ptr- (send _guess :serialization-length))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _wordsKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordsKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wordsKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; rtabmap_msgs/KeyPoint[] _wordsValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordsValues (let (r) (dotimes (i n) (push (instance rtabmap_msgs::KeyPoint :init) r)) r))
     (dolist (elem- _wordsValues)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _wordMatches
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordMatches (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wordMatches i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _wordInliers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wordInliers (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wordInliers i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _localMapKeys
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localMapKeys (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _localMapKeys i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; rtabmap_msgs/Point3f[] _localMapValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localMapValues (let (r) (dotimes (i n) (push (instance rtabmap_msgs::Point3f :init) r)) r))
     (dolist (elem- _localMapValues)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/PointCloud2 _localScanMap
     (send _localScanMap :deserialize buf ptr-) (incf ptr- (send _localScanMap :serialization-length))
   ;; rtabmap_msgs/Point2f[] _refCorners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _refCorners (let (r) (dotimes (i n) (push (instance rtabmap_msgs::Point2f :init) r)) r))
     (dolist (elem- _refCorners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rtabmap_msgs/Point2f[] _newCorners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _newCorners (let (r) (dotimes (i n) (push (instance rtabmap_msgs::Point2f :init) r)) r))
     (dolist (elem- _newCorners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _cornerInliers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cornerInliers (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cornerInliers i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rtabmap_msgs::OdomInfo :md5sum-) "52076ef68d0b87422f3983864c204b62")
(setf (get rtabmap_msgs::OdomInfo :datatype-) "rtabmap_msgs/OdomInfo")
(setf (get rtabmap_msgs::OdomInfo :definition-)
      "
Header header

bool lost
int32 matches
int32 inliers
float32 icpInliersRatio
float32 icpRotation
float32 icpTranslation
float32 icpStructuralComplexity
float32 icpStructuralDistribution
int32 icpCorrespondences
float64[36] covariance
int32 features
int32 localMapSize
int32 localScanMapSize
int32 localKeyFrames
int32 localBundleOutliers
int32 localBundleConstraints
float32 localBundleTime
bool keyFrameAdded
float32 timeEstimation
float32 timeParticleFiltering
float32 stamp
float32 interval
float32 distanceTravelled
int32 memoryUsage # MB
float32 gravityRollError
float32 gravityPitchError

# Local bundle camera ids
int32[] localBundleIds

# Local bundle camera models
CameraModels[] localBundleModels

# Local bundle camera poses
geometry_msgs/Pose[] localBundlePoses

geometry_msgs/Transform transform
geometry_msgs/Transform transformFiltered
geometry_msgs/Transform transformGroundTruth
geometry_msgs/Transform guess

# 0=F2M, 1=F2F
int32 type

# F2M odometry
#   std::multimap<int, cv::KeyPoint> words;
#   std::vector<int> wordMatches;
#   std::vector<int> wordInliers;
int32[] wordsKeys
KeyPoint[] wordsValues
int32[] wordMatches
int32[] wordInliers
int32[] localMapKeys
Point3f[] localMapValues

# local scan map data
sensor_msgs/PointCloud2 localScanMap

# F2F odometry
#   std::vector<cv::Point2f> refCorners;
#   std::vector<cv::Point2f> newCorners;
#   std::vector<int> cornerInliers;
Point2f[] refCorners
Point2f[] newCorners
int32[] cornerInliers


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
MSG: rtabmap_msgs/CameraModels

CameraModel[] models


================================================================================
MSG: rtabmap_msgs/CameraModel

sensor_msgs/CameraInfo camera_info
geometry_msgs/Transform local_transform


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

")



(provide :rtabmap_msgs/OdomInfo "52076ef68d0b87422f3983864c204b62")


