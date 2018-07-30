%converting zeckendrof to binary maps
% 
function [binPat,map2]=binpattern()
f_list=cell(1,255);
for i=1:255
[~,~,f_list{i}] = zeckendorf (i);
end

binPat{1,1} = uint8([0 0 0 0 0 0 0 0 0 0 0 0]);
keySet =   {1, 2, 3, 5,8,13,21,34,55,89,144,233};
valueSet = [1,2,3,4,5,6,7,8,9,10,11,12];
mapObj = containers.Map(keySet,valueSet);
map2=containers.Map(valueSet,keySet);


for i=1:255
    Pat = uint8([0 0 0 0 0 0 0 0 0 0 0 0]);
    list = f_list{i};
    for j=1:numel(list)
        n = list(j);
        Pat(mapObj(n)) = 1;
    end
    binPat{1,i+1} = Pat;
end
end