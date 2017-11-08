
z=zeros(1, 21);   
for i=6 : 6 :21 
z(1,i)=1; 
end  

 
    n= 0:20; 
    m= -5:15; 
     
figure(1)  
subplot(2,1,1), stem(n,z,'r*'),title('E4 a'), grid
subplot(2,1,2), stem(m,z,'b*'),title('E4 a'), grid 


    t= abs(10-n);
    
figure(2) 
stem(n,t,'rd'), title('E4 b') 

    q1= -15:25; 
    q2= 0:50; 
     
    x1=sin((pi/17)*q1); 
    x2=cos((pi/sqrt(23))*q2); 

 
figure(3) 
plot(q1,x1,q2,x2),grid,title('E4 c sinus si cosinus') 

figure(4) 
subplot(2,1,1), plot(q1,x1,'r*'),grid,title('E4 c sinus') 
subplot(2,1,2), plot(q2,x2,'b*'),grid,title('E4 c cosinus') 
  
figure(5) 
subplot(2,1,1), stem(q1,x1,'rd'),grid,title('E4 c sinus') 
 subplot(2,1,2), stem(q2,x2,'bd'),grid,title('E4 c cosinus') 