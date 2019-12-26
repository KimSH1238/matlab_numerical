%% Holly Moore
% Matlab for Engineers - 4th Edition
% Chapter 5 Homework Solutions
clear,clc, close all %  The close all command closes all figure windows
% Because there are so many figures created in this set of exercises, I
% have reused the figure numbers.  To view them, please execute this M-file
% using cell mode - if you don't, the earlier figures will be overwritten
% by the latter figures
%% * Problem 5.1
%a
x=0:0.1:10;  % Select a spacing that creates smooth plots
y=exp(x);
figure(1)
plot(x,y)
title('y=exp(x)'),xlabel('x-axis'), ylabel('y-axis')
grid on
%% b
y=sin(x);

plot(x,y)
title('y=sin(x)'), xlabel('x-axis'), ylabel('y-axis')
grid on
%% c
a=5;
b=2;
c=4;
y=a*x.^2 + b*x + c;

plot(x,y)
title('y=a*x.^2 + b*x + c'), xlabel('x-axis'), ylabel('y-axis')
grid on
%% d
y=sqrt(x);

plot(x,y)
title('y=sqrt(x)'), xlabel('x-axis'),ylabel('y-axis')
grid on
%% * Problem 5.2

y = [12, 14, 12, 22, 8, 9];
plot(y)
title('A line graph'), xlabel('Index Number'), ylabel('y-axis')
%% * Problem 5.3
x = -pi:0.01*pi:pi;
y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);
y=[y1',y2',y3'];

plot(x,y)
title('Multiple lines on one plot'), xlabel('angle, radians'), ylabel('y-axis')           
% or

plot(x,y1,x,y2,x,y3)
title('Multiple lines on one plot'), xlabel('angle, radians'), ylabel('y-axis')
%% * Problem 5.4

plot(x,y1,'--r',x,y2,'-b',x,y3,':g')
title('Multiple lines on one plot'), xlabel('angle, radians'),ylabel('y-axis')
%% * Problem 5.5    
% a continuation of problem 5.4
axis([-6,6,-1,1])
legend('sin(x)','sin(2x)','sin(3x)')
text(-2,0.6,'Plot of sin functions')
%% * Problem 5.6
v0 = 100;
theta = pi/4;   % don't use angle as a variable name - it is a Matlab function name
t = 0:0.01:20;
g = 9.8;
h = t.*v0.*cos(theta);
v = t.*v0.*sin(theta) - 1/2*g.*t.^2;

plot(t,h)
title('Horizontal Projectile Distances'), xlabel(' time, sec'), ylabel('horizontal distance, m')
%% 
plot(t,v)
title('Vertical Projectile Distances'), xlabel(' time, sec'), ylabel('vertical distance, m')
%% * Problem 5.7

plot(h,v)
title('Ballistic Trajectory of a Projectile'), xlabel('horizontal distance, m'), ylabel('vertical distance, m')
%% * Problem 5.8
comet(h,v)
title('Ballistic Trajectory of a Projectile'), xlabel('horizontal distance, m'), ylabel('vertical distance, m')
%% * Problem 5.9

h1 = t.*v0.*cos(pi/2);
v1 = t.*v0.*sin(pi/2) - 1/2*g.*t.^2;
h2 = t.*v0.*cos(pi/4);
v2 = t.*v0.*sin(pi/4) - 1/2*g.*t.^2;
h3 = t.*v0.*cos(pi/6);
v3 = t.*v0.*sin(pi/6) - 1/2*g.*t.^2;
plot(h1,v1,'-',h2,v2,'--',h3,v3,':')
legend('pi/2','pi/4','pi/6')
% Note - the projectile fired at an angle of pi/2 goes straight up and
%  back down again - it may be hidden in the y-axis - use the axis command
%  to adjust the grid so that it is visible
axis([-50,1800,-1000,600])
title('Launch Angles Matter')
xlabel('horizontal distance, m')
ylabel('vertical distance, m')
%% * Problem 5.10

theta = [pi/2, pi/4, pi/6];
[Theta,T] = meshgrid(theta,t)
h = T.*v0.*cos(Theta);
v = T.*v0.*sin(Theta) - 1/2*g.*T.^2;
plot(h,v)
legend('pi/2','pi/4','pi/6')
title('Launch Angles Matter'), xlabel('horizontal distance, m'), ylabel('vertical distance, m')
axis([-50,1800,-1000,600])
%% * Problem 5.11

load tensile_testing_data.dat
%a) Find the stress and strain values
area=pi*.505^2/4;
stress=tensile_testing_data(:,1)/area;
strain=(tensile_testing_data(:,2)-2)/2;
[stress',strain']
%b and c) 
plot(strain,stress,'-ok')
title('Stress/Strain Behavior of an Unknown Metal')
xlabel('Strain, in/in')
ylabel('Stress, psi')
%d
text(.01,4e4,'Yield Point')
%% Problem 5.12  
% load the ace data interactively or use the ace_data.dat file
% a
load ace_data.dat
year = ace_data(:,1);
ace = ace_data(:,2);
plot(year,ace) 
% or... plot(ace_data(:,1), ace_data(:,2))
title('Accumulated Cyclone Energy'), xlabel('year') ,ylabel('Ace index')
% b
avg=mean(ace);
hold on
plot([year(1),year(end)],[avg,avg],'-r')
hold off
%% c)
running_avg_ace = filter(ones(1,10)/10,1,ace);

plot(year,ace,year,running_avg_ace)
title('Accumulated Cyclone Energy'),xlabel('year'),ylabel('Ace index')
legend('Annual Ace Values','10 year running average')

%%  Problem 5.13
%a
clear,clc
x=0:0.1:10;  % Select a spacing that creates smooth plots
y=exp(x);
subplot(2,2,1)
plot(x,y)
title('y=exp(x)'), xlabel('x-axis'),ylabel('y-axis')
grid on
%b
y=sin(x);
subplot(2,2,2)
plot(x,y)
title('y=sin(x)'), xlabel('x-axis'), ylabel('y-axis')
grid on
%c
a=5;
b=2;
c=4;
y=a*x.^2 + b*x + c;
subplot(2,2,3)
plot(x,y)
title('y=a*x.^2 + b*x + c'), xlabel('x-axis'), ylabel('y-axis')
grid on
%d
y=sqrt(x)
subplot(2,2,4)
plot(x,y)
title('y=sqrt(x)'),xlabel('x-axis'),ylabel('y-axis')
grid on
%% Problem 5.14
clear,clc,clf
v0 = 100;
theta = pi/4;   % don't use angle as a variable name - it is a Matlab function name
t = 0:0.01:20;
g = 9.8;
h = t.*v0.*cos(theta);
v = t.*v0.*sin(theta) - 1/2*g.*t.^2;
subplot(2,2,1)
plot(t,h)
title('Horizontal Projectile Distances'), xlabel(' time, sec'), ylabel('horizontal distance, m')
subplot(2,2,2)
plot(t,v)
title('Vertical Projectile Distances'), xlabel(' time, sec'), ylabel('vertical distance, m')
subplot(2,2,3)
plot(h,v)
title('Ballistic Trajectory of a Projectile'), xlabel('horizontal distance, m'), ylabel('vertical distance, m')
subplot(2,2,4)
theta = [pi/2, pi/4, pi/6];
[Theta,T] = meshgrid(theta,t)
h = T.*v0.*cos(Theta);
v = T.*v0.*sin(Theta) - 1/2*g.*T.^2;
plot(h,v)
legend('pi/2','pi/4','pi/6')
title('Launch Angles Matter'), xlabel('horizontal distance, m'), ylabel('vertical distance, m')
axis([-50,1800,-1000,600])
%% * Problem 5.15
theta = 0:0.01:2*pi;
%a
subplot(2,2,1)
r= sin(theta).^2 + cos(theta).^2;
polar(theta, r)
title('sin(theta).^2 + cos(theta).^2')
%b
subplot(2,2,2)
r = sin(theta);
polar(theta,r)
title('sin(theta)')
%c
subplot(2,2,3)
r=exp(theta/5);
polar(theta,r)
title('exp(theta/5)')
%d
subplot(2,2,4)
r = sinh(theta);
polar(theta,r)
title('sinh(theta)')
%% * Problem 5.16
subplot(2,2,1)
theta =0:0.01*pi:2*pi;
r = 5*cos(3*theta);
polar(theta,r)
r=2.5*cos(4*theta);
hold on
polar(theta,r)
title('A Flower')
hold off
subplot(2,2,2)
r=5-5*sin(theta);
polar(theta,r)
title('A Heart')
subplot(2,2,3)
theta=[0:pi/6:2*pi];
r=[1,0.5,1,0.5,1,0.5,1,0.5,1,0.5,1,0.5,1];
%  Here's a more elegant way to define r
% n = 1:length(theta);
% r=(((-1).^(n+1))+1)./4 +0.5
polar(theta,r)
title('Six pointed star')
subplot(2,2,4)
theta=[0:pi/3:2*pi];
r=ones(1,7);
polar(theta,r)
title('Hexagon')

%% Problem 5.17
t=0:30;
P=1000*exp(0.08.*t);
format bank
[t',P']
subplot(2,2,1)
plot(t,P)
title('Continuous Interest')
ylabel('dollars')
subplot(2,2,2)
semilogx(t,P)
title('Continuous Interest')
subplot(2,2,3)
semilogy(t,P)
title('Continuous Interest')
xlabel('time,years')
ylabel('dollars')
subplot(2,2,4)
loglog(t,P)
title('Continuous Interest')
xlabel('time,years')
%% * Problem 5.18
t=0:2:46;
year=t+1965;
d = 30*2.^(t./2);
[year',d']

subplot(2,2,1)
plot(year,d)
title('Moore''s Law')
ylabel('transistors/square inch')
subplot(2,2,2)
semilogx(year,d)
title('Moore''s Law')
subplot(2,2,3)
semilogy(year,d)
title('Moore''s Law')
xlabel('year')
ylabel('transistors/square inch')
subplot(2,2,4)
loglog(year,d)
title('Moore''s Law')
xlabel('year')
%% * Problem 5.19
clf
load transistor_count.dat
year=transistor_count(:,2);
count=transistor_count(:,1);
t=year-1971;
d = 2300*2.^(t./2);
semilogy(year,count,'o',year,d)
legend('Data','Predicted')
title('Comparison of Predicted Transistor Density vs Actual Data')
xlabel('Year')
ylabel('Transistor Count')
%% * Problem 5.20

clf
Q = 1000;
k0 = 10;
R= 8.314;
T=300:50:1000;
k=k0*exp(-Q./R./T);
subplot(2,1,1)
plot(T,k)
title('Reaction Rate Constants')
xlabel('Temperature, K')
ylabel('Rate constant, 1/sec')
subplot(2,1,2)
semilogy(1./T,k)
title('Reaction Rate Constants')
xlabel('Temperature, K')
ylabel('Rate constant, 1/sec')
%% * Problem 5.21
G = [68, 83, 61, 70, 75, 82, 57, 5, 76, 85, 62, 71, 96, 78, 76, 68, 72, 75, 83, 93];
sorted_grades = sort(G)

subplot(1,2,1)
bar(sorted_grades)
title('Test Results')
xlabel('Student Number')
ylabel('Score')
subplot(1,2,2)
hist(G)
title('Test Results')
xlabel('Score')
ylabel('# Students')
%% * Problem 5.22

clf
grades = [2,4,8,4,2];
pie(grades)
title('Grade Distribution')
legend('A','B','C','D','E')
%% 
clf
pie3(grades)
title('Grade Distribution')
legend('A','B','C','D','E')
%% Problem 5.23
edges=[0,60,70,80,90,100.1];
n=histc(G,edges)
bar(n)
title('Grade Distribution')
%% Problem 5.24
screws =[
       2345.00       2343.00
       4363.00       5766.00
       3212.00       4534.00
       4565.00       4719.00
       8776.00       3422.00
       7679.00       2200.00
       6532.00       3454.00
       2376.00       7865.00
       2238.00       6543.00
       4509.00       4508.00
       5643.00       2312.00
       1137.00       4566.00];
   %or
   load screws.dat

   bar(screws)
   title('Screw Inventory')
   xlabel('Month')
   ylabel('# On Hand')
   legend('2004','2005')
 %%  Problem 5.25
   data = randn(1,1000)*3.5 + 70;
   hist(data)
   title('Random Data')
   xlabel('data value')
   ylabel('# of values in bin')
%% Problem 5.26
clf % clear figure
v0 = 100;
theta = pi/4;   % don't use angle as a variable name - it is a Matlab function name
t = 0:0.01:20;
g = 9.9;
vertical = t.*v0.*sin(theta) - 1/2*g.*t.^2;
horizontal = t.*v0*cos(theta);
a=plotyy(t,vertical,t,horizontal) % setting the plot equal to a variable 
% name known as a figure handle allows us to set the right hand axis label
title({'Horizontal and Vertical Distance Traveled';' by a Projectile'})
% Just for fun I put the title on two lines, by using a cell array
xlabel('time, seconds')
ylabel('Height, meters')
ylabel(a(2),'Horizontal Distance, meters')  
%% Problem 5.27
clf %clear figure
v0 = 100;
theta = pi/4;   % don't use angle as a variable name - it is a Matlab function name
t = 0:0.01:20;
g = 9.9;
vertical = t.*v0.*sin(theta) - 1/2*g.*t.^2;
velocity = v0*sin(theta)-g*t;
a=plotyy(t,vertical,t,velocity) 
title({'Vertical Distance and Velocity';' of a Projectile'})
% Just for fun I put the title on two lines, by using a cell array
xlabel('time, seconds')
ylabel('Height, meters')
ylabel(a(2),'Velocity, m/s')
%% * Problem 5.28
clf %clear figure
cold_work=[10 275 43
15	310	30
20	340	23
25	360	17
30	375	12
40	390	7
50	400	4
60	407	3
68	410	2]
%or
load cold_work.dat
a = plotyy(cold_work(:,1),cold_work(:,2),cold_work(:,1),cold_work(:,3))
title('Effect of Cold Work on Physical Properties')
xlabel('%Cold Work')
ylabel('Yield Strength, MPa')
ylabel(a(2),'Ductility')


%% * Problem 5.29

clf %clear figure
x = 0:pi/100:20*pi;
y = x.*sin(x);
z = x.*cos(x);
subplot(2,2,1)
plot(x,y)
xlabel('x value')
ylabel('y value')
title('y=x sin(x)')
subplot(2,2,2)
polar(x,y)
title('y=x sin(x)')
subplot(2,2,3)
plot3(x,y,z)
title('Boing')
xlabel('x values')
ylabel('y values')
zlabel('z values')

%% * Problem 5.31
x = -5:0.5:5;
y = x;
[X,Y]=meshgrid(x,y);
Z = sin(sqrt(X.^2 + Y.^2));
clf %clear figure
mesh(Z)
title('sin(sqrt(X.^2 + Y.^2))')
xlabel('row index number')
ylabel('column index number')
zlabel('function value')
%%

subplot(2,1,1)
surf(Z)
title('sin(sqrt(X.^2 + Y.^2))')
xlabel('row index number')
ylabel('column index number')
zlabel('function value')
subplot(2,1,2)
surf(X,Y,Z)
title('sin(sqrt(X.^2 + Y.^2))')
xlabel('X value')
ylabel('Y value')
zlabel('function value')
%% 
subplot(2,2,1)
surf(X,Y,Z)
subplot(2,2,2)
surf(X,Y,Z)
shading interp
colormap hot
subplot(2,2,3)
contour(X,Y,Z)
subplot(2,2,4)
surfc(X,Y,Z)
%% Problem 5.32
hax=axes('Position',[0.35,0.35,0.3,0.3]);
mesh(Z)
   