# 명암영상을 이진화 영상으로 바꾸기
# 왜 바꾸나요? 용량 줄이고 경계선 명확히 하기 위해
# 임계값 T를 찾아서 T보다 크면 1, 작으면 0
import cv2 as cv
import sys
img = cv.imread('soccer.jpg')
t, bin_img = cv.threshold(img[:,:,1], 0, 255, cv.THRESH_BINARY + cv.THRESH_OTSU)
print(t)
cv.imshow('otsu', bin_img)
cv.waitKey()
cv.destroyAllWindows()

# 최적화 문제 방법 : 낱낱 스네이크(가장 많이, 고전 방법) 역전파(딥러닝)