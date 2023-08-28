# coding=utf8
from pickle import TRUE

import math
import time
import threading
import numpy as np
import aruco_detector

import rospy
from std_msgs.msg import Int8
from geometry_msgs.msg import Twist

DETECT = False

aruco_detector_res = None
ids = None
_id_get = 0

def main():
    try:
        print ("The main process would be " + str(main_process(first_dir = 1)) )
    except rospy.exceptions.ROSException as e:
        print("Node has already been initialized, do nothing")

rospy.init_node('qcode_detect', anonymous=True)
rate = rospy.Rate(30)

pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

time.sleep(1)

States = ['first point ', 'first point back', 'second point back', 'second point']

def movelittle():
    print("once")

def pub_vel(x, y , theta):
    twist = Twist()

    twist.linear.x = x;
    twist.linear.y = y;
    twist.linear.z = 0
    twist.angular.x = 0;
    twist.angular.y = 0;
    twist.angular.z = theta
    pub.publish(twist)


def stop():
    pub_vel(0,0,0)

def processMovements(_state,_detect_res, z_target):
    kp = 0.1
    default_x_vel = 0.1

    z_dis = _detect_res[0][2]
    z_differ = z_target - abs(z_dis)
    print(z_dis, z_differ)

    if abs(z_differ) > 5:
        pub_vel (-np.sign( z_differ)*default_x_vel,0,0 )
        return _state
    else:
        stop()
        print ("sate 1 compelte")
        time.sleep(1)
        return _state+1
    

def processY_Movements(_state,_detect_res, dir, id_find, _id_get):
    kp = 0.05

    default_y_vel = 0.2

    print (id_find , _id_get)
    if id_find == _id_get:
        cam_y = _detect_res[0][0]

        print ("current y dis" + str(cam_y) )    

        if abs(cam_y) < 2:
            print ("stop")
            stop()
            time.sleep(1)
            return _state +1 
        else:
            pub_vel (0,  -np.sign(cam_y)*default_y_vel, 0)
            return _state
    else:
        print("searching")
        pub_vel (0, dir*default_y_vel, 0)
        return _state

def processY_small(_state,_detect_res):
    print ("process y small")
    default_y_vel = 0.15


    if _detect_res is not None:
        cam_y = _detect_res[0][0]

        print ("current y dis" + str(cam_y) )    

        if abs(cam_y) < 5:
            print ("stop")
            stop()
            time.sleep(1)
            return _state +1 
        else:
            pub_vel (0,  -np.sign(cam_y)*default_y_vel, 0)
            return _state
    else:
        print("can't find qr code in short dis")
        return _state


def findMovement(_detect_res):
    if _detect_res == None:
        angle_vel = -0.15
        print("reverse")
        pub_vel(0,0, angle_vel)
    else:
        print ("stop")
        stop()

        pass

def faceToQr(_st, _detect_res):
    l = _detect_res[0][2]
    theta = _detect_res[0][4]
    theta_rad =  theta*math.pi / 180.0
    y_distance = math.sin(theta_rad)*l

    kp_y = 1.5
    kp_theta = 0.7

    y_vel = y_distance/100.0 *kp_y
    theta_vel = theta/100.0*kp_theta

    if abs(theta)>8 or abs(y_distance)>4:
        print (y_distance,theta),(y_vel, theta_vel)
        pub_vel(0, -y_vel,  theta_vel)
        return _st
    else:
        print ("stop face to qr")
        stop()
        time.sleep(1)
        return _st + 1





def goPosition(cmd = 0):
    state = 0
    protect_sec = 6
    time_count_start = time.time()

    while True:

        data_rec = aruco_detector.getArucoCode(display_mode = True)
        if data_rec != None:
            aruco_detector_res, ids = data_rec[0],data_rec[1]
            _id_get = ids[0][0]
            time_count_start = time.time()
            target = 1
        else:
            aruco_detector_res = None
            ids = None
            _id_get = 0

            time_gap = time.time() - time_count_start
            if (time_gap> protect_sec):
                print ("stop running")
                stop()
                break
                cmd = 10 # stop
            

        if aruco_detector_res is not None:
            if len(aruco_detector_res) == 1:
                pass
               # processMovements(aruco_detector_res)

        else:
            pass
            #continue

        if cmd == 0:
            pass
            if aruco_detector_res is not None:
                if len(aruco_detector_res) == 1:
                    faceToQr(aruco_detector_res)

        elif cmd == 1: # from point d to c to  b to a
            y_dir = -1 # 1 for left, -1 for right
            id_find = 4  # 1 and 4
            # conbimation  (-1,1)  ;  (1,4)
            back_dis = 20

            if (state == 0): # backward
                print ('state 0')
                if aruco_detector_res is not None:
                    state = processMovements(state, aruco_detector_res, back_dis) # 40 cm backward
                else:
                    pub_vel(-0.1,0,0)
                #backward
            elif (state == 1):
                print ('state 1')
                state = processY_Movements(state, aruco_detector_res, y_dir, id_find, _id_get)  # 1 to 4 to left 
                #turn left
            elif (state == 2):
                print ('state 2')
                if aruco_detector_res is not None:
                    state = faceToQr(state, aruco_detector_res)
                #turn forward and turn
            elif (state == 3):
                print ('state 3')
                if aruco_detector_res is not None:
                    state = processMovements(state, aruco_detector_res, back_dis/2) # 40 cm backward
                 #backward
            elif(state == 4):
                print ('state 4')
                state = processY_small(state, aruco_detector_res)  # 1 to 4 to left 
            elif(state == 5):
                pub_vel(0.2,0,0)
                time.sleep(3)
                state = state+1
                
            else:
                stop()
                break

        elif cmd == 2: # from point a to b to c to d 
            #backward
            y_dir = 1 # 1 for left, -1 for right
            id_find = 1  # 1 and 4
            # conbimation  (-1,1)  ;  (1,4)
            back_dis = 20

            if (state == 0): # backward
                print ('state 0')
                if aruco_detector_res is not None:
                    state = processMovements(state, aruco_detector_res, back_dis) # 40 cm backward
                else:
                    pub_vel(-0.1,0,0)
                #backward
            elif (state == 1):
                print ('state 1')
                state = processY_Movements(state, aruco_detector_res, y_dir, id_find, _id_get)  # 1 to 4 to left 
                #turn left
            elif (state == 2):
                print ('state 2')
                if aruco_detector_res is not None:
                    state = faceToQr(state, aruco_detector_res)
                #turn forward and turn
            elif (state == 3):
                print ('state 3')
                if aruco_detector_res is not None:
                    state = processMovements(state, aruco_detector_res, back_dis/2) # 40 cm backward
                 #backward
            elif(state == 4):
                print ('state 4')
                state = processY_small(state, aruco_detector_res)  # 1 to 4 to left 

            elif(state == 5):
                pub_vel(0.2,0,0)
                time.sleep(3)
                state = state+1
            else:
                stop()
                break

            pass

        
        else:
            pub_vel(0,0,0)

        #findMovement(aruco_detector_res)
        rate.sleep()
        

def rot_once(_dir = 1, time_gap_input = 0.5, sp = 0.9, notIgnoreQR = True):
	pub_vel(0, 0, sp*_dir)
	#print (_dir, sp , time_gap_input)
	time_ini = time.time()
	while True:
		_time_gap = time.time() - time_ini
		res = aruco_detector.process_qr_data()
		if res != -1 and notIgnoreQR:
			#print ("res is " + str(res))
			stop()
			return 1
			break		
		if _time_gap > time_gap_input:
			stop()
			return 0
			break

def stage_quick_rot(fir_dir = 1, first_rot_times = 3, second_rot_times = 6):
	time_wait = 1
    
	print ("Start stage quick rot")

	def rot_dir_times(_dir,_times):
		for i in range(_times):
			# check qr first 
			res = aruco_detector.process_qr_data()
			if res != -1:
				return 1

			# check rotation once then
			if rot_once(_dir):
				return 1

			rot_once(1,time_wait,0,0)
			
		print ("Nothing find in this round")		
		return 0

	if rot_dir_times(fir_dir,first_rot_times) is 1:
		print("counter clock found")
		return 1
	if rot_dir_times(-fir_dir,second_rot_times) is 1:
		print("clock found")
		return 1
	print ("nothing found")
	return 0
			

def stage_slow_rot(slow_rot_times = 6):
    _dir = 1
    sp = 0.8
    time_gap = 1

    #pre read some data 
    rot_once(1,1,0)

    for i in range(slow_rot_times):
        res = aruco_detector.process_qr_data()

        if res is not -1:
            _perc = res[2]

            if _perc < 0.4:
                _dir = 1
            elif _perc > 0.6:
                _dir = -1
            else:
                print ("slow move sucess ")
                stop()
                return 1
            time_use = 0.4

            rot_once(_dir, time_use, sp ,notIgnoreQR=False)
            
        else:
            if rot_once(1,1,0) is not 1:
                print ("miss the target")
                return -1           
            
        rot_once(1, 1 ,0,0)
        
    print ("slow focus fail")
    return 0   


def front_once(time_gap = 0.5, sp = 0.32):  #20 cm for 0.32sp with 0.5sec
    pub_vel(sp,0, 0)

    time_ini = time.time()
    while True:
        _time_gap = time.time() - time_ini
        res = aruco_detector.process_qr_data()
        if _time_gap > time_gap:
            stop()
            return 0    
    stop()
    return 0 # nothing found

def stages_rot(_dir = 1, _first_dir_times = 3, _second_dir_times = 6):
    if stage_quick_rot(_dir, _first_dir_times, _second_dir_times):
        if stage_slow_rot(6):
            return 1
    return 0

def move_to_center():

    _dir = 1
    center_range = 25
    l_time_ratio = 1.4 # important
    
    #pre read some data 
    rot_once(1,1,0,1)
    
    res = aruco_detector.process_qr_data()

    if res is not -1:
        l, angle = res[0] , res[1]
        print ("Step 2 :  found angle is " + str(angle))
        if angle > center_range :
            _dir = -1
        elif angle < -center_range:
            _dir = 1
        else:
            return 1  # 0 means done need to move
        
        #rotate and go forward
        rot_once(_dir, time_gap_input = 1, sp = 1, notIgnoreQR = False)
        front_once(time_gap= l/100 * l_time_ratio , sp = 0.5)
        
        #rotate back
        rot_once(-_dir, time_gap_input = 0.8, sp = 1, notIgnoreQR = False)
        if stages_rot(-_dir,4,6) == 0:
            return 0
        
        return 1
    else:
        print ("miss target")
        return 0

def main_process(first_dir = 1):

    #setup camera
    rot_once(1,3,0,0)

    print ("Step 1")
    # step 1: rotation and point
    if stages_rot(first_dir,5,10) == 0:
        print ("initial found failed")        
        return 0

    print ("Step 2")
    # step 2: move to center
    if move_to_center() == 0:  
        print ("Target not found") 
        return 0

    print ("Step 3")   
    # step 3: 
    max_towards_times = 7
    min_towards_range = 20

    rot_once(1, 1 ,0,0)

    for i in range(max_towards_times):
        res = aruco_detector.process_qr_data()
        if res is not -1:
            l = res[0]
            ag = res[1]
            print ("l is " + str(l) + " angle is " + str(ag))
            if l > min_towards_range:

                if stage_slow_rot(6):
                    front_once()
                else:
                    stages_rot(1,2,4)

                print ("Finish a round: " + str(i+1))
            else:
                #one time up
                front_once(2, sp=0.2)
                print ("Finsih doing")
                return 1
        else:
            if i < max_towards_times:
                continue
            else:
                print ("Didn't see objects")
                return 0

    rot_once(1,1,0,0)


if __name__=='__main__':
    main()
