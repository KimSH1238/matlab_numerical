% data read
data=data1;
clear x
clear y
clear z
clear t

% data=table2array(data2);
t=data{:,1};
x=data{:,2};
y=data{:,3};
z=data{:,4};

figure
plot(t,x,t,y-5,t,z+10),xlabel('time')

% plot
% subplot(2,2,1)
% plot(t,x),xlabel('time')
% subplot(2,2,2)
% plot(t,y),xlabel('time')
% subplot(2,2,3)
% plot(t,z),xlabel('time')
%%
% no_signal_ind = abs(x) < 5;

% t(no_signal_ind) = [];
% x(no_signal_ind) = [];
% y(no_signal_ind) = [];
% z(no_signal_ind) = [];

% tt = (0:length(x)-1)'
% subplot(2,2,1)
% plot(tt,x),xlabel('time')
% subplot(2,2,2)
% plot(tt,y),xlabel('time')
% subplot(2,2,3)
% plot(tt,z),xlabel('time')

n1=26*1000-16*1000;
t1=linspace(16,26,n1)';
for k=1:n1
     x1(k)=x(16*1000+k);
     y1(k)=y(16*1000+k);
     z1(k)=z(16*1000+k); 
end

% 2
xr1=rms(x1);
yr1=rms(y1);
zr1=rms(z1);
% figure
% plot(t1,x1,t1,y1-5,t1,z1+10),xlabel('time')

n1=65*1000-55*1000;
t1=linspace(55,65,n1)';
for k=1:n1
     x1(k)=x(55*1000+k);
     y1(k)=y(55*1000+k);
     z1(k)=z(55*1000+k); 
end

xr2=rms(x1);
yr2=rms(y1);
zr2=rms(z1);

% 3
n1=103*1000-92*1000;
t1=linspace(92,103,n1)';
for k=1:n1
     x1(k)=x(92*1000+k);
     y1(k)=y(92*1000+k);
     z1(k)=z(92*1000+k); 
end

xr3=rms(x1);
yr3=rms(y1);
zr3=rms(z1);

% 4
n1=136*1000-128*1000;
t1=linspace(128,136,n1)';
for k=1:n1
     x1(k)=x(128*1000+k);
     y1(k)=y(128*1000+k);
     z1(k)=z(128*1000+k); 
end

xr4=rms(x1);
yr4=rms(y1);
zr4=rms(z1);

% 5
n1=207*1000-185*1000;
t1=linspace(185,207,n1)';
for k=1:n1
     x1(k)=x(185*1000+k);
     y1(k)=y(185*1000+k);
     z1(k)=z(185*1000+k); 
end

xr5=rms(x1);
yr5=rms(y1);
zr5=rms(z1);

% 6
n1=250*1000-239*1000;
t1=linspace(239,250,n1)';
for k=1:n1
     x1(k)=x(239*1000+k);
     y1(k)=y(239*1000+k);
     z1(k)=z(239*1000+k); 
end

xr6=rms(x1);
yr6=rms(y1);
zr6=rms(z1);

% 7
n1=279*1000-289*1000;
t1=linspace(289,279,n1)';
for k=1:n1
     x1(k)=x(279*1000+k);
     y1(k)=y(279*1000+k);
     z1(k)=z(279*1000+k); 
end

xr7=rms(x1);
yr7=rms(y1);
zr7=rms(z1);

% ct_force, main_force
v1000=pi*8*1000/1000;
v2000=pi*8*2000/1000;
v3000=pi*8*3000/1000;

fc1=(xr1^2+yr1^2+zr1^2)^0.5;
fp1=xr1*cosd(30)+yr1*sind(30);

fc2=(xr2^2+yr2^2+zr2^2)^0.5;
fp2=xr2*cosd(30)+yr2*sind(30);

fc3=(xr3^2+yr3^2+zr3^2)^0.5;
fp3=xr3*cosd(30)+yr3*sind(30);

fc4=(xr4^2+yr4^2+zr4^2)^0.5;
fp4=xr4*cosd(30)+yr4*sind(30);

fc5=(xr5^2+yr5^2+zr5^2)^0.5;
fp5=xr5*cosd(30)+yr5*sind(30);

fc6=(xr6^2+yr6^2+zr6^2)^0.5;
fp6=xr6*cosd(30)+yr6*sind(30);

fc7=(xr7^2+yr7^2+zr7^2)^0.5;
fp7=xr7*cosd(30)+yr7*sind(30);

figure

% graph
x1=[100,200,300];
pc1=[103.19,211.78,406.92];
subplot(2,2,1)
plot(x1,pc1,'o-'), ylabel('Pc'), axis([0 max(x1)*1.5 0 max(pc1)*1.5])

x2=[1000,2000,3000];
pc2=[317.67,231.76,211.78];
subplot(2,2,2)
plot(x2,pc2,'o-'), ylabel('Pc'), axis([0 max(x2)*1.5 0 max(pc2)*1.5])

x3=[0.5,0.75,1];
pc3=[213.76,231.76,246.06];
subplot(2,2,3)
plot(x3,pc3,'o-'), ylabel('Pc'), axis([0 max(x3)*1.5 0 max(pc3)*1.5])
