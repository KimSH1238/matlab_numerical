xb1=285;
x1=[285 270 295 260 300];
r1=x1/xb1; % 주파수비 구하기

y1=[33 15 15 10 13]; % 이 부분 수정
R1=y1/4; % 진폭비 구하기
% 0.0681 도출

xb2=260;
x2=[260 240 250 270 280];
r2=x2/xb2; % 주파수비 구하기

y2=[33 14 10 15 12]; % 이 부분 수정
R2=y2/4; % 진폭비 구하기
% 0.0716 도출

m1=73.6+282.9+97.1+97.3;
m2=m1+97.1;
k1=m1*xb1^2
k2=m2*xb2^2