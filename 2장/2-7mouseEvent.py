# 이벤트란 사용자가 동작하는 것을 프로그램이 받아서 처리하기
# 콜백함수 callback - 리스너와 비슷함 : 이벤트 발생하는 것을 처리하는 함수
import cv2 as cv
import sys

img = cv.imread('girl_laughing.jpg')
if img is None :
    sys.exit('파일을 찾을 수 없습니다')

def draw(event, x, y, flags, param) :
    global ix, iy
    if event == cv.EVENT_LBUTTONDOWN :
        ix,iy = x,y
    elif event == cv.EVENT_LBUTTONUP :
        cv.rectangle(img, (ix,iy), (x,y), (0,0,255), 2)
    elif event == cv.EVENT_RBUTTONDOWN :
        ix,iy = x,y
    elif event == cv.EVENT_RBUTTONUP :
        cv.circle(img, (x,y), int(((ix-x)**2+(iy-y)**2)**(1/2)/2), (255,0,0), 2)
    cv.imshow('Drawing',img)

cv.imshow('Drawing', img)
cv.setMouseCallback('Drawing', draw)
while True :
    if cv.waitKey(1) == ord('q') :
        cv.destroyAllWindows()
        break