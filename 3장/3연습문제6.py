import numpy as np
import matplotlib.pyplot as plt
import math
from matplotlib import cm
# 1차원
# x = np.linspace(-6, 6, 100)

# sigma = 1.0
# var = sigma * sigma
# y = np.exp(-(x**2)/(2.0*var)) / math.sqrt(2*np.pi*var)

# plt.plot(x,y)
# plt.show()


x = np.linspace(-6, 6, 100)
y = np.linspace(-6, 6, 100)
x,y = np.meshgrid(x,y)
sigma = 1.0
var = sigma * sigma
z = np.exp(-(x**2+y**2)/(2.0*var))/(2*np.pi*var)
fig = plt.figure()
ax = fig.add_subplot(111, projection = '3d')
ax.plot_surface(x,y,z,cmap=cm.jet)
plt.show()
