% xi
delta1=1/2 * log(0.3/0.2)
delta2=1/2 * log(0.21/0.13)
delta3=1/2 * log(0.24/0.19)

xi1=delta1/(4*pi^2 + delta1^2)^0.5
xi2=delta2/(4*pi^2 + delta2^2)^0.5
xi3=delta3/(4*pi^2 + delta3^2)^0.5
xi1
xi2
xi3

% wn
sensor=73.6;
carriage=282.9;

m1g=sensor+carriage +97.1 +96.8;
m1=m1g/1000;
m2g=sensor+carriage +97.1 +96.8 +92.6 +97.1;
m2=m2g/1000;
m3g=sensor+carriage +97.1 +96.8 +92.6 +97.1 +97.3 +97.1;
m3=m3g/1000;

k=0.22895 *1000;

wn1=(k/m1)^0.5;
wn2=(k/m2)^0.5;
wn3=(k/m3)^0.5;
wn1
wn2
wn3

%fd wd
wd1=wn1*(1-xi1^2)^0.5;
wd2=wn2*(1-xi2^2)^0.5;
wd3=wn3*(1-xi3^2)^0.5;

fd1=wd1/(2*pi);
fd2=wd2/(2*pi);
fd3=wd3/(2*pi);

wd1, fd1
wd2, fd2
wd3, fd3

% graph
x=[m1,m2,m3];
wd=[wd1,wd2,wd3];
delta=[delta1,delta2,delta3];
xi=[xi1,xi2,xi3];
subplot(2,2,1)
plot(x,wd,'o-'), xlabel('mass'), ylabel('wd'), axis([0 max(x)*1.5 0 max(wd)*1.5])
subplot(2,2,2)
plot(x,delta,'o-'), xlabel('mass'), ylabel('delta'), axis([0 max(x)*1.5 0 max(delta)*1.5])
subplot(2,2,3)
plot(x,xi,'o-'), xlabel('mass'), ylabel('xi'), axis([0 max(x)*1.5 0 max(xi)*1.5])

% wd2
wdo=[20.2762, 17.7929, 15.5633];
subplot(2,2,4)
plot(x,wdo,'o-'), xlabel('mass'), ylabel('wd2'), axis([0 max(x)*1.5 0 max(wd)*1.5])

xi1
xi2
xi3