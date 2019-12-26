%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 3 Homework Solutions
clear,clc
%% Problem 3.1
a=nthroot(-5,3)
b=(-5)^(1/3)
a^3
b^3
%% Problem 3.2
b=1:10;
log(10)./log(b)
%% Problem 3.3
P0=100;
r=0.90;
P=P0*exp(r*10)
%% Problem 3.4
Q= 8000;
R=1.987;
k0=1200;
T=100:50:500;
k=k0*exp(-Q./R./T);
[T',k']
%% Problem 3.5
%a)
heatingload = 20*100 + 4*500 + 3000
%b)
ceil(heatingload/2000)
%% Problem 3.6
%a)
factorial(4)
%b)
factorial(10)
%% Problem 3.7
%a)
factorial(12)/(factorial(12-2)*factorial(2))
% or
nchoosek(12,2)
%b
factorial(30)/(factorial(30-11)*factorial(11))
%or
nchoosek(30,11)
%c
factorial(30)/factorial(30-11)
%% Problem 3.8
factorial(52)/(factorial(52-5)*factorial(5))
%or
nchoosek(52,5)
%% Problem 3.9
length(primes(20000))-length(primes(10000))
% or
sum(isprime(10000:20000))
%% Problem 3.10
theta = 0:0.1:2*pi;
[theta',sin(theta'),cos(theta'),tan(theta')]
%% Problem 3.11
t=0:10;
A=4;
freq=0.6;
x=A*cos(freq.*t);
[t',x']
%% Problem 3.12
a=-A*freq^2*cos(freq*t);
[t',x',a']
%% Problem 3.13
d=120;
theta=[27, 33];
h=d*tand(theta)
%% Problem 3.14
%a)
atand(200/20)
%b)
abs(200+20i)   % or
sqrt(200^2+20^2)
%% Problem 3.15
load thermocouple.dat
thermocouple
maximum=max(thermocouple)
minimum=min(thermocouple)
%% Problem 3.16
theta = 0:pi/100:pi/2;
g=9.81;
v=100;
range = v^2/g*sin(2*theta)
[maximum, element]=max(range)
theta(element)
% Show that this result is close to pi/4
pi/4
%% Problem 3.17
G = [68, 83, 61, 70, 75, 82, 57, 5, 76, 85, 62, 71, 96, 78, 76, 68, 72, 75, 83, 93];
mean(G)
median(G)
mode(G)
std(G)
sort(G)
length(G)
%% Problem 3.18
random=randn(10000,1)*23.5 + 80;
mean(random)
std(random)
%% Problem 3.19
date
%% Problem 3.20
%a
first_die = ceil((rand(1)*6))
%b
second_die = ceil((rand(1)*6))
%c
total = first_die + second_die
%% Problem 3.21
%a
t=0:0.5:120;
T=randn(1,numel(t))*2+70;

%b
plot(t,T)
%c
[maximum, element]=max(T)
max_Temp_time=t(element)
[minimum, element]=max(T)
min_Temp_time=t(element)
%% Problem 3.22
ZL=0+5j
ZC=0-15j
R=5
ZT=ZL+ZC+R
V=10
I=V/ZT
% Alternate solution using the complex function
ZL=complex(0,5)
ZC=complex(0,-15)
I=V/ZT
%% Probem 3.23
C=1e-6;
L=200e-3;
R=5;
f=15e3;
w=2*pi*f;
V=10;
ZC=1/(w*C*j)
%a)
ZL=w*L*j
%b)
ZT=ZC+ZL+R
%c
I=V/ZT
%d
I_mag=abs(I)
ang = angle(I)