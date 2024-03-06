import cv2 as cv
import numpy as np
import time

def my_cvtGray1(bgr_img) :
    g = np.zeros([bgr_img.shape[0], bgr_img.shape[1]])
    for r in range(bgr_img.shape[0]) :
        for c in range(bgr_img.shape[1]) :
            g[r,c] = 0.114 * bgr_img[r,c,0] + 0.587 * bgr_img[r,c,1] + 0.299 * bgr_img[r,c,2]
    return np.uint8(g)

def my_cvtGray2(bgr_img) :
    g = np.zeros([bgr_img.shape[0], bgr_img.shape[1]])
    g = 0.114 * bgr_img[:,:,0] + 0.587 * bgr_img[:,:,1] + 0.299 * bgr_img[:,:,2]
    return np.uint8(g)

img = cv.imread('girl_laughing.jpg')

start = time.time()
my_cvtGray1(img)
print('My Time1 : ', time.time() - start)

start = time.time()
my_cvtGray2(img)
print('My Time2 : ', time.time() - start)

start = time.time()
cv.cvtColor(img, cv.COLOR_BGR2GRAY)
print('OpenCV Time : ', time.time() - start)

#1번이 2번(배열형) 보다 느린이유 일일히 데이터형 확인 메모리 안에 배열이 연속적으로 배치되있어서
#배열요소를 쓰는게 더 빠르다