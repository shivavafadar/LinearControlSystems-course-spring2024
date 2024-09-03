J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;
s = tf('s');
G = K/((J*s+b)*(L*s+R)+K^2);
Kp_values = linspace(10, 300, 10); 
t = 0:0.03:5;
figure;
hold on;
grid on;
for Kp = Kp_values
    C = pid(Kp);
    sys_cl = feedback(C*G, 1);
    step(sys_cl, t);
end
title('Step Response with Different Proportional Gains (Kp)');
legend(arrayfun(@(Kp) sprintf('Kp = %.1f', Kp), Kp_values, 'UniformOutput', false));
figure;
hold on;
grid on;
disturbance = 0.1/s; 
for Kp = Kp_values
    C = pid(Kp);
    sys_cl = feedback(C*G, 1);
    sys_cl_dist = sys_cl + disturbance;
    step(sys_cl_dist, t);
end
title('Response to Disturbance with Different Proportional Gains (Kp)');
legend(arrayfun(@(Kp) sprintf('Kp = %.1f', Kp), Kp_values, 'UniformOutput', false));
