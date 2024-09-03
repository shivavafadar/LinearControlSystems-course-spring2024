J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;

s = tf('s');
G = K / ((J*s + b) * (L*s + R) + K^2);

Td = 0.1;

G_with_delay = G * exp(-Td*s);

figure;
bode(G_with_delay)
title('Bode Plot of the Plant with Sensor Delay')
grid on;

figure;
nyquist(G_with_delay);
grid on;
G = K / (s*((J*s + b) * (L*s + R) + K^2));

Td = 0.1;

G_with_delay = G * exp(-Td*s);

figure;
bode(G_with_delay)
title('Bode Plot of the Plant with Sensor Delay')
grid on;

figure;
nyquist(G_with_delay);
grid on;
