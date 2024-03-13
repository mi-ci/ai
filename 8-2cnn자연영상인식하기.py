import numpy as np
import tensorflow as tf
import tensorflow.keras.datasets as ds
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv2D, MaxPooling2D, Flatten, Dropout, Dense
from tensorflow.keras.optimizers import Adam 

(x_train, y_train), (x_test, y_test) = ds.cifar10.load_data()
x_train = x_train.astype(np.float32)/255
x_test = x_test.astype(np.float32)/255

y_train = tf.keras.utils.to_categorical(y_train, 10)
y_test = tf.keras.utils.to_categorical(y_test, 10)

cnn = Sequential()
cnn.add(Conv2D(32, (3,3), activation='relu', input_shape=(32,32,3)))
cnn.add(Conv2D(32, (3,3), activation='relu'))
cnn.add(MaxPooling2D(pool_size=(2,2), strides=2))
cnn.add(Dropout(0.25))
cnn.add(Conv2D(64, (3,3), activation='relu'))
cnn.add(Conv2D(64, (3,3), activation='relu'))
cnn.add(MaxPooling2D(pool_size=(2,2)))
cnn.add(Dropout(0.25))
cnn.add(Flatten())

cnn.add(Dense(units=512, activation='relu'))
cnn.add(Dropout(0.25))
cnn.add(Dense(units=10, activation='softmax'))

cnn.compile(loss='categorical_crossentropy', optimizer=Adam(learning_rate=0.001), metrics=['accuracy'])
hist = cnn.fit(x_train, y_train, batch_size=128, epochs=30, validation_data=(x_test,y_test), verbose=2)

res = cnn.evaluate(x_test,y_test,verbose=0)
print("정확률", res[1]*100)

import matplotlib.pyplot as plt

plt.plot( hist.history['accuracy'],'r--')
plt.plot( hist.history['val_accuracy'],'r')

plt.title('Accuracy graph')

plt.xlabel('epochs')  #"학습횟수
plt.ylabel('accuracy') #정확률
plt.legend(['train', 'test'])
plt.grid()
plt.show()

plt.plot( hist.history['loss'])
plt.plot( hist.history['val_loss'])
plt.title('Loss graph')
plt.xlabel('epochs')  #"학습횟수
plt.ylabel('loss') #손실
plt.legend(['train', 'test'])
plt.grid()
plt.show()




















