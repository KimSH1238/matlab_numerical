t=0:0.1:6*pi
x=t.^0.5.*sin(2.*t)
y=t.^0.5.*cos(2.*t)
z=0.5.*t
plot3(x,y,z,'k','linewidth',1)
grid on

% finite method in matlab
x= -1:0.01:3;
y=1:0.01:4;
[X,Y]=meshgrid(x,y);
Z=X.*Y.^2./(X.^2+Y.^2);

% mesh of surface plot is created with mesh(), surf()
figure(1);
mesh(X,Y,Z);
xlabel('x')
ylabel('y')
zlabel('z')

figure(2);
surf(X,Y,Z);
xlabel('x')
ylabel('y')
zlabel('z')
box on
% color can changed by colopmap(C)
% C is RGB vector
% can be first by colormap default
% colormap hot and etc

% polar cordinate grid on xyplane > pol2cart
[th,r]=meshgrid((0:5:360)*pi/180,1:.1:2);
Z=r.*th;
[X,Y]=pol2cart(th,r)
figure(3);
mesh(Z);
figure(4);
surf(Z);
figure(5);
mesh(X,Y,Z);
figure(6);
surf(X,Y,Z);

xs= -3:0.25:3;
ys= -3:0.25:3;
[X,Y]=meshgrid(xs,ys);
Z=1.8.^(-1.5.*sqrt(X.^2+Y.^2)).*cos(0.5.*Y).*sin(X);
figure(7);
surf(Z);

x= -3:0.025:3;
y= -3:0.025:3;
[X,Y]=meshgrid(x,y);
Z=1.8.^(-1.5.*sqrt(X.^2+Y.^2)).*cos(0.5.*Y).*sin(X);
figure(8);
mesh(Z);
% surf need less detail, mesh can plot more detail
% view command can look at certain direction
view(90,0)
% view(2) > default top view, view(3) > 3d cad view,
% view([x,y,z]) > view at direction vector

% Q 7-19
% x= -2:0.01:2;
% z= -0.5:0.01/8:0;
% [X,Z]=meshgrid(x,z);
% B=1.2;
% L=4;
% T=0.5;
% Y=B/2.*(1-4.*(X/L).^2).*(1-4.*(Y/T).^2);
% figure(9);
% mesh(X,Y,Z);
% cant do

B=1.2;
L=4;
T=0.5;
x= -2:.01:2;
z= -0.5:.01:0;
[X,Z]=meshgrid(x,z);
Y1=B/2*(1-(2*X/L).^2).*(1-(Z/T).^2);
figure(9);
mesh(X,Y1,Z);
hold on
Y2=-B/2*(1-(2*X/L).^2).*(1-(Z/T).^2);
axis([-2, 2, -1, 3, -1, 0.5])
mesh(X,Y2,Z);
colormap(cool);

B=1.2;
L=4;
T=0.5;
xs= -2:.05:2;
zs= -0.5:.05:0;
[X,Z]=meshgrid(xs,zs);
Y1=B/2*(1-(2*X/L).^2).*(1-(Z/T).^2);
figure(10);
surf(X,Y1,Z);
hold on
Y2=-B/2*(1-(2*X/L).^2).*(1-(Z/T).^2);
surf(X,Y2,Z);
% 3d graph axis command
axis([-2, 2, -1, 3, -1, 1])
colormap(hot)

% polyval
p=[1, -12.1, 40.59, -17.015, -71.95, 35.88];
y=polyval(p,x);
z=polyval(p,2)
figure(11);
plot(y,x);
figure(12)
plot(x,y);
% poly : roots to eq, roots : eq to roots