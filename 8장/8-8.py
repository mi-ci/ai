import cv2 as cv
import numpy as np
import tensorflow as tf
import winsound
import pickle
import sys
from PyQt5.QtWidgets import *

cnn = tf.keras.models.load_model('cnn_for_stanford_dogs.h5')
dog_species = pickle.load(open('dog_species_names.txt', 'rb'))

class DogSpeciesRecognition(QMainWindow) :
    def __init__(self) :
        super().__init__()
        self.setWindowTitle('강아지인식')
        self.setGeometry(200,200,700,100)
        
        fileButton = QPushButton('파일', self)
        recogButton = QPushButton('인식', self)
        
        fileButton.setGeometry(10,10,100,30)
        recogButton.setGeometry(110,10,100,30)
        
        fileButton.clicked.connect(self.fileFunction)
        recogButton.clicked.connect(self.recogFunction)
    
    
    def fileFunction(self) :
        self.img = cv.imread('dog3.jpg')
        self.x = np.reshape(cv.resize(self.img,(224,224)),(1,224,224,3))
    def recogFunction(self) :
        x = preprocess_input(self.x)
        res = cnn.predict(x)[0]
        top5 = np.argsort(-res)[:5]
        top5_dog = [dog_species[i] for i in top5]
        for i in range (5):
            name = str(top5_dog[i]).split('-')[1]
            prob='(' + str(res[top5[i]]) + ')'
            print(name, prob)
app = QApplication(sys.argv)
win = DogSpeciesRecognition()
win.show()
app.exec()
        
    