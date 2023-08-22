#coding=UTF-8
import socket
import fcntl
import struct
import time

from pymycobot.mycobot import MyCobot
from pymycobot.mycobotsocket import MyCobotSocket
from pymycobot.utils import get_port_list

# 抓取点上方

pick_top = [
    [-117.68, 13.09, -7.82, 2.46, 86.3, -30.14],       #P1点
    [-73.91, 4.48, 8.96, -0.43, 72.24, 13.88],       #P2点
    [-106.96, 33.39, -34.8, 3.86, 79.18, -15.38],     #P3点
    [-74.61, 35.77, -39.63, -1.49, 86.04, 14.85]         #P4点
]

# 抓取点
pick_coords = [
    [-117.68, 16.87, 12.91, 2.98, 60.55, -30.76],       #P1点
    [-73.91, 9.14, 22.5, -0.52, 54.4, 14.41],       #P2点
    [-106.96, 33.39, -14.06, 3.86, 58.53, -16.25],      #P3点
    [-74.61, 35.77, -18.01, -1.49, 65.47, 14.85]         #P4点
]
# 放置过渡点
place_init = [85.42, -43.68, 21.26, -2.54, 34.54, 0]

# 放置点
place_coords = [
    [51.41, 20.91, -21.18, 0.26, 47.01, 0],
    [82.17, 9.49, -10.63, -1.31, 62.87, 0],
    [112.23, 17.92, -15.38, -1.49, 56.25, 0]
]

# 放取过渡点
place_top = [
    [51.94, 35.5, -65.03, 0.79, 79.89, 0.35],
    [81.73, 20.21, -47.54, -1.05, 90.52, 0.26],
    [111.7, 29.09, -55.37, -1.49, 87.18, 0.0],
    [51.94, 35.5, -65.03, 0.79, 79.89, 0.35]
]

def pick():
    mc.send_angles([0,0,0,0,0,0], 60)
    time.sleep(2)
    mc.set_gripper_value(55, 30)
    time.sleep(1)
    for i in range(4):
        mc.send_angles(pick_top[i], 50)
        time.sleep(4)
        mc.send_angles(pick_coords[i], 40)
        time.sleep(3)
        mc.set_gripper_value(30, 30)
        time.sleep(1)
        mc.send_angles(pick_top[i], 50)
        time.sleep(3)
        mc.send_angles(place_init, 50)
        time.sleep(4)
        if i == 3:
            mc.send_angles(place_coords[0], 40)
        else:
            mc.send_angles(place_coords[i], 40)
        time.sleep(3)
        mc.set_gripper_value(55, 30)
        time.sleep(1)
        mc.send_angles(place_top[i],40)
        time.sleep(2)
        mc.send_angles([0,0,0,0,0,0], 40)
        time.sleep(3)
    mc.send_angles([85.42, 11.68, -25.46, 1.93, 86.13, 0], 50)
    time.sleep(1)
    mc.set_gripper_value(30, 30)
    print("finish")

if __name__ == '__main__':
    plist = get_port_list()
    mc = MyCobot(plist[0],115200)
    print(plist)
    time.sleep(0.5)
    mc.send_angles([85.42, 11.68, -25.46, 1.93, 86.13, 0],50)
    #mc.send_angles([-109.86, 47.9, -50.88, -1.4, 90.87, -18.19], 50)
    time.sleep(1)
    mc.set_gripper_value(40, 30)
    time.sleep(1)
    print(mc.get_angles())
    pick()
 

        
