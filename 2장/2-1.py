import numpy as np
import cv2 as cv
a = np.array([4,5,0,1,2,3,6,7,8,9,10,11])
print(a)
print(type(a))
print(a.shape)
a.sort()
print(a)

b = np.array([-4,3,-2,3,12,9,8,8.99,10.1,1,-1,-2])
b.sort()
print(b)

c = np.array(['one','two','three','four','five','six','seven'])
c.sort()
print(c)

print('################################################################ ')
#연습문제1
d = np.array([400,52,'tiger','24',230])
print(d)
print(type(d))
print(d.shape)
d.sort()
print(d)
#연습문제2
e = np.array([1,2,3,4,5,6,7,8,9,10])
print(e.min(), e.max())
print(np.argmin(e), np.argmax(e))
print(np.mean(e))
print(np.sum(e))
print(np.cumsum(e))
print(np.prod(e))
print(np.cumprod(e))
#연습문제
img1 = cv.imread('1.jpg')
img2 = cv.imread('2.jpg')

cv.imshow('1', img1)
cv.imshow('2', img2)
cv.waitKey()
cv.destroyAllWindows()


















