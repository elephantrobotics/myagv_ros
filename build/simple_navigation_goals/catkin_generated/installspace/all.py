import os
import rospy
import subprocess
import signal
import time


cmd = 'python pose_publisher.py'
os.system(cmd)
cmd = 'python map_navigation1.py'
os.system(cmd)
cmd = 'python map_navigation2.py'
os.system(cmd)
cmd = 'python test_auto_charing.py'
os.system(cmd)
cmd = 'python map_navigation3.py'
os.system(cmd)
cmd = 'python map_navigation4.py'
os.system(cmd)
cmd = 'python test_auto_charing.py'
os.system(cmd)
cmd = 'python pose_publisher.py'
os.system(cmd)

#os.system("pkill -f roslaunch") 
#os.killpg(os.getpgid(launch_proc.pid), signal.SIGINT)

