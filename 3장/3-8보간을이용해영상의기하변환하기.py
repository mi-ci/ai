import cv2 as cv

img = cv.imread('rose.png') # jpg 채널3개 png 채널4개
patch = img[250:350, 170:270, :]

img = cv.rectangle(img, (170,250), (270,350),(255,0,0),3)
patch1 = cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_NEAREST)
patch2 = cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_LINEAR)
patch3 = cv.resize(patch, dsize=(0,0), fx=5, fy=5, interpolation=cv.INTER_CUBIC)

cv.imshow('o', img)
cv.imshow('a', patch1)
cv.imshow('b', patch2)
cv.imshow('c', patch3)

cv.waitKey()
cv.destroyAllWindows()