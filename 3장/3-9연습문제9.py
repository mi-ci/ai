import cv2 as cv

def draw(event, x, y, flags, param) :
    global x1,y1,x2,y2
    if event == cv.EVENT_LBUTTONDOWN :
        x1, y1 = x, y
    elif event == cv.EVENT_LBUTTONUP :
        x2, y2 = x, y
        cv.rectangle(img, (x1,y1), (x2,y2), (255,0,0), 3)
    cv.imshow('Drawing', img)

img = cv.imread('rose.png')
cv.imshow('Drawing', img)
cv.setMouseCallback('Drawing', draw)

cv.waitKey()
patch = img[y1 : y2, x1 : x2, :]
cv.imshow('Origianl', patch)
patch1 = cv.resize(patch, dsize=(0,0), fx=2.5, fy=2.5, interpolation=cv.INTER_NEAREST)
patch2 = cv.resize(patch, dsize=(0,0), fx=2.5, fy=2.5, interpolation=cv.INTER_LINEAR)
patch3 = cv.resize(patch, dsize=(0,0), fx=2.5, fy=2.5, interpolation=cv.INTER_CUBIC)

cv.imshow('nearest', patch1)
cv.imshow('linear', patch2)
cv.imshow('cubic', patch3)
cv.waitKey()
cv.destroyAllWindows()