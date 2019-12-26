%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 2 Homework Solutions
clear,clc
%% Problem 2.1
1 + 3/4 
5*6*4/2
5/2*6*4
5^2*3
5^(2*3)
1 + 3 + 5/5 + 3 + 1
(1 + 3 + 5)/(5 + 3 + 1)
%% Problem 2.2
% The legitimate Matlab names are:
% fred
% book_1
% Second_Place
% No_1
% vel_5
% tan
isvarname fred
isvarname book_1
isvarname Second_Place
isvarname No_1
isvarname vel_5
isvarname tan   %although tan is a function name it can be used as a variable name 
isvarname fred!  %! is not an allowed character
isvarname book-1  % - is not an allowed character
isvarname 2ndplace  %variable names must start with a letter
isvarname #1  %# is not an allowed character
isvarname vel.5  % . is not an allowed character
isvarname while  %while is a reserved name

which tan  % tan is a function name
which while  %while is also a function name, but is reserved

%You can reassign a function name as a variable name
%For example
sin=3
%The which function now tells us sin is a variable
which sin
% Use the clear function to return sin to its function definition
clear sin
which sin

%% Problem 2.3
5^2
(5 + 3)/(5*6)
sqrt(4+6^3) % or...
(4+6^3)^(1/2)
9*6/12 + 7*5^(3+2)
1 + 5*3/6^2 + 2^(2-4) *1/5.5

%% Problem 2.4
%a)
r=5
area=pi*r^2
%b)
r=10
surface_area=4*pi*r^2
%c)
r=2
volume=4/3*pi*r^3
%% Problem 2.5
%a)
edge=5
area=edge^2
%b)
edge=10
surface_area=6*edge^2
%c)
edge=12
volume=edge^3
%% Problem 2.6
%a)Volume
r=10; %cm
length=15; %cm
d=1; % cm
% Find the volume of each sphere
volume_sphere=4/3*pi*r^3;
% Find the volume of the bar
volume_bar=pi*(d/2)^2*length;
% Combine the components to get the total volume
total_volume=2*volume_sphere +volume_bar
%%  b)Surface Area
% Find the surface area of each sphere
sa_sphere=4*pi*r^2;
% Find the surface area of the bar
sa_bar=pi*d*length;
% Combine the components to get the total surface area
total_sa=2*sa_sphere + sa_bar
%% Problem 2.7
P=220;
n=2;
V=1;
a=5.536;
b=0.03049;
R=0.08314472;
% Find the temperature using the ideal gas law
T_ideal=P*V/(n*R)
% Find the temperature using Van der Waal's equation
T_VW=(P+n^2*a/V^2)*(V-n*b)/(n*R)
%% Problem 2.8
%a)
r=3;
h=[1,5,12];
volume = pi*r^2.*h
%We need to use the .* operator because h is an array
%b)
b=[ 2, 4, 6];
h=12;
area=1/2*b.*h
%Although you don't have to use the .* operator for both
%multiplications and the ./ for the division it won't hurt if you do
area=1./2.*b.*h
%c)
h=6;
volume=h.*area
%% Problem 2.9
% a)
R=800 %ohms
L=100e-3 %H
C=1e-6 %F
s(1)= -R/(2*L)+sqrt((R/(2*L))^2 - 1/(L*C))
s(2)= -R/(2*L)-sqrt((R/(2*L))^2 - 1/(L*C))
% b)
R=100:100:1000;
s_plus = -R./(2*L)+sqrt((R./(2*L)).^2 - 1/(L*C))
s_minus = -R./(2*L)-sqrt((R./(2*L)).^2 - 1/(L*C))
table = [R',s_plus',s_minus']
% Repeat for R between 600 and 700
R=600:10:700;
s_plus = -R./(2*L)+sqrt((R./(2*L)).^2 - 1/(L*C))
s_minus = -R./(2*L)-sqrt((R./(2*L)).^2 - 1/(L*C))
table = [R',s_plus',s_minus']
%% Problem 2.10
%a)
R=200;
C=1e-6;
L=0.64
s_plus=-1/(2*R*C) + sqrt((1/(2*R*C))^2 - 1/(L*C))
s_minus=-1/(2*R*C) - sqrt((1/(2*R*C))^2 - 1/(L*C))
%b)
R=100:100:1000;
s_plus=-1./(2*R*C) + sqrt((1./(2*R*C)).^2 - 1/(L*C));
s_minus=-1./(2*R*C) - sqrt((1./(2*R*C)).^2 - 1/(L*C));
table = [R',s_plus',s_minus']
%  Refine the R values
R=400:10:500;
s_plus=-1./(2*R*C) + sqrt((1./(2*R*C)).^2 - 1/(L*C));
s_minus=-1./(2*R*C) - sqrt((1./(2*R*C)).^2 - 1/(L*C));
table = [R',s_plus',s_minus']
%% Problem 2.11
%Create a matrix of mpg values
mpg=[36, 32, 44, 26, 50, 33];
% Calculate the emissions
Mass_CO2=(12000./mpg*19.4)'
% Notice that I transposed the result so that it is easier to read
% Also notice the common multiplier listed at the beginning of the results
%% Problem 2.12
%a)
a=1:20
%b)
b=0:pi/10:2*pi
%c)
c=linspace(4,20,15)
%d)
d=logspace(1,3,4)
%% Problem 2.13
%a)
feet=0:1:10;
meters=feet./3.28;
[feet',meters']
%b)
radians=0:0.1*pi:pi;  
degrees=radians*180/pi;
[radians',degrees']  % Or we could also give this table a name
conversion_table=[radians',degrees']
%c
mph=linspace(0,100,15);
ft_per_sec=mph*5280/3600;
vel_conversion=[mph',ft_per_sec']
%d
H_conc=logspace(-3,-1,10);
pH=-log10(H_conc);
pH_table=[H_conc',pH']
%% Problem 2.14
g=9.8;
t=0:10:100;
d=1/2*g*t.^2;
table=[t',d']
%% Problem 2.15
d=0.001; %meters
area = pi*d^2/4;
length = 2; %meters
rho = [1.59e-8; 1.68e-8; 2.44e-8; 2.82e-8; 1.0e-7];
I=120; %amps
P=I.^2.*rho.*length./area
%% Problem 2.16
length=logspace(1,3,10)
P_silver=I.^2.*rho(1).*length./area
P_copper=I.^2.*rho(2).*length./area
P_gold = I.^2.*rho(3).*length./area
P_al = I.^2.*rho(4).*length./area
P_Fe = I.^2.*rho(5).*length./area
%% Problem 2.17
G=6.673e-11;
m_earth=6e24;
m_moon=7.4e22;
r=3.9e8;
F=G*m_earth*m_moon/r^2
%% Problem 2.18
r=linspace(3.8e8,4.0e8,10);
F=G*m_earth*m_moon./r.^2;  %Notice the .^ and ./ operators
[r',F']
%% Problem 2.19
%a
P=linspace(0,400,10);
n=2;
V=1;
a=5.536;
b=0.03049;
R=0.08314472;
% Find the temperature using the ideal gas law
T_ideal=P*V/(n*R)
% Find the temperature using Van der Waal's equation
T_VW=(P+n^2*a/V^2)*(V-n*b)/(n*R)
% It would be easier to compare the calculated values if they are listed in
% a table
[T_ideal',T_VW']

%% b
V=linspace(0.1,10,10);
P=220;
% Find the temperature using the ideal gas law
T_ideal=P*V/(n*R)
% Find the temperature using Van der Waal's equation
T_VW=(P+n^2*a./V.^2).*(V-n*b)/(n*R)
% It would be easier to compare the calculated values if they are listed in
% a table
[T_ideal',T_VW']

%% c  You might interpret this probem to mean that the 10 values of pressure
%and ten values of volume should be used in the same calculation
V=linspace(0.1,10,10);
P=linspace(0,400,10);
% Find the temperature using the ideal gas law
T_ideal=P.*V/(n*R)
% Find the temperature using Van der Waal's equation
T_VW=(P+n^2*a./V.^2).*(V-n*b)/(n*R)
% It would be easier to compare the calculated values if they are listed in
% a table
[T_ideal',T_VW']


%% Problem 2.20
a=[-1/3,0,1/3,2/3]  %displays as format short automatically
format long
a
format bank
a
format short e
a
format long e
a
format short eng
a
format long eng
a
format short g
a
format long g
a
format +
a
format rat
a
format short  %return the display to the default
a
%% Problem 2.21
D=0:10:180;
R=D*pi/180;
D_to_R=[D',R']
save degrees.dat -ascii D_to_R
%Check your current directory to confirm that the file
%was saved
clear
load degrees.dat
degrees
