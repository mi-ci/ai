import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
from tensorflow.keras.optimizers import SGD, Adam

#1단계 데이터 준비 
(x_train, y_train), (x_test,y_test) = ds.mnist.load_data()
#1차원으로
x_train = x_train.reshape(60000,784)
x_test = x_test.reshape(10000, 784)
x_train = x_train.astype(np.float32)/255
x_test = x_test.astype(np.float32)/255
y_train = tf.keras.utils.to_categorical(y_train, 10)
y_test = tf.keras.utils.to_categorical(y_test, 10)
#2단계 모델선택
mlp_sgd = Sequential()
#신경망 구조선택
mlp_sgd.add(Dense(units = 512, activation='tanh', input_shape=(784,)))
mlp_sgd.add(Dense(units = 10, activation='softmax'))
#3단계 학습
mlp_sgd.compile(loss='MSE', optimizer=SGD(learning_rate = 0.01), metrics=['accuracy'])
hist_sgd = mlp_sgd.fit(x_train, y_train, batch_size=128, epochs=50, validation_data=(x_test, y_test),verbose=2)
res = mlp_sgd.evaluate(x_test, y_test, verbose=0)
print('정확률', res[1]*100)

mlp_adam = Sequential()
mlp_adam.add(Dense(units = 512, activation='tanh', input_shape=(784,)))
mlp_adam.add(Dense(units = 10, activation='softmax'))

mlp_adam.compile(loss='MSE', optimizer=Nadam(learning_rate = 0.001), metrics=['accuracy'])
hist_adam = mlp_adam.fit(x_train, y_train, batch_size=128, epochs=50, validation_data=(x_test, y_test),verbose=2)
res = mlp_adam.evaluate(x_test, y_test, verbose=0)
print('정확률', res[1]*100)

import matplotlib.pyplot as plt

plt.plot(hist_sgd.history['accuracy'],'r--')
plt.plot(hist_sgd.history['val_accuracy'],'r')
plt.plot(hist_adam.history['accuracy'],'b--')
plt.plot(hist_adam.history['val_accuracy'],'b')
plt.title('Comparison of SGD and Adam optimizers')
plt.ylim((0.7, 1.0))
plt.xlabel('epochs')
plt.ylabel('accuracy')
plt.legend(['train_sgd','val_sgd','train_adam','val_adam'])
plt.grid()
plt.show()

























