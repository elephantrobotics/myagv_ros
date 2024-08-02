#!/bin/bash
sudo chmod a+rw /dev/ttyS0
python_script="/home/er/myagv_ros/src/myagv_odometry/scripts/start_ydlidar.py"

if [ -f "$python_script" ];then
    python "$python_script"
else
    echo "Python file does not exist"
fi
