function [Z,Z1,Z2]=zeck_check(I1,zecklist,operation)
m=size(I1,1);
n=size(I1,2);
value = [1 2 3 5 8 13 21 34 55 89 144 233];
Z = zeros(m,n);
Z1 = zeros(m,n);
Z2 = zeros(m,n);
S=zeros(8,1);
S1 = zeros(8,1);
S2 = zeros(8,1);
for i=2:m-1
    for j=2:n-1
        J0=I1(i,j);  
        imagette=[I1(i-1,j-1) I1(i-1,j) I1(i-1,j+1) I1(i,j+1) I1(i+1,j+1) I1(i+1,j) I1(i+1,j-1) I1(i,j-1)];
        lJ0=zecklist{double(J0)+1};
        
        for k=1:8
                        
            f_list  = zecklist {double(imagette(k))+1};
          
                if (operation == 'u')
                b=bitor(f_list,lJ0);
                else if (operation == 'i')
                 b= bitand(f_list,lJ0)
                    end
                end
%                 c = f_list - b;
                s = (double(b).*value)';
                s = nonzeros(s);
                if(any(b)==0)
                    S(k)=0;
                    
                else
                    S(k)=sum(s);
                    
                    
                end
         end
S1 = S;
S2 = S;
Z(i,j)=min(S);
Z1(i,j) = max(S);
Z2(i,j) = sum(S);

    end
end

end