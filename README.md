# myagv_ros
myAGV ROS package
![myAGV202306](https://github.com/user-attachments/assets/e4b5cbd8-9b46-41fb-9ee5-f34ef13c7019)

## Package Download and Install

```bash
$ git clone -b myagv_ros_2023JN https://github.com/elephantrobotics/myagv_ros.git myagv_ros/src
$ cd ~/myagv_ros
$ catkin_make
$ source devel/setup.bash
```

## LIDAR

First, check if the LiDAR is powered on. If it is not turned on, the terminal needs to power on the LiDAR through a script file. If the LiDAR is powered on, you can skip the step of powering on the LiDAR.

```
cd myagv_ros/src/myagv_odometry/scripts
./start_ydlidar.sh
```

## gmapping

```
roslaunch myagv_odometry myagv_active.launch
```

```
roslaunch myagv_navigation myagv_slam_laser.launch
```

```
roslaunch myagv_teleop myagv_teleop.launch
```

```
cd ~/myagv_ros/src/myagv_navigation/map
rosrun map_server map_saver
```

## navigation

```
roslaunch myagv_odometry myagv_active.launch
```

```
roslaunch myagv_navigation multipoint_navigation_active.launch
```

## rtabmap mapping

Prerequisite: Only the JN version is compatible with this algorithm, and you need to purchase an additional astra pro2 depth camera

```
cd myagv_ros/src/myagv_odometry/scripts
./start_ydlidar.sh
```

```
roslaunch myagv_odometry myagv_active.launch
```

```
roslaunch orbbec_camera astra_pro2.launch
```

```
roslaunch myagv_navigation rtabmap_mapping.launch
```

```
roslaunch myagv_teleop myagv_teleop.launch
```

## rtabmap mapping and navigation

```
roslaunch myagv_odometry myagv_active.launch
```

```
roslaunch orbbec_camera astra_pro2.launch
```

```
roslaunch myagv_navigation 3d_navigation_active.launch
```
![navigation_rtabmap2](https://github.com/user-attachments/assets/f2c57196-4441-4b76-935d-d34b7a6c2196)

