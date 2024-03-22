import tensorflow as tf
(x_train,y_train),(x_test,y_test) = tf.keras.datasets.mnist.load_data()

import matplotlib.pyplot as plt
rows = 10
cols = 10

fig = plt.figure(figsize=(20,20))

for i in range(1,rows*cols+1) :
    ax = fig.add_subplot(rows,cols,i)
    ax.imshow(x_train[i-1], cmap='gray')
    ax.set_xlabel(y_train[i-1])
    ax.set_xticks([])
    ax.set_yticks([])
