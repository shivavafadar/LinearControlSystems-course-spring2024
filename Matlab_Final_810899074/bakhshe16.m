J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;

s = tf('s');
G = K/((J*s+b)*(L*s+R)+K^2);

figure;
bode(G)
title('Bode Plot of the Original Plant')
grid on;

figure;
nyquist(G);
grid on;


