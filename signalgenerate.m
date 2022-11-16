f1=4; %kHz
f2=8; %kHz
f3=16; %kHz

a1=10;
a2=20;
a3=40;

n=1000;
t=0:1/1000:1;


x=a1*sin(2*pi*f1*t)+a2*sin(2*pi*f2*t)+a3*sin(2*pi*f3*t);
subplot(2,1,1);
plot(t,x,'blue');
hold on


fs1=40;
t1=0:1/40:1;
x1=a1*sin(2*pi*f1*t1)+a2*sin(2*pi*f2*t1)+a3*sin(2*pi*f3*t1);
subplot(2,1,1);
plot(t1,x1,'red');
%hold on

fs2=20;
t2=0:1/20:1;
x2=a1*sin(2*pi*f1*t2)+a2*sin(2*pi*f2*t2)+a3*sin(2*pi*f3*t2);
subplot(2,1,1);
plot(t2,x2,'yellow');
hold on

%Quantization

signal1=x;
nbit=2
level=2.^nbit
mn=min(min(10,20),40);
mx=max(max(10,20),40);
scalingfactor=(mx-mn)/(level);
signal1=signal1/scalingfactor;
signal1=round(signal1);
signal1=signal1*scalingfactor;
subplot(2,1,2);

plot(t,signal1,'red');
hold on
%Error
signal1=signal1-x;
subplot(2,1,2);

plot(t,signal1,'green');


