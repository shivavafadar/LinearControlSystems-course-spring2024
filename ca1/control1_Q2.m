clc;
clear;
syms a b t s
B = t*exp(a*t)*cos(b*t);
B=simplify(collect(expand(laplace(B))));
disp("b)");
disp(B);


D=t^2*exp(-2*t)*sin(t);
D=simplify(collect(expand(laplace(D))));
disp("d)");
disp(D);


E=sin(4*t)/t;
E=simplify(collect(expand(laplace(E))));
disp("e)");
disp(E);