#! /usr/bin/env python3
# encoding:utf-8
import sys
import os
import time
import threading
import traceback
from PyQt5.QtWidgets import QMainWindow, QApplication

from myagv_window import Ui_MainWindow as myAGV_window

lock = False


class Myagv_Window(myAGV_window, QMainWindow):
    def __init__(self):
        super(Myagv_Window, self).__init__()
        self.setupUi(self)
        self.setWindowTitle('myAGV Test Tool')
        self.ros = False
        self.run_launch = ""
        self.open_ros.clicked.connect(self.open)
        self.teleop_button.clicked.connect(self.myagv_teleop)
        self.mapping_button.clicked.connect(self.mapping)
        self.save_mapping.clicked.connect(self.save_map)
        self.modify_file.clicked.connect(self.modify_launch_file)
        self.navigation_button.clicked.connect(self.navigation)
        self.handle_control.clicked.connect(self.myagv_ps2)
        self.close_button.clicked.connect(self.close_teleop)

    def open(self):
        current_time = self.get_current_time()
        mes = '打开slam激光扫描.....'
        self.textBrowser.append('[' + str(current_time) + ']' + ' ' + mes)
        #if self.ros:
            #print("ros is opened")
            #return
        t1 = threading.Thread(target=self.ross)
        t1.setDaemon(True)
        t1.start()
        # self.ros = True

    def myagv_teleop(self):
        current_time = self.get_current_time()
        mes = '开始键盘控制......'
        try:
            global lock
            while lock:
                pass
            lock = True
            if self.comboBox.currentText() == '键盘控制':
                self.textBrowser.append('[' + str(current_time) + ']' + ' ' + mes)
                t1 = threading.Thread(target=self.open_teleop)
                t1.setDaemon(True)
                t1.start()
            lock = False
        except Exception as e:
            e = traceback.format_exc()
            with open("/home/ubuntu/error.log", "a") as f:
                f.write(e)
            self.textBrowser.append('[' + str(current_time) + ']' + ' '+ str(e))

    def get_current_time(self):
        current_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime(time.time()))
        return current_time
    
    def close_teleop(self):
        current_time = self.get_current_time()
        mes = '关闭键盘控制......'
        try:
            global lock
            while lock:
                pass
            lock = True
            self.run_launch = "myagv_teleop.launch"
            self.textBrowser.append('[' + str(current_time) + ']' + ' ' + mes)
            t1 = threading.Thread(target=self.close_tel)
            t1.setDaemon(True)
            t1.start()
            lock = False
        except Exception as e:
            e = traceback.format_exc()
            with open("/home/ubuntu/error.log", "a") as f:
                f.write(e)
            self.textBrowser.append('[' + str(current_time) + ']' + ' '+ str(e))

    def myagv_ps2(self):
        current_time = self.get_current_time()
        mes = '开始手柄控制.......'
        try:
            global lock
            while lock:
                pass
            lock = True
            if self.comboBox.currentText() == '手柄控制':
                self.textBrowser.append('[' + str(current_time) + ']' + ' ' + mes)
                t1 = threading.Thread(target=self.ps2)
                t1.setDaemon(True)
                t1.start()
            lock = False
        except Exception as e:
            e = traceback.format_exc()
            with open("/home/ubuntu/error.log", "a") as f:
                f.write(e)
            self.textBrowser.append('[' + str(current_time) + ']' + ' '+ str(e))

    def mapping(self):
        current_time = self.get_current_time()
        mes = '开始实时建图,请打开键盘控制......'
        try:
            global lock
            while lock:
                pass
            lock = True
            if self.comboBox.currentText() == '实时建图':
                self.textBrowser.append('[' + str(current_time) + ']' + ' ' + mes)
                t1 = threading.Thread(target=self.set_mapping)
                t1.setDaemon(True)
                t1.start()
            lock = False
        except Exception as e:
            e = traceback.format_exc()
            with open("/home/ubuntu/error.log", "a") as f:
                f.write(e)
            self.textBrowser.append('[' + str(current_time) + ']' + ' ' + str(e))

    def save_map(self):
        current_time = self.get_current_time()
        mes = '开始保存建图......'
        try:
            global lock
            while lock:
                pass
            lock = True
            if self.comboBox.currentText() == '保存建图':
                self.textBrowser.append('[' + str(current_time) + ']' + ' '+ '保存成功!')
                t1 = threading.Thread(target=self.save)
                t1.setDaemon(True)
                t1.start()
            lock = False
        except Exception as e:
            e = traceback.format_exc()
            with open("/home/ubuntu/error.log", "a") as f:
                f.write(e)
            self.textBrowser.append('[' + str(current_time) + ']' +' '+ str(e))
    
    def modify_launch_file(self):
        current_time = self.get_current_time()
        try:
            filename = '/home/ubuntu/myagv_ros/src/myagv_navigation/launch/navigation_active.launch'
            f = open(filename, 'r')
            new=[]
            for line in f:
                new.append(line)
            new[4] = '    <arg name="map" default="my_map.yaml" />\n'
            f.close()

            f = open(filename,'w')
            for n in new:
                f.write(n)
            f.close()
            self.textBrowser.append('[' + str(current_time) + ']' + ' ' + '修改成功!')
        except Exception as e:
            e = traceback.format_exc()
            with open("/home/ubuntu/error.log", "a") as f:
                f.write(e)
            self.textBrowser.append('[' + str(current_time) + ']' + ' ' + str(e))

    def navigation(self):
        current_time = self.get_current_time()
        mes = '开始实时导航......'
        try:
            global lock
            while lock:
                pass
            lock = True
            if self.comboBox.currentText() == '实时导航':
                self.textBrowser.append('[' + str(current_time) + ']' + ' ' + mes)
                t1 = threading.Thread(target=self.start_navigation)
                t1.setDaemon(True)
                t1.start()
            lock = False
        except Exception as e:
            e = traceback.format_exc()
            with open("/home/ubuntu/error.log", "a") as f:
                f.write(e)
            self.textBrowser.append('[' + str(current_time) + ']' +' '+ str(e))

    def ross(self):
        os.system("roslaunch ~/myagv_ros/src/myagv_odometry/launch/myagv_active.launch")

    def open_teleop(self):
        os.system("gnome-terminal -e 'bash -c \"cd /home/ubuntu; roslaunch ~/myagv_ros/src/myagv_teleop/launch/myagv_teleop.launch; exec bash\"'")

    def close_tel(self):
        os.system("ps -ef | grep -E " + self.run_launch +
                  " | grep -v 'grep' | awk '{print $2}' | xargs kill -9")

    def ps2(self):
        os.system("gnome-terminal -e 'bash -c \"roslaunch ~/myagv_ros/src/myagv_ps2/launch/myagv_ps2.launch; exec bash\"'")

    def set_mapping(self):
        os.system("roslaunch ~/myagv_ros/src/myagv_navigation/launch/myagv_slam_laser.launch")
        
    def save(self):
        os.system("rosrun map_server map_saver")
        os.system("cp /home/ubuntu/map.pgm /home/ubuntu/myagv_ros/src/myagv_navigation/map/my_map.pgm && cp /home/ubuntu/map.yaml /home/ubuntu/myagv_ros/src/myagv_navigation/map/my_map.yaml")
        
    def start_navigation(self):
        os.system("roslaunch ~/myagv_ros/src/myagv_navigation/launch/navigation_active.launch")


if __name__ == '__main__':
    app = QApplication(sys.argv)
    main_window = Myagv_Window()
    main_window.show()
    sys.exit(app.exec_())
