import Jetson.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM)
time.sleep(0.01)
GPIO.setup(20,GPIO.OUT)
time.sleep(0.01)
GPIO.output(20,1)
