# Zeckendorf
This repository contains code for Zeckendorf encoding for images. It is a research based experimental code.

# How to Run
If you want to execute Zeckendorf encoding on an image, do the following :
1)  Read that image and store in a variable ( img = imread('test.jpg')    )
2)  Call the function main_v1 with three parameters : Name of image variable,a string contains the name of opeartion and a string denotes the rgb/gray of the image . It should be noted that Intersection is identified by "i" and Union is identified by "u". RGB mode is denoted by "c" and Gray version is denoted by "g" 

     Example : z_img = main_v1(img,"i","c")
