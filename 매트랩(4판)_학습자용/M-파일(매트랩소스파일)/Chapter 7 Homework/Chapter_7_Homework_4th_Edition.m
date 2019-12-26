%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 7 Homework Solutions
clear,clc, close all
%% Problem 7.1
x = input('Enter a value of x:  ')
result = sin(x)
%% Problem 7.2
x = input('Enter a matrix -- don''t forget [ and ] ')
max(x)
%% Problem 7.3
area = input('Enter the area of the base of a cone ')
h = input('Enter the height of a cone ')
volume = 1/3*area*h
%% Problem 7.4
disp('Hello World')
%% Problem 7.5
first_name = input('Enter your first name, inside single quotes ')
last_name = input('Enter your last name, inside single quotes ')
disp(['Your name is: ',first_name,' ',last_name])
%or
first_name=input('Enter your first name ','s');
last_name = input('Enter your last name ','s');
disp(['Your name is: ', first_name,' ',last_name])
%% Problem 7.6
age = input('Enter your age ');
disp(['your age is: ',num2str(age)])
%% Problem 7.7
x = input('Enter an array of numbers ')
num = length(x);
disp(['You entered ',num2str(num),' numbers'])
%% Problem 7.8
fprintf('You entered %3.0f numbers \n',num)
%% Problem 7.9
num = 1:6;
mult = num*6;
table =[num;mult];
fprintf('%5.0f times 6 is %3.0f \n',table)
%% Problem 7.10
theta=0:pi/10:pi*2;
table =[theta;sin(theta)];
disp('A table of angles and corresponding sine values')
disp('theta     Sin(theta)')
fprintf('%5.2f   %5.2f \n',table)
%% Problem 7.11
inches = 1:10;
angstroms = inches*2.54*10^8;
disp('Inches Are to big to measure in Angstroms')
disp('Inches   Angstroms')
fprintf('%5.0f     %7.2e \n',[inches;angstroms])
%% Problem 7.12

%a
%  On Friday, April 15, 2011 
% The conversion from yen to dollars was
% 1 Japanese Yen = 0.0120279 US Dollar 
% 1 US Dollar (USD) =  83.14 Japanese Yen (JPY
yen = 5:5:(5 + 24*5);
dollars = yen*0.0120279;
table = [yen;dollars]
disp('Conversion from Yen to Dollars - August 1, 2005')
disp('Yen    Dollars')
fprintf('%5.0f    %8.4f \n',table)
%b
% On Friday, April 15, 2011 
% The conversion from Euro to Dollars was:
% 1 Euro = 1.44315 US Dollar 
% 1 US Dollar (USD) = 0.692929 Euro (EUR) 
euro = 1:2:(1+29*2);
dollar = euro*1.44315;
disp('Euros      Dollars')
fprintf('%5.0f   %8.2f \n',[euro; dollar])
%c
% On Friday, April 15, 2011 
% The conversion for pounds to dollars was:
% 1 British Pound = 1.63235 US Dollar 
% 1 US Dollar (USD) = 0.612614 British Pound (GBP) 
dollars = 1:10;
euros = dollars/1.63235;
yen = dollars*83.14;
pounds = dollars * 0.612614;
table = [dollars;euros; pounds; yen];
disp('Conversion table $ to various currencies')
disp('dollars     euros   pounds       yen')
fprintf('%5.0f  %8.3f  %8.3f   %8.3f \n',table)
%% Problem 7.13
start = 0;
stop = 200;
incr = input('Enter the temperature increment ');
F=start:incr:stop;
K = (F+459.6)*5/9;
disp('Temperature Conversions')
disp('   F       K')
fprintf('%5.0f  %8.2f \n', [F;K])
%b
start = input('Enter the starting temperature ');
incr = input('Enter the increment ');
stop = start +incr*24;
C = start:incr:stop;
R = (C + 273)*9/5;
disp('Temperature Conversion')
disp('  C        R')
fprintf('%5.0f   %8.2f \n',[C;R])
%c
start = input('Enter the starting temperature ')
incr = input('Enter the increment ')
num = input('Enter the number of lines ')
stop = start + incr*(num-1);
C = start:incr:stop;
F = 9/5*C + 32;
disp('Temperature Conversion')
disp('   C        F')
fprintf('%5.0f   %8.2f \n',[C;F])
%% Problem 7.14
incr = input('Enter the increment ')
start = 0;
stop = 15;
kW = start:incr:stop;
hP = 3412.14/2544.5 * kW;
disp('Power Conversion')
disp('      kW      hP')
fprintf('%8.0f  %8.2f \n', [kW;hP])
%b
start = 0;
incr = input('Enter the increment ')
stop = input('Enter the final value ')
ftlbs = 0:incr:stop;
Btuhr = 550/2544.5 * ftlbs;
disp('Power Conversion')
disp('  ft lbf/sec      Btu/hr')
fprintf('%8.0f  %8.2f \n', [ftlbs;Btuhr])
%c
start = input('Enter the starting value ')
stop = input('Enter the final value ')
num = input('Enter the number of entries ')
kW = linspace(start,stop,num);
Btu_per_hour = kW * 3412.14;
ft_lbf_per_sec = 737.56 * kW;
hP = kW * 3412.14 / 2544.5;
disp('Power Conversion')
disp('      kW      Btu/hr    hP     ft lbf/s')
fprintf('%8.0f  %8.2f  %8.2f  %8.2f \n', [kW;Btu_per_hour; hP;ft_lbf_per_sec ])
%% Problem 7.15
t = 0:30;
h = -9.8/2*t.^2 + 125*t + 500;
plot(t,h)
disp('Position the cursor over the maximum height on the graph')
[a,b] = ginput(1)
disp(['The maximum height reached by the rocket is approximately ' num2str(b) ' meters'])
disp(['Position the cursor over the position where the rocket hits the ground'])
[a,b] = ginput(1)
disp(['The time the rocket hits the ground is ' num2str(a) ' seconds'])
%% Problem 7.16
theta = 0:0.1:2*pi;
r = ones(1,length(theta));
figure(2)
polar(theta,r)
disp('Use the cursor to enter two locations on the circle')
[a,b] = ginput(2)
hold on
plot(a,b)
hold off
dist = sqrt((a(1)-a(2))^2+(b(1) - b(2))^2);
fprintf('The distance between the points is %4.2f units \n',dist)
%% Problem 7.17
gas_cost=input('Estimate the price per gallon of gasoline ');
miles=0:100:400000;
cost_to_own_camry=22680 + miles/25 * gas_cost;
cost_to_own_camry_hybrid=26140 + miles/43 * gas_cost;
plot(miles,cost_to_own_camry,miles,cost_to_own_camry_hybrid)
title('Comparison of Std. Camry and Hybrid Models')
xlabel('Distance driven, miles')
ylabel('Cost to own')
[break_even, cost]=ginput(1)
a=sprintf('The break even milage is %7.0f \n',break_even)
gtext(a)

