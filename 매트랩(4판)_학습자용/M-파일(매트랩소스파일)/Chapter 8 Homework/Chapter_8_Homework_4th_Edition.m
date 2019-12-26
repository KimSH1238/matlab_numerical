%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 8 Homework Solutions
clear,clc,close all
%% Problem 8.1
hot_tub=[100,101,102,103,103,104,104,105,106,...
106,106,105,104,103,101,100,99,100,102,...
104,106,107,105,104,104];
% or
load hot_tub.dat
time = 0:1:24;
% a
element_high=find(hot_tub>105)
%b
length(find(hot_tub>105))
%c
time(element_high)
%d
length(find(hot_tub<102))
%e
element_low=find(hot_tub<102);
time(element_low)
%f
ok=time(find(hot_tub>=102 & hot_tub<=105))
%g
[maximum,element]=max(hot_tub)
time(element)
%% Problem 8.2
%a
t=0:2:100;
height = 2.13*t.^2 - 0.0013*t.^4 + 0.000034*t.^4.751;
positive = find(height>0);
fprintf('The rocket hits the ground after %4.0f seconds \n',t(max(positive)))
%b
[maxheight,element]=max(height);
fprintf('The maximum height is %7.2f and occures at %4.0f seconds \n',[maxheight,t(element)])
%c
plot(t(positive),height(positive))
title('Flight Profile of a Rocket')
xlabel('time, seconds')
ylabel('height, meters')
%% Problem 8.3
solid_rocket=[1530	116	45	110
1240	114	42	115
2380	118	41	120
1470	124	38	95
3590	126	61	118];
% or
load solid_rocket.dat
% a
batch=solid_rocket(:,1);
temp = solid_rocket(:,2);
humidity = solid_rocket(:,3);
press = solid_rocket(:,4);
disp('The following batches failed due to temperature');
batch(find(temp<115 | temp>125))
%b
disp('The following batches failed due to humidity');
batch(find(humidity<40 | humidity>60))
%c
disp('The following batches failed due to pressure');
batch(find(press<100 | press>200))
%d
disp('The following batches failed for at least one reason')
batch(find((temp<115 | temp>125)|(humidity<40 | humidity>60)|(press<100 | press>200)))
%e
fprintf('%6.2f percent failed for temperature \n',length(find(temp<115 | temp>125))/length(batch)*100)
fprintf('%6.2f percent failed for humidity \n',length(find(humidity<40 | humidity>60))/length(batch)*100)
fprintf('%6.2f percent failed for pressure \n',length(find(press<100 | press>200))/length(batch)*100)
fprintf('%6.2f percent failed for some reason \n',length(find((temp<115 | temp>125)|(humidity<40 | humidity>60)|(press<100 | press>200)))/length(batch)*100)
%% Problem 8.4
scores=[9.821	9.700
9.923	9.925
9.624	9.83
9.432	9.987
9.534	9.354
9.203	9.879];
%or
load scores.dat
g1=scores(:,1);
g2=scores(:,2);
fprintf('Gymnast 1 won %2.0f events \n',length(find(g1>g2)))
fprintf('Gymnast 2 won %2.0f events \n',length(find(g2>g1)))

disp('The average scores were')
mean(scores)
%% Problem 8.5
x=-3:0.2:5;
y=f(x);
plot(x,y)
title('Problem 5')
xlabel('x')
ylabel('f(x)')
%% Problem 8.6
x=-2*pi:0.1:2*pi;
plot(x,g(x))
axis([-10,10,-1.5,1.5])
%% Problem 8.7
load temp.dat
[rows_high,cols_high]=find(temp(:,2:4)>85)
[rows_low,cols_low]=find(temp(:,2:4)<65)
just_temps=temp(:,2:4);
[max_temp, sensor_num]=max(max(just_temps))
[max_temp, hour]=max(max(just_temps'))
%% Problem 8.8
clear,clc
% a)
load sea_ice_ant_sept.dat
load sea_ice_ant_feb.dat
seas=sea_ice_ant_sept;
seaf=sea_ice_ant_feb;
avgs = [18.7,18.7];
avgf = [2.9,2.9];
plot(seas(:,1),seas(:,2),seaf(:,1),seaf(:,2))
hold on
plot([1999,2013],avgs,'-r',[1999,2013],avgf,'-r')
hold off
legend('Sept','Feb','pre 2000 avg','pre 2000 avg')
title('Antarctic Sea Ice Extent')
% b
seas(find(seas(:,2)>18.7))
% c
seaf(find(seaf(:,2)<2.9))
%% Problem 8.9
clear,clc
% a)
load sea_ice_arc_sept.dat
load sea_ice_arc_march.dat
seas=sea_ice_arc_sept;
seam=sea_ice_arc_march;
avgs = [7.0,7.0];
avgm = [15.7,15.7];
plot(seas(:,1),seas(:,2),seam(:,1),seam(:,2))
hold on
plot([1999,2013],avgs,'-r',[1999,2013],avgm,'-r')
hold off
legend('Sept','March','pre 2000 avg','pre 2000 avg')
title('Arctic Sea Ice Extent')
% b
seas(find(seas(:,2)>7.0))
% c
seam(find(seam(:,2)<15.7))
% d
new_avgs = mean(seas(:,2))
seas(find(seas(:,2)>new_avgs))

new_avgm = mean(seam(:,2))
seam(find(seam(:,2)<new_avgm))

%% Problem 8.10
load lake_powell.dat
average_water_level=mean(lake_powell);
year=2000:2007;
fprintf('The average water level was %8.2f feet in %5.0f \n',[average_water_level;year])
eight_year_average=mean(average_water_level);
fprintf('The eight year average is %8.2f feet \n',eight_year_average)
%b
for k=1:8
over_average(k)=length(find(lake_powell(:,k)>eight_year_average));
end
over_average;
fprintf('During %5.0f the lake was above average for %3.0f months \n',[year;over_average])
%c
[month,year_over]=find(lake_powell>eight_year_average);
disp(' Lake Powell was filled over the average during the following months')
disp('  Month    Year')
fprintf('    %3.0f     %5.0f   \n',[month';year(year_over)])
%d
monthly_average=mean(lake_powell')
% just for fun
date=2000:1/12:2008-1/12;
plot(date,lake_powell(:))
xlabel('Year')
ylabel('Water level, ft')

%% Problem 8.11
temp = input('Enter a temperature in degrees F: ')
if temp>98.6
    disp('You have a fever')
end
%% Problem 8.12
x=input('Enter a value of x: ')
y=input('Enter a value of y: ')
if x>y
    disp('X is greater than Y')
else
    disp('Y is greater than or equal to X')
end
%% Problem 8.13
my_asin(-3)
my_asin(-1)
my_asin(0)
my_asin(1)
my_asin(2)
%% Problem 8.14
temp = input('Enter the outside air temperature: ')
if temp>80
    disp('Wear shorts')
elseif temp>60
    disp('It''s a beautiful day')
else
    disp('Wear a coat')
end
%% Problem 8.15
saws = [1,4,5,3,7,5,3,10,12,8, 7, 4];
if saws>=0
    disp('All Valid Entries')
else
    disp('Invalid number found')
end
%b
saws = [1,4,-5,3,7,5,3,10,12,8, 7, 4];
if saws>=0
    disp('All Valid Entries')
else
    disp('Invalid number found')
end
%% Problem 8.16
contribution(10000)
contribution(40000)
contribution(80000)
contribution(120000)
%  I plotted the results to better see how changing the salary changed the
%  contribution
for k=1:15
    salary(k)=k*10000;
    savings(k)=contribution(salary(k));
end
plot(salary,savings)
%% Problem 8.17
n=3:6;
angle_sum=(n-2)*180
 % b
 shape = input('Enter either triangle, square, pentagon or hexagon:  ','s')
switch shape
    case 'triangle'
        n=3;
    case 'square'
        n=4;
    case 'pentagon'
        n=5;
    case 'hexagon'
        n=6;
    otherwise
        n='Try again'
end
angle_sum=(n-2)*180;
fprintf('The sum of the interior angles is: %5.0f \n',angle_sum)

% c
shape = menu('Enter a shape','triangle','square','pentagon','hexagon')
n=shape+2;
angle_sum=(n-2)*180;
fprintf('The sum of the interior angles is: %5.0f \n',angle_sum)
%% Problem 8.18
credits=[130, 130, 122, 126.5, 129];
major = menu('What is your major?','Civil','Chemical','Computer','Electrical','Mechanical');
fprintf('You''ll need %5.1f credits to graduate \n', credits(major))
% or
switch major
    case 1
        output=130;
    case 2
        output = 130;
    case 3
        output = 122;
    case 4
        output = 126.5;
    case 5
        output = 129;
end
fprintf('You''ll need %5.1f credits to graduate \n',output)
%% Problem 8.19
points=menu('What type star would you like?','Five Points','Six Points')
switch points
    case 1
    theta=pi/2:4*pi/5:4.5*pi;
    r = ones(1,length(theta));
    polar(theta,r)
    case 2
        theta=pi/2:2*pi/3:2*pi+pi/2;
        r=ones(1,length(theta));
        polar(theta,r)
        hold on
        theta = pi/6:2*pi/3:2*pi+pi/6;
        polar(theta,r)
        hold off
end
%% Problem 8.20
lot=input('Enter 1 for long term or 2 for short term ');
weeks=input('How many complete weeks did you park? ');
days=input('How many additional complete days did you park? ')
hours=input('How many additional complete hours did you park? ')
minutes=input('How many additional minutes did you park? ');
if lot==1
 if minutes>0
     hours=hours+1;
 end
 if hours>=6
     hours=6;
 end
 cost = weeks*42+days*6+hours;
else
    if (minutes + hours*60 + days*24*60 + weeks*7*24*60)<30
        cost=0;
    else
        cost=ceil((minutes-30+hours*60)/20); 
        if cost>25
            cost=25;
        end
        cost = cost + days*25 + weeks*7*25;
    end
end
cost