import tensorflow.keras.datasets as ds
from tensorflow.keras.preprocessing.image import ImageDataGenerator
import matplotlib.pyplot as plt

(x_train, y_train), (x_test, y_test) = ds.cifar10.load_data()
x_train = x_train.astype('float32')
x_train /= 255
x_train = x_train[1:2,]
print(x_train)
print(type(x_train))
print(x_train.shape)

# y_train = y_train[0:100,]
# class_names = ['airplane', 'automobile', 'bird', 'cat', 'deer', 'dog', 'frog', 'horse', 'ship', 'truck']

# plt.figure(figsize=(20,2))
# plt.suptitle('First 15 images in the train set')
# for i in range(100) :
#     plt.subplot(1, 100, i+1)
#     plt.imshow(x_train[i])
#     plt.xticks([])
#     plt.yticks([])
#     plt.title(class_names[int(y_train[i])])
# plt.show()

# batch_siz = 4
# generator = ImageDataGenerator(rotation_range = 30.0, width_shift_range = 0.4, height_shift_range = 0.4, horizontal_flip = True)
# gen = generator.flow(x_train, y_train, batch_size = batch_siz)

# for a in range(3) :
#     img, label = gen.next()
#     plt.figure(figsize=(8,2.4))
#     plt.suptitle('Generatio trial' + str(a+1))
#     for i in range(batch_siz) :
#         plt.subplot(1, batch_siz, i+1)
#         plt.imshow(img[i])
#         plt.xticks([])
#         plt.yticks([])
#         plt.title(class_names[int(label[i])])
#     plt.show()
        