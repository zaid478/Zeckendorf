
function Z1=main_v1(image,operation,mode)

[zecklist,map2]=binpattern();

 if (mode == 'g')
 [Z,Z1,Z2]=zeck_check(image,zecklist,operation);

else if (mode == 'c')

output = zeros(size(image));
output(:,:,1)= main_v1(image(:,:,1));
output(:,:,2)= main_v1(image(:,:,2));
output(:,:,3)= main_v1(image(:,:,3));
Z1= output
 end
 end
 
 
 
 end
