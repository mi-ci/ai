import tensorflow as tf

(x_train,y_train),(x_test,y_test) = tf.keras.datasets.fashion_mnist.load_data()
fm_label = ["T-shirt/top", "Trouser", "Pullover", "Dress", "Coat", "Sandal", "Shirt", "Sneaker", "Bag", "Ankle boot"]
import matplotlib.pyplot as plt
rows = 5
cols = 5

fig = plt.figure(figsize=(8,8))

for i in range(1,rows*cols+1) :
    ax = fig.add_subplot(rows,cols,i)
    ax.imshow(x_train[i-1])
    fig.tight_layout()
    yty
    ax.set_xticks([])
    ax.set_yticks([])