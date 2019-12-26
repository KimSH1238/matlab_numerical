% semilogx(x,y) : plot y versus x with logbase 10 scale for x axis > same
% as semilogy(x,y)
% loglog(x,y) : both logbase 10 scale

x=linspace(.1, 60, 1000);
y=2.^(-0.2.*x+10);
plot(x,y)
grid on

plot(x,y)
semilogy(x,y)
grid on

plot(x,y)
semilogx(x,y)
grid on

plot(x,y)
loglog(x,y)
grid on

% error bar : experimental data is measured and displayed by errorbar(x,y,e)
% e : vector with value of error point

xd=[10:2:2];
yd=[950, 640, 460, 340, 250, 180, 140];
yderr=[30, 20, 18, 35, 20, 30, 10];
errorbar(xd,yd,yderr)
xlabel('distance(cm)')
ylabel('intensity(lux)')

% errorbar(x,y,d,u)
% d : down error, u : up error

% error
% yr=[1998:1994];
% sle=[8, 12, 20, 22, 18, 24, 27];
% bar(yr,sle)
% xlabel('year')
% ylabel('sales (10^{6})')

d=[11, 18, 26, 9, 5];
pie(d,{'a','b','c','d','e'})
title('class grades')
% bar, barh, stairs, stem

% histograms are dispribution plotting
% averall range of set is divided into subranges(bins)
hist(d)
% basic distribution is 10 boundary area
xlabel('no. of data')
ylabel('frequency')
% boundary area no.
hist(d,4)
% boundary area inputing
x=[45:10:90]
% completely same goes to right area
hist(d,x)
% histogram vector

% polar coordinates > polar(theta, radius, 'specifier')
t=linspace(0,2*pi,1000);
r=3.*cos(0.5.*t).^2+0.1.*t;
polar(t,r,'r')
n=hist(d,x)

% fplot,figure
fplot('x*cos(x)',[1,10])
figure
% fplot area is [left, right]