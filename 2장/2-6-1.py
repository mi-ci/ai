import cv2 as cv
import sys

img = cv.imread('girl_laughing.jpg')
# gucci = cv.imread('gucci.jpg')

if img is None :
    sys.exit('파일을 찾을 수 없습니다')
# h, w, c = gucci.shape
# roi = img1[150:150+h, 150:150+w]    
#cv.rectangle(img, (830,30), (1000,200), (0,0,255), 2)
#cv.rectangle(img, (950,400), (1020,470), (0,0,255), 2)
#cv.rectangle(img, (840,100), (870,120), (0,255,0), 2)
#cv.rectangle(img, (890,90), (930,110), (0,255,0), 2)
cv.putText(img, 'laugh', (630, 100), cv.FONT_HERSHEY_SIMPLEX, 1, (255,0,0),2)
cv.arrowedLine(img, (720,100), (880,160), (255,0,0),2)
# cv.circle(img, (875,75), 1, (0,0,255), 2)
# cv.circle(img, (920,95), 1, (0,0,0), 2)
# cv.circle(img, (919,95), 1, (0,0,0), 2)
# cv.circle(img, (918,95), 1, (0,0,0), 2)
# cv.circle(img, (917,95), 1, (0,0,0), 2)
# cv.circle(img, (916,95), 1, (0,0,0), 2)
# cv.circle(img, (915,95), 1, (0,0,0), 2)
# cv.circle(img, (914,95), 1, (0,0,0), 2)
# cv.circle(img, (913,95), 1, (0,0,0), 2)
# cv.circle(img, (912,95), 1, (0,0,0), 2)
cv.circle(img, (915,95), 30, (0,0,0), -1)
cv.line(img, (850,50), (975,145), (0,0,0),2)
cv.imshow('girl_rec', img)
cv.waitKey()
cv.destroyAllWindows()

#연습문제











