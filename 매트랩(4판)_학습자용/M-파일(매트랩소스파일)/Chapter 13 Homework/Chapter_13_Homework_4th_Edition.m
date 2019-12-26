%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 13 Homework Solutions
clear, clc, close all
%% Problem 13.1
V=1:6;
P=[2494, 1247, 831, 623, 499, 416];
%a
interp1(V,P,3.8)
%b
interp1(V,P,3.8,'spline')
%c
interp1(P,V,1000)
%d
interp1(P,V,1000,'spline')
%% Problem 13.2
%a
new_V=1:0.2:6;
new_P=interp1(V,P,new_V);
table=[new_V',new_P'];
disp('Volume    Pressure')
disp('  m^3     kPa')
fprintf(' %4.1f  %8.1f \n',table')
%b
figure(1)
plot(V,P,'o',new_V,new_P)
title('Pressure vs Volume at constant T')
xlabel('Volume, m{^3}')
ylabel('Pressure, kPa')

%% Problem 13.3
%a
new_V=1:0.2:6;
new_P=interp1(V,P,new_V,'spline');
table=[new_V',new_P'];
disp('Volume    Pressure')
disp('  m^3     kPa')
fprintf(' %4.1f  %8.1f \n',table')
%b
figure(2)
plot(V,P,'o',new_V,new_P)
title('Pressure vs Volume at constant T')
xlabel('Volume, m{^3}')
ylabel('Pressure, kPa')

%% Problem 13.4
V=[1:6]';
P_at_300K=[2494, 1247, 831, 623, 499, 416];
P_at_500K=[4157, 2078, 1386, 1039, 831, 693];
P=[P_at_300K;P_at_500K]'
%a
interp1(V,P,5.2)
%b
interp1(V,P,5.2,'spline')

%% Problem 13.5
T=[300,500]
new_P=interp2(T,V,P,400,V)
%b
new_v=1:0.2:6;
new_P=interp2(T,V,P,[300,400,500],new_v')

disp('Volume    Pressure at 300K   Pressure at 400K   Pressure at 500K')
disp('  m^3     kPa                 kPa                 kPa')
fprintf(' %4.1f  %8.1f             %8.1f          %8.1f\n',[new_v',new_P]')

%% Problem 13.6
new_P=interp2(T,V,P,425,5.2)

%% Problem 13.7
V=1:6;
P=[2494, 1247, 831, 623, 499, 416];
coef1=polyfit(V,P,1)
coef2=polyfit(V,P,2)
coef3=polyfit(V,P,3)
coef4=polyfit(V,P,4)

new_V=1:0.2:6;
new_P1=polyval(coef1,new_V);
new_P2=polyval(coef2,new_V);
new_P3=polyval(coef3,new_V);
new_P4=polyval(coef4,new_V);
new_P=[new_P1',new_P2',new_P3',new_P4'];
figure(3)
plot(V,P,'o',new_V,new_P)
title('Polynomial Curve fit of Pressure Volume Data')
xlabel('Volume, m{^3}')
ylabel('Pressure, kPa')
legend('data','first order','second order','third order', 'fourth order')

% The fourth order seems to do a pretty good job

%% Problem 13.8
coef = polyfit(1./V, P,1)
n=1;
R=8.314;
% Since P=1/V * nRT, nRT must equal coef(1)
T=coef(1)./n./R
figure(4)
plot(1./V,P)
title('Ideal Gas Law')
xlabel('Volume{^{-1}}, 1/m{^3}')
ylabel('Pressure, kPa')

%% Problem 13.9
R=[10 
15
25
40
65
100];
I=[11.11 
8.04
6.03
2.77
1.97
1.51];
figure(5)
subplot(2,2,1)
plot(R,I,'-o')
title('An Electrical Circuit')
xlabel('Resistance, ohms')
ylabel('Current, amps')
subplot(2,2,2)
plot(1./R,I,'-o')
title('An Electrical Circuit')
xlabel('Resistance{^{-1}}, ohms')
ylabel('Current, amps')
%c
coef=polyfit(1./R,I,1)
voltage=coef(1)
new_R=10:1:100;
new_I=polyval(coef,1./new_R);
subplot(2,1,2)
plot(1./R,I,'o',1./new_R,new_I)
xlabel('Resistance{^{-1}}, ohms')
ylabel('Current, amps')

%% Problem 13.10
figure(6)
T=200:200:1000;
k=[1.46e-7, 0.0012, 0.0244, 0.1099, 0.2710];
plot(1./T,log(k),'-o')
title('Arrhenius Equation')
xlabel('T{^{-1}}, degrees k^{-1}')
ylabel('reaction rate constant, log(k)')
coef=polyfit(1./T,log(k),1)
slope=coef(1)
intercept=coef(2)
Q=-slope*8.314
k0=exp(intercept)

%% Problem 13.11
P=[50000, 200000, 450000, 800000, 1250000];
I=100:100:500;
coef2=polyfit(I,P,2)
R=coef2(1)
figure(7)
plot(I,P,'o')
title('Electrical Power')
xlabel('Current, amps')
ylabel('Power, watts')
% b - Use the basic fitting tools in the figure window

%% Problem 13.12
figure(8)
subplot(2,1,1)
x=-1:0.1:1;
y = sin(x);
coef3=polyfit(x,y,3)
new_y=polyval(coef3,x)
plot(x,y,'o',x,new_y)
title('Modeling the sin function as a third order polynomial')
ylabel('y')

%There is great correlation - its a good fit
new_x=-4:0.1:4;
new_y=sin(new_x);
new_modeled_y=polyval(coef3,new_x);
subplot(2,1,2)
plot(new_x,new_y,new_x,new_modeled_y)
ylabel('y')
xlabel('angle, radians')

%% Problem 13.13
figure(9)
x=-5:5;
y=12*x.^3 - 5*x.^2 + 3;
num_diff=diff(y)./diff(x)
dydx=36*x.^2-10*x
table=[[num_diff,NaN]',dydx']
plot(x,table)
title('A Comparison of Numerical Derivatives and Analytical Derivatives')
legend('Numerical Derivative','Analytical Derivative')
xlabel('x')
ylabel('y')

%% Problem 13.14
figure(10)
t=0:8;
d=[0,60,110,170,220,270,330,390,460];
v=diff(d)./diff(t);
bar(t(1:8)+0.5,v)
title('Average Velocities between SLC and Denver')
xlabel('Time, hours')
ylabel('Velocity, mph')
%% Problem 13.15
figure(11)
t=[0
1.0
2.2
2.9
4.0
5.2
6.0
6.9
8.0
8.7
9.7
10];
d=[0
75
145
225
300
380
430
510
580
635
700
720];
v=diff(d)./diff(t)
plot(t(1:(end-1)),v)
title('Velocities')
xlabel('time, hours')
ylabel('Velocity, mph')
find(v>75)
overall_average_vel=720/10

%% Problem 13.16
t=0:24;
d=[0
107.37
210.00
307.63
400.00
484.60
550.00
583.97
580.00
549.53
570.00
699.18
850.00
927.51
950.00
954.51
940.00
910.68
930.00
1041.52
1150.00
1158.24
1100.00
1041.76
1050.00]';
figure(12)
subplot(2,2,1)
plot(t,d)
title('Model Rocket Vertical Trajectory')
xlabel('Time, sec')
ylabel('height, m')

v=diff(d)./diff(t);
subplot(2,2,2)
plot(t(1:(end-1)),v)
title('Model Rocket Vertical Velocity')
xlabel('Time, sec')
ylabel('Velocity, m/sec')
a=diff(v)./diff(t(1:(end-1)))
subplot(2,2,3)
plot(t(1:(end-2)),a)
title('Model Rocket Vertical Acceleration')
xlabel('Time, sec')
ylabel('Acceleration, m/sec{^2}')
%Staging occurs where the acceleration is the greatest

%% Problem 13.17
quad('5*x.^3-2*x.^2 +3',-1,1)
quadl('5*x.^3-2*x.^2 +3',-1,1)
double(int(sym('5*x^3-2*x^2 +3'),-1,1))

a=-1;
b=1;
5/4*(b.^4-a.^4)-2/3*(b.^3-a.^3)+3*(b-a)

%% Problem 13.18
a=25.48
b=1.520e-2
c=-0.7155e-5
d=1.312e-9
%This time I chose to use an anonymous function
Cp=@(T) a+b*T+c*T.^2+d*T.^3;
delta_h=quad(Cp,300,1000)

%% Problem 13.19
n=0.1;
R=8.314;
T=400;
V=@(P) -n.*R.*T./P;
quad(V,500,100)
%% Problem 13.20
% a)
y=dsolve('Dy=1-sin(t)','y(0)=1')
time=0:0.1:4;
y_analytical=subs(y,'t',time);
% b)
dydt=@(t,y) 1-sin(t);
[t,y]=ode45(dydt,[0,4],1)
plot(time,y_analytical,t,y)
title('Comparison of Analytical and Numerical Solutions')
xlabel('time')
ylabel('y-value')
%% Problem 13.21
%a)  Analytical Solution
y=dsolve('Dy=t^2+y','y(0)=0')
time=0:0.1:1;
y_analytical = subs(y,'t',time);
%b)  Numerical Solutions
dydt=@(t,y) t.^2 + y;
[t,y] = ode45(dydt,[0,1],0)
plot(time,y_analytical,t,y)
title('Comparison of Analytical and Numerical Solutions')
xlabel('time')
ylabel('y-value')
%% Problem 13.22
ode45(@blasius,[0,1],[0,0,0.332])


