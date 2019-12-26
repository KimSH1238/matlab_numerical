%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 4 Homework Solutions
clear,clc
%% Problem 4.1
a=[15,  3,  22;
    3,  8,  5;
    14, 3,  82]
b=[1;5;6]
c=[12 18 5 2]
%a
d = a(:,3)
%b
e = [b,d]
%c
f = [b;d]
%d
g = [a;c(1:3)]
%e
h = [a(1,3), c(1,2), b(2,1)]
%% Problem 4.2
load thermo_scores.dat
%a
fred = thermo_scores(5,:)
%b
test_1=thermo_scores(:,2)
%c
% One approach is to extract each test
test_2=thermo_scores(:,3);
test_3=thermo_scores(:,4);
std([test_1,test_2,test_3])
% Another approach is to extract all the scores at once
var(thermo_scores(:,2:4))
%d
total = sum(thermo_scores(:,2:4)')
percentage = total/300*100
%e
table=[thermo_scores,percentage']
%f
sortrows(table,5)
%% Problem 4.3
%a
times=0:2:24;
%b
load thermocouple.dat
%c
table = [times',thermocouple]
%d
[maximum,element]=max(thermocouple)
maxtime=times(element)
%% Problem 4.4
load sensor.dat
%a
[rows,col]=size(sensor)
number_of_sensors = col-1
number_of_times = rows
%b
t=sensor(:,1)
[maximum,element]=max(sensor(:,2:5))
max_times=t(element)
[minimum,element]=min(sensor(:,2:5))
min_times=t(element)
%c
%mean and std for each sensor
mean(sensor(:,2:5))
std(sensor(:,2:5))
% mean and std for the whole data set
just_data=sensor(:,2:5);
% there are two ways to calculate the overall mean
mean(mean(just_data))
overall_mean = mean(just_data(:))
% however, the std(std(just_data)) is not the overall standard deviation)
overall_std = std(just_data(:))
%% Problem 4.5
%  Import the data interactively
% or load the included file
load ace_data.dat
%%
years=ace_data(:,1);
ace=ace_data(:,2);
tropical_storms=ace_data(:,3);
hurricanes=ace_data(:,4);
major_hurricanes=ace_data(:,5);
[max_ace,element_max]=max(ace);
[max_trop_storms,element_tp]=max(tropical_storms);
[max_hurricanes,element_hurr]=max(hurricanes);
[max_major_hurricanes,element_major]=max(major_hurricanes);
[max_ace, years(element_max);
    max_trop_storms, years(element_tp);
    max_hurricanes, years(element_hurr);
    max_major_hurricanes, years(element_major)]
%d)
mean([ace,tropical_storms,hurricanes,major_hurricanes])
median([ace,tropical_storms,hurricanes,major_hurricanes])
%e)
sortrows(ace_data,2)
%% Problem 4.6
base=0:2:10;
height = [2,4,6];
[B,H]=meshgrid(base,height);
area = B.*H
%% Problem 4.7
pressure=0:25:100;
density=[13560, 1000];
g = 9.81;
[P,D] = meshgrid(pressure*1000,density);
h_in_meters = P./g./D
%check for reasonableness
% 100 kPa is almost 1 atm, which is 760 mmHg
format bank
h_in_mm = h_in_meters*1000
format short
%% Problem 4.8
Temp=100:300:1000;
Press = 100:300:1000;
R = 0.2870;
[T,P] = meshgrid(Temp, Press);
v = R.*T./P
%% Problem 4.9
a=[15,  3,  22;
    3,  8,  5;
    14, 3,  82];
b=[1;5;6];
c=[12 18 5 2];
a0=zeros(size(a))
b0=zeros(size(b))
c0=zeros(size(c))
%% Problem 4.10
my_magic = magic(6)
%a
sum(my_magic')
%b
sum(my_magic)
%c
sum(diag(my_magic))
sum(diag(fliplr(my_magic)))
%% Problem 4.11
small_magic=my_magic(1:3,1:3)
sum(small_magic)
sum(small_magic')
%small_magic is not a magic matrix
%% Problem 4.12
%a
a = magic(5);
sum(a.*2)
sum([a.*2]')
%Yes it is also a magic matrix
%b
sum(a.^2)
sum([a.^2]')
% No, it is not a magic matrix
%c
sum(a+2)
sum(a'+2)
%Yes - it is still magic
%d
big_matrix=[a,2*a;a.^2,a+2]
sum(big_matrix)
% No it is not magic
%% Problem 4.13
m=magic(4)
durer_magic=[m(:,1),m(:,3),m(:,2),m(:,4)]
