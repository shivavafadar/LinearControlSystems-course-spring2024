J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;
s = tf('s');
G = K/((J*s+b)*(L*s+R)+K^2);

Kp = 1;
Kd = 1;
Ki_values = linspace(100, 300, 5);
t = 0:0.01:5;
figure;
hold on;
grid on;
for Ki = Ki_values
    C = pid(Kp, Ki, Kd);
    sys_cl = feedback(C*G, 1);
    step(sys_cl, t);
end
title('Step Response with Different Integral Gains (Ki) for PID Controller');
legend(arrayfun(@(Ki) sprintf('Ki = %.1f', Ki), Ki_values, 'UniformOutput', false));
figure;
hold on;
grid on;
disturbance = 0.1/s; 
for Ki = Ki_values
    C = pid(Kp, Ki, Kd);
    sys_cl = feedback(C*G, 1);
    sys_cl_dist = sys_cl + disturbance;
    step(sys_cl_dist, t);
end
title('Response to Disturbance with Different Integral Gains (Ki) for PID Controller');
legend(arrayfun(@(Ki) sprintf('Ki = %.1f', Ki), Ki_values, 'UniformOutput', false));
