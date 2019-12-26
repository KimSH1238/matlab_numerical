%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 6 Homework Solutions
% This M-file calls the functions requested in the problem set.  Each
% function is stored in a separate M-file
clear,clc, close all
%% Problem 6.1
n = 10:10:100;
N=num_grains(n)
% Try a smaller spacing for plotting
n = 10:100;
N = num_grains(n);
figure(1)
subplot(1,2,1)
plot(n,N)
title('ASTM Grain Size'), xlabel('# of Grains'), ylabel('ASTM Grain Size')
% Although the problem did not ask for a semilog plot, the results are
% easier to interpret when displayed this way.
subplot(1,2,2)
semilogy(n,N)
title('ASTM Grain Size'), xlabel('# of Grains'), ylabel('ASTM Grain Size')
%% Problem 6.2
c = 2.9979e8;
m = logspace(1,6,7)
E = energy(m)
% Try a smaller spacing for plotting
m = logspace(1,6,1000);
E = energy(m);
subplot(2,2,1)
plot(m,E)
title('E=m*c^2'), xlabel('mass, kg'), ylabel('energy, J')
subplot(2,2,2)
semilogx(m,E)
title('E=m*c^2'), xlabel('mass, kg'), ylabel('energy, J')
subplot(2,2,3)
semilogy(m,E)
title('E=m*c^2'), xlabel('mass, kg'), ylabel('energy, J')
subplot(2,2,4)
loglog(m,E)
title('E=m*c^2'), xlabel('mass, kg'), ylabel('energy, J')
%% Problem 6.3
investment=1000;
years=10;
months=years*12;
i=.005; %compounded monthly
future_value(investment,i,months)
%% Problem 6.4
m = 1:10;
MW = [78.115, 46.07, 102.3];
table = nmoles(m,MW)
%% Problem 6.5
n = 1:10;
table = mass(n,MW)
%% Problem 6.6
h=0:1000:10000;
R =[7926/2, 4217/2];
% Since the height and the radius are in different units, we must change
% one of them to be consistent.  It seems like a good idea to measure the
% distance to the horizon in miles, therefore we'll change the hill height
% to miles
h = h./5280;
dist_to_horizon = distance(h,R)
%% Problem 6.7
t = 0:0.5:30;
h = height(t);
clf
plot(t,h)
title('Rocket Trajectory')
xlabel('time, sec')
ylabel('altitude, meters')
%b - The rocket starts to fall back toward the ground once it reaches the
%maximum height
[max_height, element] = max(h)
max_height_time = t(element)
%% Problem 6.8
t = 0:20;
[distance, velocity, acceleration] = freefall(t)
%% Problem 6.9
subplot(2,2,1)
polygon(5)
title('5 sided polygon')
subplot(2,2,2)
polygon(6)
title('6 sided polygon')
subplot(2,2,3)
polygon(7)
title('7 sided polygon')
subplot(2,2,4)
polygon(9)
title('9 sided polygon')
%% Problem 6.10
F = 0:40:200;
table = [F', F_to_K(F)']
%b
C = linspace(0,100,25)
table = [C',C_to_R(C)']
%c
C = 0:25:100;
table = [C',C_to_F(C)']
%% Problem 6.11
P = @(h) 13560*9.8*h;
%Since atmospheric pressure is 760 mmHg and is also equal to approximately
%101 kPa (which is 101000 Pa) - check the function with this information
atmospheric_pressure = P(760/1000)
%b
Pa_to_atm = @(Pressure) Pressure/101325
% check
Pa_to_atm(101325)
% c
h = 0.5:0.1:1.0;
Pa_to_atm(P(h))
% d
save P P
save Pa_to_atm Pa_to_atm
%% Problem 6.12
heat = @(deltaT) deltaT*1*1;
cal_to_J = @(cal) cal*4.2;
% test
heat(5)
cal_to_J(2)
%% Problem 6.13
%a)
my_function = @(x) -x.^2 - 5*x - 3 + exp(x);
%b)
clf
fplot(my_function,[-5,5])
title('A neat function plot')
xlabel('x - value')
ylabel('y - value')
xmin = fminbnd(my_function,-5,5);
ymin = my_function(xmin);
min_pt = [xmin,ymin]
%c
fminbnd(my_function,-5,5)
%% Problem 6.14
%a
height_handle=@height
%b
fplot(height_handle,[0,60])
%c
fzero(height_handle,40)
%% Problem 6.15
temperature_conversions
% This problem uses a primary function (temperature_conversions)
%  The function is called from this M-file, and then calls the subfunctions
%  necessary to solve the problem