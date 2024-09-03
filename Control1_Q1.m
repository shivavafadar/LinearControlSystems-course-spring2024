clc;
clear;
syms x
f = 2*x^5+33*x^4+128*x^3+88*x^2+126*x+55 ==0;
plot(solve(f),"r*")
grid on

