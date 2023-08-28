# coding=utf8
import numpy as np
import math
import time
import cv2
import cv2.aruco as aruco


from std_msgs.msg import Int8
from geometry_msgs.msg import Twist

print("find video0")
cam_id = 0

cam = cv2.VideoCapture(cam_id)

calibrationFile = "calibrationFileName.xml"
calibrationParams = cv2.FileStorage(calibrationFile, cv2.FILE_STORAGE_READ)
dist_coeffs = calibrationParams.getNode("distCoeffs").mat()
print(dist_coeffs)

font = cv2.FONT_HERSHEY_SIMPLEX  # font for displaying text (below)
ret, frame = cam.read()
width = cam.get(cv2.CAP_PROP_FRAME_WIDTH)
height = cam.get(cv2.CAP_PROP_FRAME_WIDTH)
count = cam.get(cv2.CAP_PROP_FRAME_COUNT)
fps = cam.get(cv2.CAP_PROP_FPS)
size = frame.shape
focal_length = size[1]
center = (size[1] / 2, size[0] / 2)
# Camera internals
camera_matrix = np.array([[focal_length, 0, center[0]], [0, focal_length, center[1]],[0, 0, 1]], dtype="double")

print(camera_matrix,dist_coeffs)

cv2.namedWindow("show",0)

# importing aruco dictionary
aruco_dict = cv2.aruco.Dictionary_get(cv2.aruco.DICT_6X6_250)
marker_length = 0.032   # -- Here, the measurement unit is metre.0.055 is for orgianl big
aruco_params = cv2.aruco.DetectorParameters_create()

# use to get the attitude in terms of euler 321
R_flip = np.zeros((3, 3), dtype=np.float32)
R_flip[0, 0] = 1.0
R_flip[1, 1] = -1.0
R_flip[2, 2] = -1.0

pose_data = [None, None, None, None, None, None]
_id = [0]
pose_data_dict = {}

x = 0
y = 0
theta = 0




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
            x1 = (int(corners[0][0][0][0]), int(corners[0][0][0][1]))
            x2 = (int(corners[0][0][1][0]), int(corners[0][0][1][1]))
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
                    cv2.aruco.drawAxis(imgWithAruco, camera_matrix,
                                        dist_coeffs, rvec, tvec,
                                        marker_length)
                    frame_makers =   aruco.drawDetectedMarkers(imgWithAruco.copy(),corners)

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

                pose_data[0] = tvec[0] * 100
                pose_data[1] = tvec[1] * 100
                pose_data[2] = tvec[2] * 100
                pose_data[3] = math.degrees(roll_marker)
                pose_data[4] = math.degrees(pitch_marker)
                pose_data[5] = math.degrees(yaw_marker)

                pose_data_dict[ids] = pose_data

                roll_deg = math.degrees(roll_marker)
                pitch_deg = math.degrees(pitch_marker)
                yaw_deg = math.degrees(yaw_marker)

                if abs(yaw_deg)%90.0 < 30:
                    return [tvec[0] * 100, tvec[1] * 100, tvec[2] * 100 , roll_deg, pitch_deg ,yaw_deg, cornerMid]
                else:
                    return None

        else:
            pose_data[0] = None
            pose_data[1] = None
            pose_data[2] = None
            pose_data[3] = None

            pose_data_dict[0] = pose_data
            return None


def displayFrame(frame_input):
    cv2.imshow("show", frame_input)
    cv2.waitKey(1)


def getArucoCode(display_mode = True ):
    #while True: 
        # read frame once
    ret, frame = cam.read()
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    aruco_dict = aruco.Dictionary_get(aruco.DICT_6X6_250)
    parameters = aruco.DetectorParameters_create()

    corners, ids, rejectedImgPoints = aruco.detectMarkers(
        gray, aruco_dict, parameters=parameters)
    frame_makers =   aruco.drawDetectedMarkers(frame.copy(),corners,ids)


    if ids is not None:
        ids_len  = len(ids)

        res = []
        i =0
        if ids_len > 0:
            for l in range(ids_len):
                aruco_res = _detect(corners[i:i+1], ids[i][0], frame)
                if aruco_res != None:
                    res.append(aruco_res)
                i+=1
                if display_mode :
                    displayFrame(frame_makers)
        return (res, ids)
        #print res

    else:
        # no data detected
        if display_mode :
            displayFrame(frame_makers)
        return None
    
    
def process_qr_data():
    data_ = getArucoCode(True)
    
    if data_ is not None:
        if data_[0] == []:
            return -1

        _z = data_[0][0][2]
        _ry = data_[0][0][4]
        _perc = data_[0][0][6][0]/640.0
        return (_z, _ry, _perc)
    else:
        return -1

'''
time_1 = time.time()
while True:
    #continue
    time_gap = (time.time()-time_1)
    if time_gap > 1 :
        #print ("bigger than once ")
        time_1 = time.time()
'''	



