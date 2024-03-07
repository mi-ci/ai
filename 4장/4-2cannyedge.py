import cv2 as cv
import numpy as np

img = cv.imread('soccer.jpg')
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)

canny1 = cv.Canny(gray, 50, 250)
canny2 = cv.Canny(gray, 100, 300)

cv.imshow('Original', gray)
cv.imshow('1', canny1)
cv.imshow('2', canny2)
cv.waitKey()
cv.destroyAllWindows()
