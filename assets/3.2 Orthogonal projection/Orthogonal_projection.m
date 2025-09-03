v = [1; 2];
b = [3; 1];

p = (v'*b)/(v'*v) * v;
e = b - p;

figure; hold on; grid on; axis equal;

t = linspace(-1, 2, 20);
plot(v(1)*t, v(2)*t, 'k--', 'LineWidth', 1);

quiver(0, 0, b(1), b(2), 0, 'r', 'LineWidth', 2, 'MaxHeadSize', 0.5);
quiver(0, 0, p(1), p(2), 0, 'b', 'LineWidth', 2, 'MaxHeadSize', 0.5);
quiver(p(1), p(2), e(1), e(2), 0, 'g', 'LineWidth', 2, 'MaxHeadSize', 0.5);

legend({'S','b','p','e'}, 'Location','best');
xlabel('x'); ylabel('y');
hold off;