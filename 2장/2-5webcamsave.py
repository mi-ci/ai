import cv2 as cv
import sys
import numpy as np

cap = cv.VideoCapture(0, cv.CAP_DSHOW)

if not cap.isOpened() :
    sys.exit('카메라 연결 실패')

frames = []
while True :
    ret, frame = cap.read()
    if not ret :
        print('프레임 획득에 실패하여 루프를 빠집니다')
        break
    cv.imshow('Youtube LIVE', frame)
    key = cv.waitKey(1)
    if key == ord('q') :
        break
    if key == ord('c') :
        frames.append(frame)
cap.release()
cv.destroyAllWindows()
if len(frames) > 0 :    
    imgs = frames[0]
    for i in range(1, min(3,len(frames))) :
        imgs = np.hstack((imgs, frames[i]))
    cv.imshow('collected images', imgs)
    cv.waitKey()
    cv.destroyAllWindows()