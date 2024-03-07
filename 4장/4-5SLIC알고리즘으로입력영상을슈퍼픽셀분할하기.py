import cv2 as cv
import skimage
import numpy as np

img = skimage.data.coffee()
cv.imshow('Coffer Image', cv.cvtColor(img, cv.COLOR_RGB2BGR))

slice1 = skimage.segmentation.slic(img, compactness=20, n_segments=600)
sp_img0 = skimage.segmentation.mark_boundaries(img, slice1)
sp_img1 = np.uint8(sp_img0*255)

slice2 = skimage.segmentation.slic(img, compactness=100, n_segments=1200)
sp_img2 = skimage.segmentation.mark_boundaries(img, slice2)
sp_img2 = np.uint8(sp_img2*255)

cv.imshow('compact20', cv.cvtColor(sp_img1, cv.COLOR_RGB2BGR))
cv.imshow('compact40', cv.cvtColor(sp_img2, cv.COLOR_RGB2BGR))

cv.waitKey()
cv.destroyAllWindows()