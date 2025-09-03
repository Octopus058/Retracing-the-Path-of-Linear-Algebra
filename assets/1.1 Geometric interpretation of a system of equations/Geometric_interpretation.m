clear; clc; close all;

x = linspace(-2, 2, 400);
y1 = 2*x;           
y2 = (x + 3)/2;     

% Row picture
figure;
plot(x, y1, 'b-', 'LineWidth', 2); hold on;
plot(x, y2, 'r-', 'LineWidth', 2);

xi = 1; yi = 2;  
plot(xi, yi, 'ko', 'MarkerSize', 4, 'MarkerFaceColor', 'k');
text(xi, yi, '(1,2)', ...
     'VerticalAlignment','bottom', ...
     'HorizontalAlignment','right', ...
     'FontSize',12, 'Color','k');

legend('2x - y = 0', '-x + 2y = 3', 'Intersection', 'Location', 'best');
xlabel('x'); ylabel('y');
title('Row picture of the system');
grid on; axis equal;

% Column picture
figure;
A1 = [2; -1];
A2 = [-1; 2];
b  = [0;  3];

quiver(0,0,A1(1), A1(2), 0,'b','LineWidth',2); hold on;
quiver(0,0,A2(1), A2(2), 0,'r','LineWidth',2);
quiver(0,0,b(1),  b(2),  0,'k','LineWidth',2);

A2s = 2*A2;
quiver(A1(1), A1(2), A2s(1), A2s(2), 0, 'm--', 'LineWidth',1.5);

triX = [0, A1(1), A1(1)+A2s(1), 0];
triY = [0, A1(2), A1(2)+A2s(2), 0];
plot(triX, triY, 'k:', 'LineWidth',1);

legend('col 1','col 2','b','col 1 + 2*col 2','triangle','Location','best');
xlabel('x'); ylabel('y');
title('Column picture of the system');
grid on; axis equal;