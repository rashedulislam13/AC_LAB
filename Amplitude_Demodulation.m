clc;
clear all;
close all;
vm = 1;
vc = 1;
fc = 100;
fm = 5;
fs = 13000; %sampling frequency
t = 0:1/fs:0.5;
c = vc*sin(2*pi*fc*t);
m = vm*sin(2*pi*fm*t);
y = ammod(m,fc,fs);
subplot(4,1,1);
plot(t,m);
title('Modulating signal');
xlabel('Time');
ylabel('Amplitude');

subplot(4,1,2);
plot(t,c);
title('Carrier signal');
xlabel('Time');
ylabel('Amplitude');

subplot(4,1,3);
plot(t,y);
title('Modulated signal');
xlabel('Time');
ylabel('Amplitude');

%% Demodulation
d = demod(y,fc ,fs,'am');
subplot(4,1,4);
plot(t,d);
title('Demodulated signal');
grid on;