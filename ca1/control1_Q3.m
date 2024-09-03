clc;
clear;
syms a b t s
A = (2*(s-1)*exp(-2*s))/(s^2-2*s+2);
A=simplify(collect(expand(ilaplace(A))));
disp("a)");
disp(A);


B=1/(s^3+8*s^2+17*s+10);
B=simplify(collect(expand(ilaplace(B))));
disp("b)");
disp(B);


D=(10*(s+2)*(s+4))/((s+1)*(s+3)*(s+5)^2);
D=simplify(collect(expand(ilaplace(D))));
disp("d)");
disp(D);