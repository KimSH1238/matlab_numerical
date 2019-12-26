%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 9 Homework Solutions
clear, clc, close all
%% Problem 9.1
x = [ 1, 23, 43, 72, 87, 56, 98, 33];
total = 0;
for k=1:length(x)
    total = total + x(k);
end
total

sum(x)
%% Problem 9.2
x = [ 1, 23, 43, 72, 87, 56, 98, 33];
total = 0;
k=1;
 while k<=length(x)
    total = total + x(k);
    k=k+1;
end
total  
%% Problem 9.3
for n=1:5
    squares(n)=n^2;
end
squares
%% Problem 9.4
clear 
n=1;
while n<=5
    squares(n)=n^2;
    n=n+1;
end
squares
%% Problem 9.5
x = primes(100); 
for k=1:length(x)-1
    y(k)=x(k)*x(k+1);
end
y


%% Problem 9.6
clear
x(1)=input('Enter the first number in a Fibonacci sequence ');
x(2) = input('Enter the second number in the sequence ');
num = input('How many values in this sequence would you like to display? ');
for k=1:num-2
    x(k+2)=x(k)+x(k+1);
end
x
k=1:num;
polar(k,x)
% or
polar(x)

%% Problem 9.7
clear
x(1)=input('Enter the first number in a Fibonacci sequence ');
x(2) = input('Enter the second number in the sequence ');
num = input('How many values in this sequence would you like to display? ');
k=1;
while k<=num-2
    x(k+2)=x(k)+x(k+1);
    k=k+1;
end
x
clear k
k=1:num;
polar(k,x)
 
%% Problem 9.8
clear
x(1)=input('Enter the first number in a Fibonacci sequence ');
x(2) = input('Enter the second number in the sequence ');
x(3)=x(1) + x(2);
k=3;
while abs(x(k)/x(k-1) - x(k-1)/x(k-2))>0.001
    x(k+1)=x(k)+x(k-1);
    k=k+1;
end
%% Problem 9.9
clear x
x=-3;
while x<=-pi/2 | x>= pi/2
x = input('Enter a value and I''ll find the tangent ');
if x==pi/2
    disp('That''s infinity')
elseif x==-pi/2
    disp('That''s negative infinity')
elseif  x<-pi/2 | x>= pi/2
    disp('Enter another value - its not defined in this region')
else
    tan(x)
end
end

%% Problem 9.10
balance(1)=1000;
years=18;
monthly_savings =100;
months = 18*12;
for k=2:months
    balance(k)=balance(k-1) + balance(k-1)*.005 + monthly_savings;
end
time=1:months;
time=time/12;
plot(time,balance)
title('College Savings')
xlabel('years')
ylabel('Balance')
fprintf('At the end of 18 years you''ll have %10.0f dollars \n',balance(months))
%% Problem 9.11
increase = [10,  8, 10, 16, 15, 4, 6, 7, 8, 10, 8, 12, 14, 15, 8, 7, 6, 5, 7, 8, 9, 8];
cost(1)=5000;
for k=2:22
    cost(k)=cost(k-1)+cost(k-1)*increase(k)/100;
end
format bank
  totalcost=cost(19)+cost(20)+cost(21)+cost(22)
%% Problem 9.12
if balance(months)>totalcost
    disp('You''re saving enough')
else
    disp('You need to save more')
end
%% Problem 9.13
x=2;
converg=.001;
approx = my_sqrt(5,x,converg)
% Compare to the built-in MATLAB function
sqrt(5)
%% Problem 9.14
cosx=0;
x=2;
true = cos(x)
for k=1:10
    cosx=cosx + (-1)^(k-1)*x^((k-1)*2)/factorial((k-1)*2)
    if abs(cosx-true)<.001
        break
    end
end
fprintf('The approximation requires%2.0f terms \n',k)
fprintf('Using our process cos(x) of %4.2f is %8.4f \n',x,cosx)
fprintf('The value using the built in cos function is %8.4f \n',true)
%% Problem 9.15
x=2;
approx = my_sin(x)
sin(x)
%% Problem 9.16
cost=input('Enter the cost of your first item in dollars, or 0 to quit:  ')
total = 0;
while cost>0
    total = total + cost;
    cost = input('Enter the cost of your next item in dollars, or 0 to quit:  ')
end
fprintf('Your total is $%8.2f  \n',total)
payment = input('Enter your payment in dollars:  ');
fprintf('Your change is $%8.2f \n',payment-total)
%% Problem 9.17   
clear,clc
 load lake_powell.dat   
[rows,cols] = size(lake_powell)
% a)
total_ave = 0;
for j=1:cols
    total(j)=0;
    for k=1:rows
        total(j) = total(j) + lake_powell(k,j);
    end
    ave(j)=total(j)/12;
    total_ave=total_ave + ave(j)/cols;
end
year = 2000:2007;
fprintf('The average elevation in %5.0f was %8.2f feet \n',[year; ave])
% b)
for j=1:cols
    months_exceeded(j)=0;
    for k=1:rows
        if lake_powell(k,j)>total_ave
            months_exceeded(j) = months_exceeded(j) + 1;
        end
    end
end
fprintf('The average in %5.0f was exceeded in %3.0f months \n',[year; months_exceeded])
% c)
for j=1:cols
    for k=1:rows
        if lake_powell(k,j)>total_ave
            fprintf('The average was exceed in the %2.0f month of %4.0f \n',k,1999+j)
        end
    end
end
% d
for k=1:rows
    month_ave(k)=0;
    for j=1:cols
        month_ave(k) = month_ave (k) + lake_powell(k,j);
    end
    month_ave(k)=month_ave(k)/12;
end
fprintf('The average elevation for month %2.0f was %8.2f \n',[1:12;month_ave]);


%% Problem 9.18
%a
clear x y
tic
x=randn(1,100000);
y=x.^2;
toc
% b
clear x y
tic
x=randn(1,100000);
for k=1:100000
    y(k)=x(k).^2;
end
toc

% c

%% d
clear
tic
x=randn(1,100000);
for k=1:100000
    z(k)=x(k)+(sin(0.3) + cos(pi/3))*factorial(5);
end
toc
%%
clear
x=randn(1,100000);
tic
a=(sin(0.3) + cos(pi/3))*factorial(5);
for k=1:100000
    z(k)=x(k) +a;
end
toc
 
%% e
clear x y
tic
x=randn(1,100000);
y=zeros(1,100000);
for k=1:100000
    y(k)=x(k).^2;
end
toc
%% Problem 9.19
% I used the polygon function from Chapter 6
%b)
for k=1:4
    subplot(2,2,k)
    polygon(k+2)
end
%% Problem 9.20
K=100000;  %  This value of K may be too big, depending on your computer
eapprox(K)
%% Problem 9.21
K=100000;
eapprox2(K)

    
    
        
