cmake_minimum_required(VERSION 3.0.2)
project(auto_dock)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  move_base_msgs
  roscpp
  rospy
  std_msgs
  tf
)

find_package(PkgConfig REQUIRED)
pkg_check_modules(JSONCPP jsoncpp)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES auto_dock
#  CATKIN_DEPENDS actionlib move_base_msgs roscpp rospy std_msgs
#  DEPENDS system_lib
)

include_directories(
   include
  ${catkin_INCLUDE_DIRS}
  ${JSONCPP_LIBRARIES}
)

install(PROGRAMS
       src/record_location.py
DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

add_executable( record_pose src/record_pose.cpp)
target_link_libraries(record_pose
  ${catkin_LIBRARIES}
  ${JSONCPP_LIBRARIES}
)

add_executable( send_goal src/send_goal.cpp)
target_link_libraries(send_goal
  ${catkin_LIBRARIES}
)

add_executable( goal_sending src/goal_sending.cpp)
target_link_libraries(goal_sending
  ${catkin_LIBRARIES}
  ${JSONCPP_LIBRARIES}
)


add_executable( goal_sending_0 src/goal_sending_0.cpp)
target_link_libraries(goal_sending_0
  ${catkin_LIBRARIES}
  ${JSONCPP_LIBRARIES}
)

add_executable( openfile src/openfile.cpp)
target_link_libraries(openfile 
  ${catkin_LIBRARIES}
  ${JSONCPP_LIBRARIES}
)
