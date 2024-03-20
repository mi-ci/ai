import numpy as np
import tensorflow as tf

t0 = tf.constant(1)
print(t0)
t0 = tf.constant(1.)
print(t0.dtype)
print(t0.shape)
print(tf.rank(t0))

t0 = tf.constant([1,1])
print(t0)
print(tf.rank(t0))

t0 = tf.constant([[1,1],[2,2]])
print(t0)
print(tf.rank(t0))

t0 = tf.constant([[[1,1],[2,2]],[[3,3],[4,4]]])
print(t0)
print(tf.rank(t0))

t0 = tf.constant([[[[1,1],[2,2]],[[3,3],[4,4]]], [[[1,1],[2,2]],[[3,3],[4,4]]]])
print(t0)
print(tf.rank(t0))

t1 = tf.constant([1,2,3])
print(t1)

t2 = tf.constant([[1.,2.], [1.,2.]])
t3 = tf.constant([[1,2], [1,2]])
t3 = tf.cast(t3, tf.float32)
print(t2+t3)

t1 = tf.constant([[[1,1],[2,2]],[[3,3],[4,4]]])
t2 = tf.constant([[[1.,1.],[2.,2.]],[[3.,3.],[4.,4.]]])
t2 = tf.cast(t2, tf.int32)
print(t1-t2)
tf.subtract(t1, t2)

t0 = tf.constant([[[[1],[2],[3]],[[4],[5],[6]]], [[[7],[8],[9]],[[10],[11],[12]]], [[[13],[14],[15]],[[16],[17],[18]]]])
print(t0.shape)

[[[[1,2],[3,4]],[[5,6],[7,8]],[[9,10],[11,12]]],[[[13,14],[15,16]],[[17,18],[19,20]],[[21,22],[23,24]]]]






























































