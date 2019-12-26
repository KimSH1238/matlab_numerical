x=[3, 7, 0, 10;
   1, 6, 5, 4,
   2, 5, 3, 1];
mean(x)
mean(x,2)
mean(x,3)
% 2 mean > transpose mean
% 3 mean > indivisual
mean(x')
mean(mean(x))
% mean mean > 2 dimensional mean

x=[5, 9, 2, 4, 11, 6, 11, 1];
c=max(x)
[d,n]=max(x)
% d > size of max, n > position of max
% max of matrix
x=[3, 7, 0, 10;
   1, 6, 5, 4,
   2, 5, 3, 1];
[d,n]=max(x)
[d,n]=max(x,[],2)
% max(matrix,[],dimension), same as min
d=sum(x)
d=sum(x,2)
d=sum(x')
d=sum(sum(x))
m=median(x)
m=median(x,2)
m=median(x')
m=median(median(x))

%sort
%std
%det

% rand() generate uniformly distributed random no, with between 0 to 1
r=rand
r=rand(5)
% rand(n) is n*n matrix
r=rand(2,4)
% rand(n,m) is n*m matrix
i=randi(5)
% randi is random integer
% randi(i) generate single random interger between 1 to i
i=randi(15,4)
i=randi([15,30],2,4)
% randi([min,max]) is between min to max
n=randn(3,4)
% randn() is normal distribution no. with mean 0 and standard deviation of 1
% gause distribution fuction
v=4*randn(2,6)+50
% nd*randn(y,x)+mean
% nd is normal distribution and mean
v=round(4*randn(2,6)+50)
% randperm > randperm(n) returns a row vector containing a random permutation of the integers from 1 to n inclusive.

% dot > dot product
% cross > cross (outer) product

% ex 3-2
f1=[400*cosd(-20), 400*sind(-20)]
f2=500*[cosd(30), sind(30)]
th3=143;
f3abs=700;
f3=f3abs*[cosd(th3), sind(th3)]
F=f1+f2+f3
Fbas=sqrt(F(1)^2+F(2)^2)
Fbas=(F(1)^2+F(2)^2)^0.5
theta=atand(F(1)/F(2))
% Q : what is x axis ?

% ques 3-5
s=[50, 100, 150, 200, 250, 300]
r=sqrt(s/pi)/2
v=4*pi*r.^3/3
% attention vertor.^calcul
% 1ft=0.3045m
sSI=0.3045*s
r=sqrt(sSI/pi)/2
v=4*pi*r.^3/3

% qw 3-28
% ig
r=0.08206;
v=1;
T=[273:10:373]
p_v1=r*T/v
v=0.5;
p_v0_5=r*T/v
v=2;
p_v2=r*T/v
P_ig=[p_v0_5;
   p_v1;
   p_v2]
% vanderwaals
a=1.39;
b=0.0391;
v=1;
p_v1=(r*T)/(v-b)-a/(v^2)
v=0.5;
p_v0_5=(r*T)/(v-b)-a/(v^2)
v=2;
p_v2=(r*T)/(v-b)-a/(v^2)
P_vdw=[p_v0_5;
   p_v1;
   p_v2]
error=abs(P_ig-P_vdw)
error_percent=(P_ig-P_vdw)./P_vdw