clc;
clear all;
close all;
Am =1;
Ac=2;
fm=2;
fc=20;
t= 0:0.001:1;
k=14;
B=k*Am/fm;
m= Am*sin(2*pi*fm*t);
c= Ac*cos(2*pi*fc*t);
y=Ac*cos(2*pi*fc*t+B*(sin(2*pi*fm*t)));

subplot(3,1,1);
plot(t,m);
title('Message Signal');

subplot(3,1,2);
plot(t,c);
title('Carrier Signal');

subplot(3,1,3);
plot(t,y);
title('Modulated Signal');
