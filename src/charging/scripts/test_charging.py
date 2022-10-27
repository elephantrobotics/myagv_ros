#!/usr/bin/env python
import numpy as np
import math
import time
import threading
import cv2
import cv2.aruco as aruco
import rospy
from geometry_msgs.msg import Twist

calibrationFile = "calibrationFileName.xml"
calibrationParams = cv2.FileStorage(calibrationFile,cv2.FILE_STORAGE_READ)
dist_coeffs = calibrationParams.getNode("distCoeffs").mat()

cam = cv2.VideoCapture(0)
font = cv2.FONT_HERSHEY_SIMPLEX #font for displaying text (below)
ret, frame = cam.read()
width = cam.get(cv2.CAP_PROP_FRAME_WIDTH)
height = cam.get(cv2.CAP_PROP_FRAME_WIDTH)
count = cam.get(cv2.CAP_PROP_FRAME_COUNT)
fps = cam.get(cv2.CAP_PROP_FPS)
size = frame.shape
focal_length = size[1]
center = (size[1] / 2, size[0] / 2)
# Camera internals
camera_matrix = np.array(
[[focal_length, 0, center[0]], [0, focal_length, center[1]],
[0, 0, 1]],
dtype="double")
cam.release()     
# importing aruco dictionary  
aruco_dict = cv2.aruco.Dictionary_get(cv2.aruco.DICT_6X6_250)
marker_length = 0.055   # -- Here, the measurement unit is metre.
aruco_params = cv2.aruco.DetectorParameters_create()

# use to get the attitude in terms of euler 321
R_flip = np.zeros((3, 3), dtype=np.float32)
R_flip[0, 0] = 1.0
R_flip[1, 1] = -1.0
R_flip[2, 2] = -1.0

pose_data = [None, None, None, None, None, None]
_id = [0]
pose_data_dict={}

x = 0            
y = 0
theta = 0
# the threshold of the angle
#degrees=20
def go(x,y,theta):
    rospy.init_node('qcode_detect', anonymous=True)
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)      
    twist = Twist()
    twist.linear.x = x; 
    twist.linear.y = y; 
    twist.linear.z = 0
    twist.angular.x = 0; 
    twist.angular.y = 0; 
    twist.angular.z = theta
    pub.publish(twist)
def _is_rotation_matrix(R):
        """
        Checks if a matrix is a valid rotation matrix.

        :param R:    rotation matrix
        :return:     [bool] True or False
        """
        Rt = np.transpose(R)
        shouldBeIdentity = np.dot(Rt, R)
        I = np.identity(3, dtype=R.dtype)
        n = np.linalg.norm(I - shouldBeIdentity)
        return n < 1e-6

def _rotation_matrix_to_euler_angles(R):
        """
        Calculates rotation matrix to euler angles

        :param R:     rotation matrix
        :return:      [np.array] roll, pitch, yaw
        """
        assert (_is_rotation_matrix(R))

        sy = math.sqrt(R[0, 0] * R[0, 0] + R[1, 0] * R[1, 0])
        singular = sy < 1e-6

        if not singular:
            x = math.atan2(R[2, 1], R[2, 2])
            y = math.atan2(-R[2, 0], sy)
            z = math.atan2(R[1, 0], R[0, 0])
        else:
            x = math.atan2(-R[1, 2], R[1, 1])
            y = math.atan2(-R[2, 0], sy)
            z = 0

        return np.array([x, y, z])  
def _detect(corners, ids, imgWithAruco):
        """
        Show the Axis of aruco and return the x,y,z(unit is cm), roll, pitch, yaw

        :param corners:        get from cv2.aruco.detectMarkers()
        :param ids:            get from cv2.aruco.detectMarkers()
        :param imgWithAruco:   assign imRemapped_color to imgWithAruco directly
        :return:               x,y,z (units is cm), roll, pitch, yaw (units is degree)
        """
        if len(corners) > 0:
            x1= (int(corners[0][0][0][0]), int(corners[0][0][0][1]))
            x2 = (int(corners[0][0][1][0]),int(corners[0][0][1][1]))
            x3 = (int(corners[0][0][2][0]), int(corners[0][0][2][1]))
            x4 = (int(corners[0][0][3][0]), int(corners[0][0][3][1]))


            # Drawing detected frame white color
            # OpenCV stores color images in Blue, Green, Red
            cv2.line(imgWithAruco, x1, x2, (255, 0, 0), 1)
            cv2.line(imgWithAruco, x2, x3, (255, 0, 0), 1)
            cv2.line(imgWithAruco, x3, x4, (255, 0, 0), 1)
            cv2.line(imgWithAruco, x4, x1, (255, 0, 0), 1)

            # font type hershey_simpex
            font = cv2.FONT_HERSHEY_SIMPLEX
            cv2.putText(imgWithAruco, 'C1', x1, font, 1, (255, 255, 255), 1,
                        cv2.LINE_AA)
            cv2.putText(imgWithAruco, 'C2', x2, font, 1, (255, 255, 255), 1,
                        cv2.LINE_AA)
            cv2.putText(imgWithAruco, 'C3', x3, font, 1, (255, 255, 255), 1,
                        cv2.LINE_AA)
            cv2.putText(imgWithAruco, 'C4', x4, font, 1, (255, 255, 255), 1,
                        cv2.LINE_AA)

            if ids is not None:   # if aruco marker detected
                rvec, tvec, _ = cv2.aruco.estimatePoseSingleMarkers(
                    corners, marker_length, camera_matrix,
                    dist_coeffs)
                for i in range(rvec.shape[0]):
                    cv2.aruco.drawAxis(imgWithAruco,camera_matrix,
                                        dist_coeffs, rvec, tvec,
                                        marker_length)
                    aruco.drawDetectedMarkers(imgWithAruco, corners)

                # --- The midpoint displays the ID number
                cornerMid = (int((x1[0] + x2[0] + x3[0] + x4[0]) / 4),
                             int((x1[1] + x2[1] + x3[1] + x4[1]) / 4))

                cv2.putText(frame, "id=" + str(ids), cornerMid,
                            font, 1, (255, 255, 255), 1, cv2.LINE_AA)
                

                rvec = rvec[0][0]
                tvec = tvec[0][0]

                # --- Print the tag position in camera frame
                str_position = "MARKER Position x=%.4f (cm)  y=%.4f (cm)  z=%.4f (cm)" % (
                    tvec[0] * 100, tvec[1] * 100, tvec[2] * 100)

                # -- Obtain the rotation matrix tag->camera
                R_ct = np.matrix(cv2.Rodrigues(rvec)[0])
                R_tc = R_ct.T

                # -- Get the attitude in terms of euler 321 (Needs to be flipped first)
                roll_marker, pitch_marker, yaw_marker = _rotation_matrix_to_euler_angles(
                    R_flip * R_tc)

                # -- Print the marker's attitude respect to camera frame
                str_attitude = "MARKER Attitude degrees r=%.4f  p=%.4f  y=%.4f" % (
                    math.degrees(roll_marker), math.degrees(pitch_marker),
                    math.degrees(yaw_marker))
                
                print(str_position)
                print("rotation x=%.4f (degree) " % 
                      (math.degrees( math.atan(tvec[0]/tvec[2]))))
                print(str_attitude)
                print(math.degrees(pitch_marker)+math.degrees( math.atan(tvec[0]/tvec[2])))
                print("-----------------------------------------------")
                
                #pose_data = [None, None, None, None, None, None]
                pose_data[0] = tvec[0] * 100
                pose_data[1] = tvec[1] * 100
                pose_data[2] = tvec[2] * 100
                pose_data[3] = math.degrees(roll_marker)
                pose_data[4] = math.degrees(pitch_marker)
                pose_data[5] = math.degrees(yaw_marker)

                #print(pose_data[2])
                #    
                pose_data_dict[ids] = pose_data
                return (tvec[0] * 100, tvec[1] * 100, tvec[2] * 100), \
                       (math.degrees(roll_marker),
                        math.degrees(pitch_marker),
                        math.degrees(yaw_marker))
                

        else:
            pose_data[0] = None
            pose_data[1] = None
            pose_data[2] = None
            pose_data[3] = None
            #self.pose_data_list[0] = self.pose_data
            pose_data_dict[0] = pose_data
            return None


def main():
    #rospy.init_node('qcode_detect', anonymous=True)
    #qcode_detect = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    degrees=15
    degrees2=3.5
    fdegrees2=0
    while True:
        cam = cv2.VideoCapture(0)
        #font = cv2.FONT_HERSHEY_SIMPLEX
        ret, frame = cam.read()       
        #frame = _flip_frame(frame, flipCode=-1)
        #h1, w1 = frame.shape[:2]
        cam.release()
        # newcameramtx, roi = cv2.getOptimalNewCameraMatrix(camera_matrix, dist_coeffs, (h1, w1), 0, (h1, w1))
        # dst1 = cv2.undistort(frame, camera_matrix, dist_coeffs, None, newcameramtx)
        # x, y, w1, h1 = roi
        # dst1 = dst1[y:y + h1, x:x + w1]
        # frame=dst1

        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        aruco_dict = aruco.Dictionary_get(aruco.DICT_6X6_250)
        parameters =  aruco.DetectorParameters_create()
        
        #dst1 = cv2.undistort(frame, mtx, dist, None, newcameramtx)
        '''
        detectMarkers(...)
            detectMarkers(image, dictionary[, corners[, ids[, parameters[, rejectedI
            mgPoints]]]]) -> corners, ids, rejectedImgPoints
         '''
        corners, ids, rejectedImgPoints = aruco.detectMarkers(gray,aruco_dict,parameters=parameters)
        if ids is not None:
            ids = ids.tolist()
            if len(ids)>0:
                for i in range(len(ids)):
                    _id = [i[0] for i in ids]
        else:
            _id = [0]
        # -- Draw the camera center point
        #self.pose_data_list = [None for i in range(len(self._id))]
        #cv2.aruco.drawAxis(frame, camera_matrix, (0, 0, 0), (0, 0, 0), 0.1)
        
        # -- If the corners be detected
        # Draw the Axis of aruco
        # and return the position (x, y, z)(cm) and rotation (roll, pitch, yaw)(degree)
        if ids is not None:
            if len(ids) > 0:
                for i in range(len(ids)):
                    a = ids[i][0]
                    _detect(corners[i:i+1], a, frame)
                    if abs(pose_data[2])>=70:
                        go(0.4,0,0)#right_shift
                    elif 70>=abs(pose_data[2])>=50 and pose_data[4]>=degrees:
                        go(0,-0.08,0)#right_shift
                    elif 70>=abs(pose_data[2])>=50 and pose_data[4]<=-degrees:               
                        go(0,0.08,0)
                    elif 70>=abs(pose_data[2])>=50 and abs(pose_data[4])<=degrees:
                        go(0.15,0,0)
                    elif abs(pose_data[2])<=50 and abs(pose_data[2])>30 and pose_data[4]>=degrees:
                        go(0,-0.05,0)
                    elif abs(pose_data[2])<=50 and abs(pose_data[2])>30 and pose_data[4]<=-degrees:
                        go(0,0.05,0)
                    elif abs(pose_data[2])<=50 and abs(pose_data[2])>30 and abs(pose_data[4])<=degrees:
                        go(0.1,0,0)
                    elif abs(pose_data[2])<=30 and abs(pose_data[2])>15 and pose_data[4]>=degrees:
                        go(0,-0.04,0)
                    elif abs(pose_data[2])<=30 and abs(pose_data[2])>15 and pose_data[4]<=-degrees:
                        go(0,0.04,0)
                    elif abs(pose_data[2])<=30 and abs(pose_data[2])>=15 and abs(pose_data[4])<=degrees:
                        go(0.04,0,0)
                    elif abs(pose_data[2])<=15 and abs(pose_data[2])>0 and pose_data[4]>=degrees2:
                        go(0,-0.04,0)
                    elif abs(pose_data[2])<=15 and abs(pose_data[2])>0 and pose_data[4]<=fdegrees2:
                        go(0,0.04,0)
                    elif abs(pose_data[2])<15 and abs(pose_data[2])>0 and fdegrees2<=pose_data[4]<=degrees2:           
                        go(0,0,0)
                        break
            if abs(pose_data[2])<15 and abs(pose_data[2])>0 and fdegrees2<=pose_data[4]<=degrees2:
                time.sleep(2)
                break
                                                            
        else:
            _detect(corners, ids, gray)
            cv2.putText(frame, "No Ids", (0,64), font, 1, (0,255,0),2,cv2.LINE_AA)                     
            go(0,0,0.15)
        
        cv2.imshow("frame",frame)        
        cv2.waitKey(1)
if __name__ == '__main__':
    try:
        main()
        for i in range(1,85000):
            i=i+1
            go(0.05,0,0)
        for i in range(1,400):
            i=i+1
            go(0,0,0)
    except rospy.ROSInterruptException:
        pass
