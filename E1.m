
a=0:0.1:2;
lungime = length(a);
                             
b = ones(lungime, 1);
inmultire1 = a*b; 
inmultire2 = b*a; 
inmultire3 = ones(lungime);  
for i= 1: 1 :21
    for j= 1: 1:21 
        inmultire3(i,j) = b(i) * a(1,j)
    end 
end 
