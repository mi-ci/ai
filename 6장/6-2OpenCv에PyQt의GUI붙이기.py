from PyQt5.QtWidgets import *
import sys
import winsound
import cv2 as cv


class Video(QMainWindow) :
    def __init__(self) :
        super().__init__()
        self.setWindowTitle('비디오에서 프레임 수집')
        self.setGeometry(200,200,500,100)
        
        videoButton = QPushButton('비디오켜기', self)
        captureButton = QPushButton('프레임잡기', self)
        saveButton = QPushButton('프레임저장', self)
        quitButton = QPushButton('나가기', self)
        self.label = QLabel('환영합니다!', self)
        
        videoButton.setGeometry(10,10,100,30)
        captureButton.setGeometry(110,10,100,30)
        saveButton.setGeometry(210,10,100,30)
        quitButton.setGeometry(310,10,100,30)
        self.label.setGeometry(10,40,500,70)
        
        videoButton.clicked.connect(self.videoFunction)
        captureButton.clicked.connect(self.captureFunction)
        saveButton.clicked.connect(self.saveFunction)
        quitButton.clicked.connect(self.quitFunction)
        
    def videoFunction(self) :
        self.cap = cv.VideoCapture(0, cv.CAP_DSHOW)
        while True :
            ret, self.frame = self.cap.read()
            if not ret :
                print('프레임 획득에 실패하여 루프를 빠집니다')
                break
            cv.imshow('Youtube LIVE', self.frame)
            key = cv.waitKey(1)
            if key == ord('q') :
                break
    def captureFunction(self) :
        self.label.setText('주파수 1000으로 3초 동안 삑 소리를 냅니다')
        winsound.Beep(1000, 3000)
    def saveFunction(self) :
        self.label.setText('주파수 1000으로 3초 동안 삑 소리를 냅니다')
        winsound.Beep(1000, 3000)
    
    def quitFunction(self) :
        self.close()
            
app = QApplication(sys.argv)
win = Video()
win.show()
app.exec()