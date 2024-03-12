import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
from tensorflow.keras.optimizers import Adam

#1단계 데이터 준비 
(x_train, y_train), (x_test,y_test) = ds.mnist.load_data()
#1차원으로
x_train = x_train.reshape(60000,784)
x_test = x_test.reshape(10000, 784)
x_train = x_train.astype(np.float32)/255
x_test = x_test.astype(np.float32)/255
y_train = tf.keras.utils.to_categorical(y_train, 10)
y_test = tf.keras.utils.to_categorical(y_test, 10)

dmlp = Sequential()
dmlp.add(Dense(units = 1024, activation='relu', input_shape=(784,)))
dmlp.add(Dense(units = 512, activation='relu'))
dmlp.add(Dense(units = 512, activation='relu'))
dmlp.add(Dense(units = 10, activation='softmax'))

dmlp.compile(loss='categorical_crossentropy', optimizer=Adam(learning_rate = 0.0001), metrics=['accuracy'])
hist = dmlp.fit(x_train, y_train, batch_size=128, epochs=50, validation_data=(x_test, y_test),verbose=2)
res = dmlp.evaluate(x_test, y_test, verbose=0)
print('정확률', res[1]*100)
dmlp.save('dmlp_trained_h5')
import matplotlib.pyplot as plt

plt.plot(hist.history['accuracy'],'b--')
plt.plot(hist.history['val_accuracy'],'b')
plt.title('Accuracy Graph')
plt.xlabel('epochs')
plt.ylabel('accuracy')
plt.legend(['train','test'])
plt.grid()
plt.show()

plt.plot(hist.history['loss'],'b--')
plt.plot(hist.history['val_loss'],'b')
plt.title('Loss Graph')
plt.xlabel('epochs')
plt.ylabel('loss')
plt.legend(['train','test'])
plt.grid()
plt.show()

























