import cv2 as cv
import numpy as np
from tensorflow.keras.applications.resnet50 import ResNet50, preprocess_input, decode_predictions

model = ResNet50(weights='imagenet')

img = cv.imread('jinx.jpg')
x=np.reshape(cv.resize(img,(224,224)),(1,224,224,3))
s = preprocess_input(x)

preds = model.predict(x)
top5 = decode_predictions(preds, top=5)[0]
print('예측결과 :', top5)
