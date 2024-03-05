import cv2 as cv
import sys

cap = cv.VideoCapture(0, cv.CAP_DSHOW)

if not cap.isOpened() :
    sys.exit('카메라 연결 실패')
    
while True :
    ret, frame = cap.read()
    if not ret :
        print('프레임 획득에 실패하여 루프를 빠집니다')
        break
    cv.imshow('Youtube LIVE', frame)
    key = cv.waitKey(1)
    if key == ord('q') :
        break
cap.release()
cv.destroyAllWindows()

#연습문제
cap = cv.VideoCapture(0, cv.CAP_DSHOW)
if not cap.isOpened() :
    sys.exit('카메라 연결 실패')
mode == 'c'
while True :
    ret, frame = cap.read()
    if not ret :
        print('프레임 획득 실패')
        break
    if mode == 'c' :
        cv.imshow('Color', frame)
    elif mode == 'g' :
        gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
        cv.imshow('Gray', gray)
    key = cv.waitKey(1)
    if key == ord('c') :
        mode == 'c'
    elif key == ord('g') :
        mode == 'g'
    elif key == ord('c') :
        break
cap.release()
cv.destroyAllWindows()