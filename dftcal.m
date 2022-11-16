clc;
clear all;
fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
X = zeros(1,N);

x=sin(2*pi*1000*n*ts) + 0.5*sin(2*pi*2000*n*ts + 3*pi/4);
subplot(3,1,1);
plot(n,x);
title('Original Signal in time domain');
for m = 1:N
    for n = 1:N
        X(m) = X(m) + x(n)*exp(-2*j*pi*(n-1)*(m-1)/N);
    end
end
nt=0:N-1;
%disp(X)
subplot(3,1,2);
stem(nt,real(X));
xlabel('t'),
ylabel('frequency');


 ln=length(X)
 x=zeros(1,ln)

 for i=1:ln
     for n=1:ln
        x(i)=x(i)+((1/ln)*X(n)*exp(2*pi*1j*(i-1)*(n-1)/ln))
   end
 end
 subplot(3,1,3);

 
