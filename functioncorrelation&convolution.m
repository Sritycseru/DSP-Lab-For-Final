clc;
clear all;
x=[1 2 3 1];
h=[1 2 1 -1];
x1=xcorr(x,h);
subplot(2,1,1);
stem(x1);
%convolution
x2=conv(x,h);
subplot(2,1,2);
stem(x2);