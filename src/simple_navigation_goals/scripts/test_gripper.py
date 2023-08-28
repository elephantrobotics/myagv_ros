from pymycobot import MyCobot
from pymycobot.utils import get_port_list
import time

#mc = MyCobot("COM32")
plist = get_port_list()
mc = MyCobot(plist[0],115200)

mc.set_servo_data(7,16,150)
time.sleep(0.5)
mc.set_servo_data(7,34,100)
time.sleep(0.5)
mc.set_servo_data(7,35,200)
time.sleep(0.5)


a= mc.get_servo_data(7,16)
time.sleep(0.5)

print(a)
b = mc.get_servo_data(7,35)
time.sleep(0.5)

print(b)

c = mc.get_servo_data(7,34)
time.sleep(0.5)

print(c)
