# myagv_ros
myAGV ROS package
![PI-main](https://github.com/user-attachments/assets/06a0edeb-bdf2-413d-b6fe-cdb89ce46524)

## Package Download and Install

```bash
$ git clone https://github.com/elephantrobotics/myagv_ros.git myagv_ros/src
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
roslaunch myagv_navigation navigation_active.launch
```

## Update to new version

```
cd ~/myagv_ros/src

git pull

cd ..

catkin_make
```

