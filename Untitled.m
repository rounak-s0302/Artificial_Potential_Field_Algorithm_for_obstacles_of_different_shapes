% v = [0 0 0; 5 5 0; 0 5 0; 0 0 2; 5 5 2; 0 5 2];
% f = [1 2 5 4; 2 3 6 5; 1 3 6 4];
% axes('XLim',[-7 7],'YLim',[0 5],'ZLim',[0 2],'XDir','reverse','YDir','reverse'); view(3);
% patch('Faces',f,'Vertices',v,'FaceAlpha',0);

N1 = 4;
N2 = 5;                                               % Sides
a1 = linspace(0, 2*pi, N1+1);
a2 = linspace(0, 2*pi, N2+1);                          % Angles
x1 = [1; 1]*cos(a1);
y1 = [1; 1]*sin(a1);
z1 = [-ones(1,size(x1,2)); ones(1,size(x1,2))];
x2 = [1; 1]*cos(a2);
y2 = [1; 1]*sin(a2);
z2 = [-ones(1,size(x2,2)); ones(1,size(x2,2))];
figure
surf(x1, y1, z1, 'FaceColor','g')
surf(x2, y2, z2, 'FaceColor','g')
hold on
patch(x1', y1', z1', 'r')
patch(x2', y2', z2', 'r')
hold off
axis equal
view(-25, 30)

x = [20 70 0; 20 70 60; 20 90 60 ; 20 90 0];
y = [40 70 60; 20 70 60; 20 70 0; 40 70 0];
z = [40 70 60; 40 90 60; 20 90 60; 20 70 60];
c = [2 2 2; 3 3 0; 2 2 2; 0 0 3];
fill3(x,y,z,c)

x = [0 0 0; 0 0 2; 0 2 2; 0 2 0];
y = [2 0 2; 0 0 2; 0 0 0; 2 0 0];
z = [2 0 2; 2 2 2; 0 2 2; 0 0 2];
c = [2 2 2; 3 3 0; 2 2 2; 0 0 3];
fill3(x,y,z,c)