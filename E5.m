F=50; 
t=0:0.0001:0.2; 
s=2*sin(2*pi*F*t); 

F1= 20; 
s1=2*cos(2*pi*F1*t); 
plot(t,s,t,s1), xlabel('Timp[s]'),grid 
