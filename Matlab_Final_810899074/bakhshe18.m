J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;

s = tf('s');
G = K / ((J*s + b) * (L*s + R) + K^2);

Kp = 100;
Ki = 200;

C = Kp + Ki/s;

T = feedback(G*C, 1);

figure;
nyquist(T);
grid on;
title('Nyquist Plot of the System with PI Controller');
