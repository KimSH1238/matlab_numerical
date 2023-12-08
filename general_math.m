%A=[0 1; 0 -0.04];
%B=[0; 1/1500];
%C=[1 0];
%D=0;

%sys=ss(A, 750*B, C,D);
%step(sys);

%A=[2 4 -2d 
%   4 9 -3;
%   -2 -3 7];
%inv(A)

%x=-100:100;
%y=atan(x);
%plot(x,y)

%t=-1000*pi:pi/1000:1000*pi;
%y=2.*exp(-3.*t).*cos((7.^0.5).*t)+10/7^0.5.*exp(-3.*t).*sin((7.^0.5).*t);
%plot(t,y)

%num1=[2500];
%num2=[1 60 550 2500]; sys1=tf(num1, num2);
%num3=[2500/60];
%num4=[1 10 50]; sys2=tf(num1, num3);d
%t=[0:0.1:10];
%[y1,T1]=step(sys1,t);
%[y2,T2]=step(sys2,t);
%plot(T1,y1,T2,y2,'--')

K=[0:0.1:10];
y=100.*exp(2*pi./(K-4).^0.5)-10;
plot(K,y)

num1=1;
den1=[0.433 1.271 1];
num2=8;
den2=[1 6 12 8];
sys1=tf(num1,den1)
sys2=tf(num2,den2)
t=[0:0.1:10];
[y1,T1]=step(sys1,t);
[y2,T2]=step(sys2,t);
plot(T1,y1,T2,y2,'--')
%step(sys)

num1=1;
den1=[0.02 0.201 1];
num2=2500;
den2=[1 60 550 2500];
sys1=tf(num1,den1)
sys2=tf(num2,den2)
t=[0:0.1:10];
[y1,T1]=step(sys1,t);
[y2,T2]=step(sys2,t);
plot(T1,y1,T2,y2,'--')
%step(sys)