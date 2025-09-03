clear; clc; close all;

%% Ellipse

A = [2, 6; 6, 20];

[x, y] = meshgrid(linspace(-2,2,200));
z = 2*x.^2 + 12*x.*y + 20*y.^2;

figure; hold on; axis equal; grid on

hSurf = surf(x, y, z, 'FaceColor',[0.5 0.5 0.5], 'EdgeColor','none', 'FaceAlpha',0.6);

[xp, yp] = meshgrid(linspace(-2,2,20));
surf(xp, yp, ones(size(xp)), 'FaceColor',[0.8 0.8 0.8], 'FaceAlpha',0.3, 'EdgeColor','none');

contour3(x, y, z, [1 1], 'LineWidth',2, 'LineColor','r');

xlabel('x'); ylabel('y'); zlabel('z');
view(45,30); camup([0 0 1]);
zlim([0,5])

%% Ellipsoid

A1 = [2, -1, 0; -1, 2, -1; 0, -1, 2];
[X1, Y1, Z1] = meshgrid(linspace(-2,2,60));
F1 = 2*X1.^2 - 2*X1.*Y1 + 2*Y1.^2 - 2*Y1.*Z1 + 2*Z1.^2;

figure; hold on; axis equal; grid on

p1 = patch(isosurface(X1, Y1, Z1, F1, 1));
isonormals(X1, Y1, Z1, F1, p1);
set(p1, 'FaceColor','cyan', 'EdgeColor','none', 'FaceAlpha',0.4);

[V1, D1] = eig(A1);
L1 = 1./sqrt(diag(D1));
for i = 1:3
    dir = V1(:,i);
    plot3([-L1(i)*dir(1), L1(i)*dir(1)], ...
          [-L1(i)*dir(2), L1(i)*dir(2)], ...
          [-L1(i)*dir(3), L1(i)*dir(3)], ...
          'k-', 'LineWidth', 2);
end

xlabel('x'); ylabel('y'); zlabel('z');
view(45,30); camup([0 0 1]); zlim([0,2]);