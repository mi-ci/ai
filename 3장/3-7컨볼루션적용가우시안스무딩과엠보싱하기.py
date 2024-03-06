import cv2 as cv
import numpy as np

img = cv.imread('soccer.jpg')
img = cv.resize(img, dsize=(0,0), fx=0.4, fy=0.4)
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
cv.putText(gray, 'soccer', (10,20), cv.FONT_HERSHEY_SIMPLEX, 0.7, (255,255,255), 2)
cv.imshow('Original', gray)

smooth = np.hstack((
        (cv.GaussianBlur(gray, (5,5), 0.0)),
        (cv.GaussianBlur(gray, (9,9), 0.0)),
        (cv.GaussianBlur(gray, (15,15), 0.0))
    ))
cv.imshow('Smooth', smooth)

femboss = np.array([
        [-1.0, -1.0, 0.0],
        [-1.0, 0.0, 1.0],
        [0.0, 1.0, 1.0] 
    ])
sharpen = np.array([[0.0,-1.0,0.0],
                    [-1.0,4.0,-1.0],
                    [0.0, -1.0, 0.0]
                    ])

smoothing = np.array([
        [0.11,0.11,0.11],
        [0.11,0.11,0.11],
        [0.11,0.11,0.11],
    ])
# 필터링 : 엠보스, 블러, 샤픈, 스무딩 필터효과 줄때 쓴다!!!!! 무엇을? 컨볼루션(합성곱)
gray16 = np.int16(gray)
emboss = np.uint8(np.clip(cv.filter2D(gray16, -1, femboss) + 128, 0, 255))
emboss_bad = np.uint8(cv.filter2D(gray16, -1, femboss) + 128)
emboss_worse = cv.filter2D(gray, -1, femboss)
# emboss = np.uint8(np.clip(cv.filter2D(gray16, -1, sharpen) + 128, 0, 255))
# emboss_bad = np.uint8(cv.filter2D(gray16, -1, sharpen) + 128)
# emboss_worse = cv.filter2D(gray, -1, sharpen)
# emboss = np.uint8(np.clip(cv.filter2D(gray16, -1, smoothing) + 128, 0, 255))
# emboss_bad = np.uint8(cv.filter2D(gray16, -1, smoothing) + 128)
# emboss_worse = cv.filter2D(gray, -1, smoothing)

cv.imshow('emboss', emboss)
cv.imshow('emboss_bad', emboss_bad)
cv.imshow('emboss_worse', emboss_worse)

cv.waitKey()
cv.destroyAllWindows()