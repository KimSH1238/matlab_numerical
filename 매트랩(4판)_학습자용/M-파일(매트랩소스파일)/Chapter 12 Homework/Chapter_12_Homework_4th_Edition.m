%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 12 Homework Solutions
clear, clc, close all
%% Problem 12.1
syms a b c d x
se1 = x^3 -3*x^2 +x
	se2 = sin(x) + tan(x)
	se3 =(2*x^2 - 3*x  - 2)/(x^2 - 5*x)
	se4 = (x^2 -9)/(x+3)


%% Problem 12.2
se1/se2
se3*se4
se1/x
se1+se3
%% Problem 12.3
sq1=sym('x^2 + y^2 =4')
sq2 = sym('5*x^5 - 4*x^4 + 3*x^3 + 2*x^2 -x =24 ')
sq3 = sym('sin(a) + cos(b) -x*c = d') 
sq4 = sym('(x^3 - 3*x)/(3-x)=14')
%% Problem 12.4
numden(se4)
%numden(sq4)  % numden does not work with equations, only with expressions
%% Problem 12.5a
expand(se1)
factor(se1)
collect(se1)
simplify(se1)
simple(se1)
%% Problem 12.5b
expand(se2)
factor(se2)
collect(se2)
simplify(se2)
simple(se2)
%% Problem 12.5c
expand(se3)
factor(se3)
collect(se3)
simplify(se3)
simple(se3)
%% Problem 12.5d
expand(se4)
factor(se4)
collect(se4)
simplify(se4)
simple(se4)
%% Problem 12.5e
expand(sq1)
%factor(sq1)  Doesn't work with muPad
%collect(sq1)
simplify(sq1)
simple(sq1)
%% Problem 12.5f
expand(sq2)
% factor(sq2)
% collect(sq2)
simplify(sq2)
simple(sq2)
%% Problem 12.5g
expand(sq3)
% factor(sq3)
% collect(sq3)
simplify(sq3)
simple(sq3)
%% Problem 12.5h
expand(sq4)
% factor(sq4)
% collect(sq4)
simplify(sq4)
simple(sq4)
%% Problem 12.6
solve(se1)
solve(se2)
solve(se3)
solve(se4)
%% Problem 12.7
solve(sq1)
solve(sq2)
solve(sq3)
solve(sq4)
%% Problem 12.8
solve(sq3,a)
%% Problem 12.9
% I chose not to define each variable separately in this problem
pendulum=sym('2*pi*f=sqrt(m*g*L/Inertia)')
L=solve(pendulum,'L')
% Note:  in earlier versions of the symbolic capability, I was
% a legitimate variable name.  In later versions it is reserved, and
% represents the imaginary number.  Compare the difference in the results
% if you use I instead of Inertia in the problem.
%% Problem 12.10
double(subs(L,{'m','f','Inertia','g'},{10,0.2,60,9.8}))
%% Problem 12.9 alternate solution
syms f m g L Inertia
pendulum=sym('2*pi*f=sqrt(m*g*L/Inertia)')
L=solve(pendulum,L)
%% Problem 12.10 alternate solution
double(subs(L,{m,f,Inertia,g},{10,0.2,60,9.8}))
%% Problem 12.11
Kinetic_Energy=sym('ke=1/2*m*V^2')
solve(Kinetic_Energy,'V')
%% Problem 12.12
ke=solve(Kinetic_Energy,'ke')
k_energy=subs(ke,{'m','V'},{2000, 60})
gc=32.174
k_energy=double(k_energy/gc*5280^2/3600^2/778.169)
% Check units
syms lbm mile hour ft sec lbf Btu
units=lbm*(mile/hour)^2/((lbm*ft/sec^2)/lbf)*(ft/mile)^2/(sec/hour)^2/(ft* lbf/Btu)
%% Problem 12.13
heat_capacity=sym('Cp=a+b*T+c*T^2+d*T^3')
Temp=solve(heat_capacity,'T')
%% Problem 12.14
A=28.9;
B=-0.1571e-2;
C=0.8081e-5;
D=-2.873e-9;
CP_N2=subs(heat_capacity,{'a','b','c','d'},{A,B,C,D})
T=solve(CP_N2,'T')
T=subs(T,'Cp',29.15)
T = double(T)

%% Problem 12.15
syms A B C T P
Antoine=sym('log10(P)=A-B/(C+T)')
T=solve(Antoine,'T')
double(subs(T,{A,B,C,P},{6.89272,1203.531,219.888,760}))
%% Problem 12.16
cost=sym('x+2*x+2*x-1=35')
solve(cost)
% convert from a symbolic answer to a double
double(ans)
%% Problem 12.17
tic
syms x1 x2 x3 x4 x5 x6 x7
eq1=sym(3*x1 + 4*x2 + 2*x3 - x4 + x5 + 7*x6 + x7-42.)
eq2=sym(2*x1 - 2*x2 + 3*x3 - 4*x4 + 5*x5 + 2*x6 + 8*x7 - 32.)
eq3=sym(x1 + 2*x2 +3*x3 + x4 +2*x5 +4*x6 +6*x7 - 12.')
eq4=sym(5*x1 + 10*x2 + 4*x3 +3*x4 + 9*x5 -2*x6 + x7 - -5.)
eq5=sym(3*x1 + 2*x2 - 2*x3 - 4*x4 - 5*x5 - 6*x6 + 7*x7 - 10.)
eq6=sym(-2*x1 + 9*x2 + x3 + 3*x4 - 3*x5 + 5*x6 + x7 - 18.)
eq7=sym(x1 - 2*x2 - 8*x3 + 4*x4 + 2*x5 + 4*x6 + 5*x7-17.)
[x1 x2 x3 x4 x5 x6 x7]=solve(eq1,eq2,eq3,eq4,eq5,eq6,eq7)
toc
%% Problem 12.18
tic
coef=[3 4 2 -1 1 7 1;
    2 -2 3 -4 5 2 8;
    1 2 3 1 2 4 6;
    5 10 4 3 9 -2 1;
    3 2 -2 -4 -5 -6 7;
    -2 9 1 3 -3 5 1;
    1 -2 -8 4 2 4 5];
results=[42; 32; 12; -5; 10; 18; 17];
answer=coef\results
toc
%% Problem 12.19
syms x mtops mbottoms
water=0.2*mtops +0.65*mbottoms -50;
ethanol=-100*x +0.35*mtops +0.25*mbottoms;
methanol = 100*x + 0.45*mtops +0.1*mbottoms-50;
results=solve(water,ethanol,methanol)
results.mbottoms
results.mtops
results.x
%% Problem 12.20
syms x y
eq1=sym('x^2 + y^2 =42')
eq2=sym('x + 3*y + 2*y^2=6')
[x,y]=solve(eq1,eq2)
% repeat with decimals
eq1=sym('x^2 + y^2 =42.0')
eq2=sym('x + 3*y + 2*y^2=6.0')
[x,y]=solve(eq1,eq2)
%% Problem 12.21
clear

figure(1)
%a
subplot(2,2,1)
% If x has not been defined as symbolic use this approach
ezplot('exp(x)',[0,10])
grid on
xlabel('x')
ylabel('y')
%
subplot(2,2,2)
syms x
% Once x has been defined as symbolic we don't need to use string input in
% the ezplot function
ezplot(sin(x),[0,10])
grid on
xlabel('x')
ylabel('y')
%
subplot(2,2,3)
ezplot('5*x^2 + 2*x +4',[0,10])
grid on
xlabel('x')
ylabel('y')
%
subplot(2,2,4)
ezplot(sqrt(x),[0,10])
grid on
xlabel('x')
ylabel('y')

%% Problem 12.22
y1=sin(x);
y2=sin(2*x);
y3=sin(3*x);
figure(2)
ezplot(y1)
hold on
ezplot(y2)
ezplot(y3)
hold off

%% Problem 12.23
figure(3)
subplot(2,2,1)
ezplot('x^2+y^3')
subplot(2,2,2)
ezplot('x+x^2-y')
subplot(2,2,3)
ezplot('x^2+3*y^2=3')
subplot(2,2,4)
ezplot('x-y-4')

%% Problem 12.24
figure(4)
subplot(2,2,1)
ezplot('sin(t)', 'cos(t)')
subplot(2,2,2)
% define t as a symbolic variable
syms t
ezplot(sin(t),3*cos(t))
subplot(2,3,4)
ezplot(sin(t), cos(3*t))
subplot(2,3,5)
ezplot(10*sin(t), t*cos(t),[0,30])
subplot(2,3,6)
ezplot(t*sin(t), t*cos(t), [0,30])

%% Problem 12.25
h=t*100*cos(pi/4);
v=t*100*sin(pi/4) -1/2*9.8*t^2;
figure(5)
ezplot(h,v,[0,20])
grid on
%% Problem 12.26
figure(6)
subplot(2,2,1)
ezpolar('sin(theta)^2+cos(theta)^2')
subplot(2,2,2)
ezpolar('sin(theta)')
subplot(2,2,3)
ezpolar('exp(theta/5)',[0, 20])
subplot(2,2,4)
ezpolar('sinh(theta)',[0,20])



%% Problem 12.27
figure(8)
ezplot3('t*sin(t)','t*cos(t)','t',[0,30])

%% Problem 12.28
figure(9)
Z=sym('sin(sqrt(X^2+Y^2))/sqrt(X^2+Y^2)')
subplot(2,2,1)
ezmesh(Z)
subplot(2,2,2)
ezsurf(Z)
subplot(2,2,3)
ezcontour(Z)
subplot(2,2,4)
ezsurfc(Z)

%% Problem 12.29
clear
syms x
%a
diff_x=diff(x^3 - 4*x^2 + 3*x + 8)
diff(diff_x)
%b
% you could also enter the expression as a string
diff_x=diff('(x^2-2*x+1)*(x-1)')
% you can specify the second derivative without calculating the first
diff_x=diff('(x^2-2*x+1)*(x-1)',2)
%c
diff(cos(2*x)*sin(x))
% you can nest functions to find the second derivative
diff(diff(cos(2*x)*sin(x)))
%d
diff(3*x*exp(4*x^2))
diff(3*x*exp(4*x^2),2)
%% Problem 12.30
%a
int(x^2 + x)
% or if you haven't defined x as a symbolic variable...
int(sym('x^2 + x'))
%b
int(x^2 + x, 0.3, 1.3)
%c
int(sym('x^2+y^2'))
%d
int(sym('a*x^2 + b*x + c'), 3.5, 24)
%% Problem 12.31
clear
%a
syms t
h=-0.12*t^4 + 12*t^3 - 380*t^2 + 4100*t + 220
v=diff(h,t)
%b
a=diff(v,t)
% or
a=diff(h,t,2)
%c
solve(h)
crash_time=double(ans(1))
% Only the first answer makes sense
%d
figure(10)
subplot(2,2,1)
ezplot(h,[0,crash_time])
title('Balloon Trajectory')
xlabel('time, hours')
ylabel('height, meters')
subplot(2,2,2)
ezplot(v,[0,crash_time])
title('Balloon Velocity')
xlabel('time, hours')
ylabel('velocity, m/hour')
subplot(2,2,3)
ezplot(a,[0,crash_time])
title('Balloon Acceleration')
xlabel('time, hours')
ylabel('acceleration, m/h^2')
%e
max_min=double(solve(v))
% Notice that although the results are complex, the imaginary component is
% very small - this is just a calculational artifice, and the results
% should really all be real.
% max_min is the time where the velocity is 0
time=real(max_min)
% to find the corresponding altitudes, substitute into the h equation
max_altitude=max(double(subs(h,'t',time)))

%% Problem 12.32
clear
syms t x
v_dot=50-t
%a
Q=int(v_dot,0,x)
%b
Q_30=subs(Q,x,30)
% or
Q_30=int(v_dot,0,30)
%c
Q_10_to_15=int(v_dot,10,15)
%% Problem 12.33
clear
syms x n
%a
W=int(20*x,0,n-1)
%b
W_2=subs(W,n,2)
%c
double(solve(W-25))
%only the first result is realistic physically
%% Problem 12.34
clear
syms T a b c d
Cp=a + b*T + c*T^2 + d*T^3
Cp_O2=subs(Cp,{a,b,c,d},{25.48, 1.520e-2, -0.7155e-5, 1.312e-9})
delta_h=int(Cp_O2,300, 1000)
delta_h=double(delta_h)
%% Problem 12.35
eq=sym('a*x^3+b*x^2+c*x^3+d=0')
f=solve(eq)
f=matlabFunction(f)
f(4,3,1,3)
%% Problem 12.36
close all
f=sym('tan(x)')
Integral=int(f)
%b)
Integral=matlabFunction(Integral)
fplot(Integral,[-5,5])