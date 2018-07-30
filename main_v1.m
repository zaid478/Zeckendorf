
function Z1=main_v1(image,operation)

[zecklist,map2]=binpattern();


% gImg=rgb2gray(image);
% s=fspecial('gaussian');
 %img=imfilter(gImg,s);
 [Z,Z1,Z2]=zeck_check(image,zecklist,operation);
 
 
 end


 
