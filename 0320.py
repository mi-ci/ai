import tensorflow as tf
import numpy as np

# Tensorflow 모델 만드는 방법
from tensorflow.keras.layers import Dense, Activation, Flatten, Input
# Dense(10, activation = 'softmax')
# Dense(10, activation = 'relu', name = 'Dense Layer1')
# Dense(10, kernel_initializer = 'he_normal')

# d1 = Dense(10, activation = 'relu', name = 'Dense1')
# Activation(d1)
# f1 = Flatten(input_shape=(128,3,2,2))

from tensorflow.keras.models import Sequential, Model
from tensorflow.keras.utils import plot_model

# model = Sequential()
# model.add(Input(shape=(28,28)))
# model.add(Dense(300, activation = 'relu', name='Dense1'))
# model.add(Dense(100, activation = 'relu', name='Dense2'))
# model.add(Dense(10, activation = 'softmax', name='Output'))
# model.summary()
# plot_model(model)

# model2 = Sequential([Input(shape=(28,28)),
#     model2.add(Dense(300, activation = 'relu', name='Dense1')),
#     model2.add(Dense(100, activation = 'relu', name='Dense2')),
#     model2.add(Dense(50, activation = 'relu', name='Dense3')),
#     model2.add(Dense(10, activation = 'softmax', name='Output'))
#                       ])
# model2.summary()

# x = np.array([1,2,3,4,5])
# y = np.array([1,2,3,4,5])
# x2 = np.array([11,12,13,14,15])
# print(np.shape(x))
# xx = tf.constant([1,2,3,4,5])
# print(xx)

# model3 = Sequential()
# model3.add(Dense(5, input_dim=1, activation='relu'))
# model3.add(Dense(3))
# model3.add(Dense(1))
# model3.summary()

# # 다중 입력 함수형 API
# inputs = Input(shape=(28,28,1))
# x = Flatten(input_shape=(28,28,1))(inputs)
# x2 = Dense(300, activation='relu')(x)
# x3 = Dense(100, activation='relu')(x2)
# x4 = Dense(10, activation='softmax')(x3)

# model4 = Model(inputs = inputs, outputs = x4)
# model4.summary()

# from tensorflow.keras.layers import Concatenate

# input2 = Input(shape=(28,28))
# hidden1 = Dense(100, activation = 'relu', name = 'h1')(input2)
# hidden2 = Dense(30, activation = 'relu', name = 'h2')(hidden1)
# con = Concatenate()([input2, hidden2])
# output = Dense(1,activation = 'softmax', name='out')(con)

# model5 = Model(inputs = input2, outputs = output)
# model5.summary()
# plot_model(model5)

# input_1 = Input(shape=(10,10), name = 'input1')
# input_2 = Input(shape=(10,28), name = 'input2')

# hidden_1 = Dense(100, activation='relu')(input_2)
# hidden_2 = Dense(10, activation='relu')(hidden_1)

# concat = Concatenate()([input_1,hidden_2])
# output = Dense(1, activation='sigmoid', name='output')(concat)
# model6 = Model(inputs = [input_1,input_2], outputs = output)
# model6.summary()
# plot_model(model6)

#서브클래싱
class MyModel(Model) :
    def __init__(self,units=30,activation='relu',**kwargs) :
        super().__init__()
        self.dense_layer1 = Dense(300, activation=activation)
        self.dense_layer2 = Dense(100, activation=activation)
        self.dense_layer3 = Dense(units, activation=activation)
        self.output_layer = Dense(10, activation='softmax')
    def call(self,inputs) :
        x = self.dense_layer1(inputs)
        x1 = self.dense_layer2(x)
        x2 = self.dense_layer3(x1)
        x3 = self.output_layer(x2)
        return x3
    
a = MyModel()
input1 = Input(shape=(10,10))
output1 = a.call(input1)
model = Model(inputs = input1, outputs = output1)
print()
print()
print()
model.summary()
plot_model(model)
hid = model.layers[0]
# hid = print(model.layers[0].name)
print(model.get_layer('input_2').get_weights())










































