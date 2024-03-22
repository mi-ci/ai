import cv2 as cv
import matplotlib.pyplot as plt

img = cv.imread('dog3.jpg')
img = cv.cvtColor(img, cv.COLOR_BGR2RGB)
# img = cv.resize(img, dsize=(0,0), fx=0.3, fy=0.3, interpolation=cv.INTER_AREA)
# img_h_flip = cv.flip(img, 1)
# img_v_flip = cv.flip(img, 0)
# img_hv_flip = cv.flip(img_v_flip, 1)
# plt.imshow(img)
# plt.imshow(img_hv_flip)
# plt.show

rows = 2
cols = 2
j = 0
fig = plt.figure(figsize=(4,4))

for i in range(1,rows*cols+1) :
    ax = fig.add_subplot(rows,cols,i)
    if i == 1 :
        ax.set_xlabel('Original')        
    if i == 2 :
        i = 0
        ax.set_xlabel('V')        
    if i == 3 :
        i = 1
        ax.set_xlabel('VH')        
    if i == 4 :
        i = 0
        ax.set_xlabel('H')        
    img = cv.flip(img, i)
    ax.imshow(img)
    fig.tight_layout()
    ax.set_xticks([])
    ax.set_yticks([])