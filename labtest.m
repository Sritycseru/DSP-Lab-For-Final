clc;
clear all;
close all;
a = -5;
f = 4;
t = 0:0.001:1;
x = a*sin(2*pi*f*t);

a1 = -10;
f1 = 8;
t1 = 0:0.001:1;
y = a1*sin(2*pi*f1*t1)

n1 = length(x);
n2 = length(y);

subplot(2,2,1);
plot(t,x)
title('signal : x');
xlabel('t -> ');
ylabel('x -> ')
subplot(2,2,2);
plot(t1,y)
title('signal : y');
xlabel('t ->');
ylabel('x ->')

%autocorrelation
lag = -(n1-1):1:(n1-1)
h = flip(x);
for i = 1:n1+n1-1
    auto(i)=0;
end
for i = 1:n1
    for j = 1:n1
        %x(i)*h(i)
        auto(i+j-1) = auto(i+j-1)+x(i)*h(j);
    end
end
subplot(2,2,3);
plot(lag,auto);
title('otocorrelation');
xlabel('t ->');
ylabel('x ->')

%crosscorrelation
lagg = -(n2-1):1:(n1-1)
hh = flip(y);
for i = 1:n1+n1-1
    cross(i)=0;
end

for i = 1:n1
    for j = 1:n2
        cross(i+j-1) = cross(i+j-1)+x(i)*hh(i);
    end
end
subplot(2,2,4);
plot(lagg,cross);
title('crosscorrelation');
xlabel('t ->');
ylabel('x ->')

