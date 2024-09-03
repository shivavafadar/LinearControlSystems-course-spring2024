J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;
s = tf('s');
G = K/(s*((J*s+b)*(L*s+R)+K^2));

rlocus(G);
grid on;
title('Root Locus Plot of Open Loop System');
xlabel('Real Axis');
ylabel('Imaginary Axis');
