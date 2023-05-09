clc;
clear all;
close all;
am = 1
ac = 1
fc = 50
fm = 2
fs = 20
t = 1
t1 = 0:0.001:t
wm = 2*pi*fm
m = am*cos(wm*t1)
subplot(3,1,1)
plot(t1,m)
title('message signal')
xlabel('time')
ylabel('amplitude')
wc=2*pi*fc;
c=ac*cos(wc*t1)
subplot(3,1,2)
plot(t1,c)
title('carrier signal')
xlabel('time')
ylabel('amplitude')
pm=ac*cos(wc*t1+m.*fs)
subplot(3,1,3)
plot(t1,pm)
title('phase modulated signal')
xlabel('time')
ylabel('amplitude')

