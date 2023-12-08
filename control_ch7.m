%% e7.5
num=[1 5];
den=[1 2 8];
sys=tf(num,den);
%rlocus(sys)
%grid on

[r,p,k]=residue(num,den)
%% e7.6
num=[1 4];
den=[1 10 25 85];