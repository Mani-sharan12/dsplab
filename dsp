clc;
clear;
close;
t=-3:0.01:4;
x=aaa(t);
plot(t,x);
grid;
legend("X(t)");
xlabel("Time");
ylabel("Amplitude");

//function file

function [ x ] = aaa( t )
x1=exp(-0.5*t).*(t>=-3&t<=-1);
x2=((-3*t)+1).*(t>-1&t<=0);
x3=(1).*(t>0&t<=2);
a=0.5;
T=0.4;
w=(2*pi)/T;
x4=((exp(a*t)).*(sin(w*t))).*(t>2&t<=4);
x=x1+x2+x3+x4;
end
