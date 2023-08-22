#!/usr/bin/env python
#coding: utf-8


import sys
import rospy
from PyQt5.QtWidgets import QWidget,QApplication,QLabel,QHBoxLayout,QVBoxLayout,QPushButton,QLineEdit,QTextEdit,QCheckBox
from geometry_msgs.msg import PoseStamped
import json
import os
import tf
import rospkg

class  LocationRecorder(QWidget):
      def __init__(self):
            super(LocationRecorder,self).__init__()
            self.init_ui()
            self.current_robot_pose = None
            self.robot_record_pose = None
            self.package_path = None
            self.init_rospack()
            self.setGeometry(300, 300, 800, 800) 
            self.setWindowTitle('charging pile location') 
            self.tf_listener = tf.TransformListener()
            quit = QPushButton('Close', self)            
            quit.setGeometry(680, 650, 90, 90)           
            quit.setStyleSheet("background-color: red")  
            quit.clicked.connect(self.close)             
            quit.clicked.connect(self.close) 

            self.show()
      
      def init_rospack(self):
            rospack = rospkg.RosPack()
            rospack.list()
            try:
                  self.package_path = rospack.get_path('auto_dock')
            except:
                  print("Could not find package auto_dock")
                  exit(1)
            print(self.package_path)
            

      def init_ui(self):
            self.layout = QVBoxLayout()
            self.order_layout = QHBoxLayout()
            self.order_layout.addWidget(QLabel("charging pile id"))
            self.order_edit = QLineEdit("")
            self.order_layout.addWidget(self.order_edit)

            self.text_content = QTextEdit()
            self.text_content.setEnabled(False)

            self.record_layout = QHBoxLayout()
            self.receive_button = QPushButton("fetch location")
            self.record_button = QPushButton("record location")
            self.record_layout.addWidget(self.receive_button)
            self.record_layout.addWidget(self.record_button)

            self.layout.addLayout(self.order_layout)
            self.layout.addWidget(self.text_content)
            self.layout.addLayout(self.record_layout)
            self.setLayout(self.layout)

            self.record_button.clicked.connect(self.record)
            self.receive_button.clicked.connect(self.receive)

      def record(self):
            order = self.order_edit.text()
            try:
                  order = int(order)
            except:
                  return
            
            new_record = {
                  "order" : order,
                  "robot_pose" : self.robot_record_pose
            }

            os.system("mkdir -p {}/data".format(self.package_path))
            with open("{}/data/{}.json".format(self.package_path,order),'w+') as out:
                  json.dump(new_record,out,indent=4)

      def listen_tf(self):
            try:
                  (pos,ori) = self.tf_listener.lookupTransform("map","base_footprint",rospy.Duration(0.0))
                  msg_dict = {
                        "pos_x" : pos[0],
                        "pos_y" : pos[1],
                        "pos_z" : pos[2],
                        "ori_x" : ori[0],
                        "ori_y" : ori[1],
                        "ori_z" : ori[2],
                        "ori_w":  ori[3]
                  }
                  self.current_robot_pose = msg_dict
                  return True
            except tf.Exception as e:
                  print "listen to tf failed"
                  return False
            

      def receive(self):
            while not rospy.is_shutdown() and not self.listen_tf():
                  rospy.sleep(1.0)
            self.robot_record_pose = self.current_robot_pose
            display_msg = "Robot:\n" + json.dumps(self.robot_record_pose,indent=4) + "\n"

            self.text_content.setText(display_msg)



if  __name__ == "__main__":
      app = QApplication(sys.argv)
      rospy.init_node("record_location")
      lr = LocationRecorder()
      sys.exit(app.exec_())