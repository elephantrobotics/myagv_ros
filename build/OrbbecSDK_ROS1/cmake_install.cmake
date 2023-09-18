# Install script for directory: /home/er/myagv_ros/src/OrbbecSDK_ROS1

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/er/myagv_ros/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/msg" TYPE FILE FILES
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/msg/DeviceInfo.msg"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/msg/Extrinsics.msg"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/msg/Metadata.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/srv" TYPE FILE FILES
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/GetBool.srv"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/SetBool.srv"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/GetCameraInfo.srv"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/GetCameraParams.srv"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/GetDeviceInfo.srv"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/GetInt32.srv"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/GetString.srv"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/SetInt32.srv"
    "/home/er/myagv_ros/src/OrbbecSDK_ROS1/srv/SetString.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES "/home/er/myagv_ros/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_camera-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/er/myagv_ros/devel/include/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/er/myagv_ros/devel/share/roseus/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/er/myagv_ros/devel/share/common-lisp/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/er/myagv_ros/devel/share/gennodejs/ros/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/er/myagv_ros/devel/lib/python3/dist-packages/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/er/myagv_ros/devel/lib/python3/dist-packages/orbbec_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/er/myagv_ros/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_camera.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES "/home/er/myagv_ros/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_camera-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera/cmake" TYPE FILE FILES
    "/home/er/myagv_ros/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_cameraConfig.cmake"
    "/home/er/myagv_ros/build/OrbbecSDK_ROS1/catkin_generated/installspace/orbbec_cameraConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE FILE FILES "/home/er/myagv_ros/src/OrbbecSDK_ROS1/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/er/myagv_ros/devel/lib/liborbbec_camera.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so"
         OLD_RPATH "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/lib/arm64:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_calib3d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_core:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_features2d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_flann:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_highgui:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ml:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_photo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stitching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_video:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videoio:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_aruco:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ccalib:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_datasets:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dpm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_face:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_freetype:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hdf:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hfs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_img_hash:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_optflow:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_plot:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_quality:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_reg:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_rgbd:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_saliency:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_shape:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stereo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_structured_light:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_text:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_tracking:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videostab:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_viz:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xphoto:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/er/myagv_ros/devel/lib/liborbbec_camera_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so"
         OLD_RPATH "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/lib/arm64:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_calib3d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_core:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_features2d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_flann:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_highgui:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ml:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_photo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stitching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_video:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videoio:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_aruco:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ccalib:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_datasets:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dpm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_face:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_freetype:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hdf:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hfs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_img_hash:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_optflow:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_plot:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_quality:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_reg:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_rgbd:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_saliency:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_shape:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stereo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_structured_light:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_text:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_tracking:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videostab:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_viz:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xphoto:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborbbec_camera_nodelet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/er/myagv_ros/devel/lib/orbbec_camera/orbbec_camera_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node"
         OLD_RPATH "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/lib/arm64:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_calib3d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_core:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_features2d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_flann:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_highgui:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ml:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_photo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stitching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_video:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videoio:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_aruco:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ccalib:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_datasets:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dpm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_face:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_freetype:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hdf:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hfs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_img_hash:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_optflow:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_plot:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_quality:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_reg:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_rgbd:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_saliency:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_shape:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stereo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_structured_light:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_text:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_tracking:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videostab:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_viz:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xphoto:/opt/ros/noetic/lib:/home/er/myagv_ros/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/orbbec_camera_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/er/myagv_ros/devel/lib/orbbec_camera/list_devices_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node"
         OLD_RPATH "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/lib/arm64:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_calib3d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_core:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_features2d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_flann:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_highgui:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ml:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_photo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stitching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_video:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videoio:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_aruco:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ccalib:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_datasets:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dpm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_face:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_freetype:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hdf:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hfs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_img_hash:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_optflow:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_plot:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_quality:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_reg:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_rgbd:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_saliency:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_shape:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stereo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_structured_light:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_text:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_tracking:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videostab:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_viz:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xphoto:/opt/ros/noetic/lib:/home/er/myagv_ros/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_devices_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/er/myagv_ros/devel/lib/orbbec_camera/ob_cleanup_shm_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node"
         OLD_RPATH "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/lib/arm64:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_calib3d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_core:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_features2d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_flann:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_highgui:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ml:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_photo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stitching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_video:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videoio:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_aruco:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ccalib:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_datasets:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dpm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_face:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_freetype:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hdf:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hfs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_img_hash:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_optflow:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_plot:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_quality:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_reg:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_rgbd:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_saliency:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_shape:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stereo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_structured_light:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_text:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_tracking:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videostab:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_viz:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xphoto:/opt/ros/noetic/lib:/home/er/myagv_ros/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/ob_cleanup_shm_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/er/myagv_ros/devel/lib/orbbec_camera/list_depth_work_mode_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node"
         OLD_RPATH "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/lib/arm64:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_calib3d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_core:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_features2d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_flann:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_highgui:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ml:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_photo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stitching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_video:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videoio:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_aruco:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ccalib:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_datasets:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dpm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_face:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_freetype:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hdf:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hfs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_img_hash:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_optflow:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_plot:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_quality:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_reg:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_rgbd:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_saliency:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_shape:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stereo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_structured_light:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_text:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_tracking:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videostab:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_viz:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xphoto:/opt/ros/noetic/lib:/home/er/myagv_ros/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_depth_work_mode_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera" TYPE EXECUTABLE FILES "/home/er/myagv_ros/devel/lib/orbbec_camera/list_camera_profile_mode_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node"
         OLD_RPATH "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/lib/arm64:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_calib3d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_core:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_features2d:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_flann:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_highgui:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgcodecs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_imgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ml:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_photo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stitching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_video:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videoio:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_aruco:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bgsegm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_bioinspired:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ccalib:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_datasets:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_objdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dnn_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_dpm:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_face:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_freetype:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_fuzzy:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hdf:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_hfs:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_img_hash:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_line_descriptor:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_optflow:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_phase_unwrapping:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_plot:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_quality:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_reg:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_rgbd:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_saliency:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_shape:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_stereo:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_structured_light:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_superres:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_surface_matching:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_text:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_tracking:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_videostab:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_viz:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_ximgproc:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xobjdetect:/home/er/myagv_ros/src/OrbbecSDK_ROS1/opencv_xphoto:/opt/ros/noetic/lib:/home/er/myagv_ros/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orbbec_camera/list_camera_profile_mode_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orbbec_camera/" TYPE DIRECTORY FILES "/home/er/myagv_ros/src/OrbbecSDK_ROS1/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orbbec_camera/" TYPE DIRECTORY FILES "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE DIRECTORY FILES "/home/er/myagv_ros/src/OrbbecSDK_ROS1/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE DIRECTORY FILES "/home/er/myagv_ros/src/OrbbecSDK_ROS1/config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/orbbec_camera" TYPE FILE FILES "/home/er/myagv_ros/src/OrbbecSDK_ROS1/nodelet_plugins.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/" TYPE DIRECTORY FILES "/home/er/myagv_ros/src/OrbbecSDK_ROS1/SDK/lib/arm64/" FILES_MATCHING REGEX "/[^/]*\\.so$" REGEX "/[^/]*\\.so\\.[^/]*$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/" TYPE DIRECTORY FILES "/" FILES_MATCHING REGEX "/[^/]*\\.so$" REGEX "/[^/]*\\.so\\.[^/]*$")
endif()

