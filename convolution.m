clc;
clear all;
x=[1 2 3 1];
h=[1 2 1 -1];
n1=length(x);
n2=length(h);
for i=1:n1+n2-1
    y(i)=0
end
for i=1:n1
    for j=1:n2
        y(i+j-1)=y(i+j-1)+x(i)*h(j)
    end
end
lagval=((n1-1)+(n2-1))/2;
lag=-lagval:lagval;
stem(lag,y)
%plot(y);