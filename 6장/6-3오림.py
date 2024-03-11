import cv2 as cv
from PyQt5.QtWidgets import *
import sys
import numpy as np

class orim(QMainWindow):
    def __init__(self) :
        super().__init__()
        self.setWindowTitle('오림')
        self.setGeometry(200,200,500,100)
        
        
        fileButton = QPushButton('파일', self)
        paintButton = QPushButton('페인팅', self)
        orimButton = QPushButton('오림', self)
        
        fileButton.setGeometry(10,10,100,30)
        paintButton.setGeometry(110,10,100,30)
        orimButton.setGeometry(210,10,100,30)
        
        fileButton.clicked.connect(self.fileFunction)
        paintButton.clicked.connect(self.paintFunction)
        orimButton.clicked.connect(self.orimFunction)
        
    def fileFunction(self):
        self.img = cv.imread('soccer.jpg')
        self.img2 = np.copy(self.img)
        self.mask = np.zeros((self.img.shape[0],self.img.shape[1]), dtype=np.uint8)
        self.mask[:,:] = cv.GC_PR_BGD
        cv.imshow('file', self.img)
        # cv.namedWindow('file')
        cv.setMouseCallback('file', self.paintFunction)
        while True :
            if cv.waitKey(1) == self.ord('q') :
                break
    BrushSiz = 9
    LColor, RColor = (255,0,0), (0,0,255)
    
    def paintFunction(self, event, x, y, flags, param) :
        if event == cv.EVENT_LBUTTONDOWN :
            cv.circle(self.img2, (x,y), self.BrushSiz, self.LColor, -1)
            cv.circle(self.mask, (x,y), self.BrushSiz, cv.GC_FGD, -1)
        elif event == cv.EVENT_RBUTTONDOWN :
            cv.circle(self.img2, (x,y), self.BrushSiz, self.RColor, -1)
            cv.circle(self.mask, (x,y), self.BrushSiz, cv.GC_FGD, -1)
        elif event == cv.EVENT_MOUSEMOVE and flags == cv.EVENT_FLAG_LBUTTON :
            cv.circle(self.img2, (x,y), self.BrushSiz, self.LColor, -1)
            cv.circle(self.mask, (x,y), self.BrushSiz, cv.GC_FGD, -1)
        elif event == cv.EVENT_MOUSEMOVE and flags == cv.EVENT_FLAG_RBUTTON :
            cv.circle(self.img2, (x,y), self.BrushSiz, self.RColor, -1)
            cv.circle(self.mask, (x,y), self.BrushSiz, cv.GC_FGD, -1)
        cv.imshow('file', self.img2)
        
    background = np.zeros((1,65), np.float64)
    foreground = np.zeros((1,65), np.float64)

    def orimFunction(self) :
        cv.grabCut(self.img, self.mask, None, self.background, self.foreground, 1, cv.GC_INIT_WITH_MASK)
        self.mask2 = np.where((self.mask == cv.GC_BGD) | (self.mask == cv.GC_PR_BGD), 0,1).astype('uint8')
        self.grab = self.img*self.mask2[:,:,np.newaxis]
        cv.imshow('Grab Cut', self.grab)

        
        
        
app = QApplication(sys.argv)
win = orim()
win.show()
app.exec()

        
