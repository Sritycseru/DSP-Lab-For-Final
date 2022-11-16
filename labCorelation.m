f = 5;
n = 500;
t = 0:1/n:1;
x = sin(2*pi*f*t);
y = cos(2*pi*f*t);
[corr,lags] = MyXcorr(x,x);
subplot(1,1,1);
plot(lags,corr);
%normalize korar jonno
plot(lags,corr/length(t));