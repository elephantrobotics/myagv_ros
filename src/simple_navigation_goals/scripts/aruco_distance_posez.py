import numpy as np
import time
import cv2
import cv2.aruco as aruco
import math
from collections import deque


cv_file = cv2.FileStorage("/home/ubuntu/myagv_ros/src/simple_navigation_goals/scripts/yuyan.yaml", cv2.FILE_STORAGE_READ)
camera_matrix = cv_file.getNode("camera_matrix").mat()
dist_matrix = cv_file.getNode("dist_coeff").mat()
cv_file.release()



# dist=np.array(([[-0.58650416 , 0.59103816, -0.00443272 , 0.00357844 ,-0.27203275]]))
# newcameramtx=np.array([[189.076828   ,  0.    ,     361.20126638]
#  ,[  0 ,2.01627296e+04 ,4.52759577e+02]
#  ,[0, 0, 1]])
# mtx=np.array([[398.12724231  , 0.      ,   304.35638757],
#  [  0.       ,  345.38259888, 282.49861858],
#  [  0.,           0.,           1.        ]])


DEBUG = False
cap = cv2.VideoCapture(0)
# cap.set(cv2.CAP_PROP_FOURCC, cv2.VideoWriter_fourcc('M', 'J', 'P', 'G'))
# cap.set(cv2.CAP_PROP_FRAME_WIDTH, 1920)
# cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 1080)

font = cv2.FONT_HERSHEY_SIMPLEX #font for displaying text (below)
distance_values = deque(maxlen=5)
#num = 0
while True:
    ret, frame = cap.read()
    h1, w1 = frame.shape[:2]

    newcameramtx, roi = cv2.getOptimalNewCameraMatrix(camera_matrix, dist_matrix, (h1, w1), 0, (h1, w1))
    dst1 = cv2.undistort(frame, camera_matrix, dist_matrix, None, newcameramtx)
    x, y, w1, h1 = roi
    dst1 = dst1[y:y + h1, x:x + w1]
    frame=dst1

    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    aruco_dict = aruco.Dictionary_get(aruco.DICT_6X6_250)
    parameters =  aruco.DetectorParameters_create()

    corners, ids, rejectedImgPoints = aruco.detectMarkers(gray,aruco_dict,parameters=parameters)


    if ids is not None:
        rvec, tvec, _ = aruco.estimatePoseSingleMarkers(corners, 0.032, camera_matrix, dist_matrix)

        (rvec-tvec).any() # get rid of that nasty numpy value array error
        #print(rvec)

        for i in range(rvec.shape[0]):
            aruco.drawAxis(frame, camera_matrix, dist_matrix, rvec[i, :, :], tvec[i, :, :], 0.03)
            aruco.drawDetectedMarkers(frame, corners,ids)

        cv2.putText(frame, "Id: " + str(ids), (0,64), font, 1, (0,255,0),2,cv2.LINE_AA)

        distance = ((tvec[0][0][2]) * 100) - 5
        cv2.putText(frame, 'distance:' + str(round(distance, 4)) + str('cm'), (0, 110), font, 1, (0, 255, 0), 2,
        cv2.LINE_AA)
        #distance = np.linalg.norm(tvec)
        distance_values.append(distance)
        if DEBUG == True:
            if len(distance_values)>=5:
                average_distance=np.mean(distance_values)
                cv2.putText(frame, 'distance:' + str(round(average_distance, 4)) + str('cm'), (0, 110), font, 1, (0, 255, 0), 2,
                        cv2.LINE_AA)
                distance_values = []
            #cv2.imshow("frame",frame)



    else:
        ##### DRAW "NO IDS" #####
        cv2.putText(frame, "No Ids", (0,64), font, 1, (0,255,0),2,cv2.LINE_AA)

    cv2.imshow("frame",frame)

    key = cv2.waitKey(1 )

    if key == 27:        
        print('esc break...')
        cap.release()
        cv2.destroyAllWindows()
        break

    if key == ord(' '):   
        filename = str(time.time())[:10] + ".jpg"
        cv2.imwrite(filename, frame)
