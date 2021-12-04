clear all;
f=500;
Fs = 8000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-15)*T;        % Time vector
S = 0.7*sin(2*pi*f*t) 
subplot(2,2,1)
plot(1000*t(1:50),S(1:50),"Blue","linewidth",1)
title('Sine Wave')
xlabel('t (milliseconds)')
ylabel('S(t)')
Y = fft(S);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
g= Fs*(0:(L/2))/L;
subplot(2,2,2)
plot(g,P1,"Blue","linewidth",1) 
title('Sine Wave')
xlabel('f (Hz)')
ylabel('|P1(f)|')
X = S + 2*randn(size(t));
subplot(2,2,3)
plot(1000*t(1:50),X(1:50),"R","linewidth",1);xlabel("Time");ylabel("Amlitude")
title("Noisy Signal")
Y = fft(X);
PN = abs(Y/L);
PN1 = PN(1:L/2+1);
PN1(2:end-1) = 2*PN1(2:end-1);
subplot(2,2,4)
plot(g,PN1,"R","linewidth",1) 
title('Noisy Signal F_Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')

