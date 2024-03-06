import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt
import time

def My_equalize(gray) :
    h = np.zeros([256])
    for j in range(gray.shape[0]) :
        for i in range(gray.shape[1]):
            h[gray[j][i]] += 1
            h1 = h / (gray.shape[0]*gray.shape[1])
            h2 = h1.cumsum()
            mapping = np.round(h2*255)
    for j in range(gray.shape[0]) :
        for i in range(gray.shape[1]):
            gray[j][i] = mapping[gray[j][i]]
    return gray
        
img = cv.imread('mistyroad.jpg')            
gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
plt.imshow(gray, cmap='gray'), plt.xticks([]), plt.yticks([]), plt.show()

h = cv.calcHist([gray], [0], None, [256], [0,255])
plt.plot(h, color='r', linewidth=1), plt.show()

start = time.time()
equal = cv.equalizeHist(gray)
print('equalize', time.time() - start)

plt.imshow(equal, cmap='gray'), plt.xticks([]), plt.yticks([]), plt.show()
h=cv.calcHist([equal], [0], None, [256], [0,256])
plt.plot(h, color='r', linewidth=1), plt.show()

start = time.time()
equal = My_equalize(gray)
print('My', time.time() - start)

plt.imshow(equal, cmap='gray'), plt.xticks([]), plt.yticks([]), plt.show()
h=cv.calcHist([equal], [0], None, [256], [0,256])
plt.plot(h, color='r', linewidth=1), plt.show()