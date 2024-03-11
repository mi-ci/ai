import cv2 as cv
from PyQt5.QtWidgets import *
import sys
import numpy as np

class sign(QMainWindow) :
    def __init__(self) :
        super().__init__()
        self.setWindowTitle('알림')
        self.setGeometry(200,200,500,100)
        
        fileButton = QPushButton('파일',self)
        
        fileButton.setGeometry(10,10,100,30)
        
        fileButton.clicked.connect(self.fileFunction)
        
        videoButton = QPushButton('영상',self)
        
        videoButton.setGeometry(110,10,100,30)
        
        videoButton.clicked.connect(self.videoFunction)
        
        compareButton = QPushButton('인식',self)
        
        compareButton.setGeometry(210,10,100,30)
        
        compareButton.clicked.connect(self.compareFunction)
        
    def fileFunction(self) :
        self.img = cv.imread('child.png')
        
    def videoFunction(self) :
        self.img2 = cv.imread('traffic1.jpg')
        
    def compareFunction(self) :
        img1 = self.img
        gray1 = cv.cvtColor( img1, cv.COLOR_BGR2GRAY)
        img2 = self.img2
        gray2 = cv.cvtColor( img2, cv.COLOR_BGR2GRAY)

        sift =cv.SIFT_create()
        kp1, des1 = sift.detectAndCompute(gray1, None)
        kp2, des2 = sift.detectAndCompute( gray2, None)
        print('특징점 개수: ' , len(kp1), len(kp2))

        flann_matcher = cv.DescriptorMatcher_create( cv.DescriptorMatcher_FLANNBASED)
        knn_match = flann_matcher.knnMatch(des1, des2, 2)

        T=0.7
        good_match=[]
        for nearest1, nearest2 in knn_match:
            if ( nearest1.distance / nearest2.distance) < T : # 최근접 이웃거리비율 ppt 39페이지 참고
                good_match.append(nearest1)
                print('굿매치!!!')
               
        points1 = np.float32([kp1[gm.queryIdx ].pt for gm in good_match])
        points2 = np.float32([kp2[gm.trainIdx ].pt for gm in good_match])

        H, _ = cv.findHomography(points1, points2, cv.RANSAC)
        # cv.RANSAC  아웃라이어를 회피하면서 최적해를 구하기 

        h1, w1 = img1.shape[0], img1.shape[1]
        h2, w2 = img2.shape[0], img2.shape[1]

        box1 = np.float32([[0,0],[0,h1-1], [w1-1, h1-1], [w1-1,0]]).reshape(4,1,2)
        box2 = cv.perspectiveTransform(box1, H)

        img2 = cv.polylines(img2, [np.int32(box2)], True, (0,255,0 ), 8)


        img_match = np.empty( (max(h1, h2), w1+w2, 3 ), dtype=np.uint8)    
        cv.drawMatches(img1, kp1, img2, kp2, good_match, img_match, flags=cv.DrawMatchesFlags_NOT_DRAW_SINGLE_POINTS)

        cv.imshow('Matches and Homography', img_match)

        cv.waitKey()
        cv.destroyAllWindows()        
        

app = QApplication(sys.argv)
win = sign()
win.show()
app.exec()