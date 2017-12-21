P=40;
D=18; 
N=50;
 

w0=2*pi/P;
timp_triunghi=0:0.02:D; 
Semnal_triunghiular= sawtooth((pi/2)*timp_triunghi,0.5)/2+0.5;
t = 0:0.02:P; 
x = zeros(1,length(t)); 
x(t<=D)=Semnal_triunghiular; 


figure(1);
plot(t,x); 
title('x(t)(linie continua) si reconstructia (linie punctata)');
hold on;


for k=-N:N 
    x_t = Semnal_triunghiular; 
    x_t = x_t .* exp(-j*k*w0*timp_triunghi); 
    X(k+51)=0; 
    for i = 1: length(timp_triunghi)-1 
        X(k+51) = X(k+51) + (timp_triunghi(i+1)-timp_triunghi(i))* (x_t(i)+x_t(i+1))/2; 
    end 
end 


for i = 1: length(t) 
    x_reconstruit(i) = 0; 
    for k=-N:N 
        x_reconstruit(i) = x_reconstruit(i) + (1/P)*X(k+51)*exp(j*k*w0*t(i));
    end 
end 
plot(t,x_reconstruit,'--'); 

 
figure(2);
w=-N*w0:w0:N*w0;
stem(w/(2*pi),abs(X));
title('Spectrul de amplitudini al semnalului')  


% Din teoria seriilor Fourier putem intelege ca orice semnal periodic poate fi aproximat 
% printr-o suma infinita de sin si cos.
% Coeficientii lui si sin si cos reprezinta spectrul de amplitudini al semnalului. 
% Semnalul reconstruit folosind un numar finit de termeni se apropie ca 
% forma de semnalul original dar are o anume eroare. Cu cat marim 
% numarul de coeficienti cu atat aceasta  eroare va fi  mai mica.  
% In plus se observa faptul ca semnalul poate fi aproximat printr-o 
% suma de sinusoide: variatiile semanlului au un caracter de sinusoida. 