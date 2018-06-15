import os
import numpy as np
import matplotlib.pyplot as plt
from skimage.io import imread
from skimage.color import rgb2gray

folder = '/2017-06-14_09-40-59_1048600'
direct = os.getcwd() + folder

###define prepocess_image class
class preprocess_image():

    def readHSImages(self, direct):
        #change directory
        self.direct = direct
        os.chdir(self.direct)
        filelist = os.listdir(os.getcwd())

        ##get all ".png" files in required folder
        for fichier in filelist:
            if not(fichier.endswith(".png")):
                filelist.remove(fichier)

        ###remove file '1_0_0.png'
        filelist.remove('1_0_0.png')

        for i in range(len(filelist)):
            #band = rgb2gray(imread(filelist[i]))
            band = imread(filelist[i])
            #get first band 
            band = band[:,:,0]
            if i==0:
                outimage = band
            else:
                outimage = np.dstack((outimage , band))
                #print(filelist[i])
    
        return outimage
    
    def plot_image(self, band_i):
        self.band_i = band_i
        plt.figure(0)
        plt.imshow(self.band_i,cmap="gray")
        plt.show()


###read all image and output as a stack 3-D array
pre = preprocess_image()
image = pre.readHSImages(direct = direct)
print("The shape of images are:{}".format(image.shape))
###plot image
pre.plot_image(band_i = image[:,:,0])
