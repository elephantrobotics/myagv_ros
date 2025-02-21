import pygame
import sys
import time

pygame.init()
pygame.joystick.init()
if pygame.joystick.get_count() > 0:
    joystick = pygame.joystick.Joystick(0)  
    joystick.init()
    while 1:
        print("长按MODE键进入控制模式,MODE灯亮红灯,即可关闭此程序")
        time.sleep(1)
else:
    print("没有检测到手柄")
    pygame.quit()
    sys.exit()