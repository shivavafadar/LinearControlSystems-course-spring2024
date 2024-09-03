x = linspace(-10, 10, 400);
[X, Y] = meshgrid(x, x);
Z = zeros(size(X));

% For x > 0
Z(X > 0) = Y(X > 0) > (X(X > 0) - 1) ./ (5 * X(X > 0));

% For x < 0
Z(X < 0) = Y(X < 0) > (X(X < 0) - 1) ./ (5 * X(X < 0));

figure;
hold on;
colormap([0.8 0.8 0.8; 0 0.7 0]); 
contourf(X, Y, Z, 1);
title('Region where 4 + x(20y - 4) > 0');
xlabel('x');
ylabel('y');
hold off;
