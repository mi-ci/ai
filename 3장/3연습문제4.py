import cv2 as cv
import numpy as np

img = cv.imread('soccer.jpg')
img = cv.resize(img, (0,0),fx=0.4, fy=0.4, )
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)

f1 = np.array([
    [-1,-1,-1],
    [0,0,0],
    [1,1,1]
    ])
f2 = np.array([
    [0,-1,0],
    [-1,4,-1],
    [0,-1,0]
    ])
f3 = np.array([
    [-1,0,0],
    [0,0,0],
    [0,0,1]
    ])

gray16 = np.uint16(gray)

f1g = np.uint8(np.clip(cv.filter2D(gray16, -1, f1)+128,0,255))
f2g = np.uint8(np.clip(cv.filter2D(gray16, -1, f2)+128,0,255))
f3g = np.uint8(np.clip(cv.filter2D(gray16, -1, f3)+128,0,255))

cv.imshow('f1', f1g)
cv.imshow('f2', f2g)
cv.imshow('f3', f3g)

cv.waitKey()
cv.destroyAllWindows()
