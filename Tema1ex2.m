
f = 2000; 
t = 0:1/f:100; 
x = sawtooth(0.4*pi*t, 0.5);
                                
plot(t,x); 
 
xlabel('Time (sec)') 
ylabel('Amplitude') 
title('Triangular') 