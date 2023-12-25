#!/bin/bash
python_script="/home/er/myagv_ros/src/myagv_odometry/scripts/close_ydlidar.py"

if [ -f "$python_script" ];then
    python "$python_script"
else
    echo "Python file does not exist"
fi
