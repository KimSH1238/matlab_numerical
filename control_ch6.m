%% ppt
denom=([1 4 9 10]);
roots(denom);

sys=tf([10], denom);
%subplot(2,1,1);
%step(sys);
%grid on
%subplot(2,1,2);
%impulse(sys);
%grid on

isstable(tf([10], denom))
%figure()
%pzplot(tf([10], denom))
%grid on

pole(tf([10], denom))
%% e6.11
up=([24 24]);
denom=([1 6 2 1 3]);

isstable(tf(up, denom))
pole(tf(up, denom))
sys=tf(up, denom)
%step(sys);
%grid on
%% 실험
(1294+1180+1241)/3
(1128+1092+1134)/3
(1223+1153+1164)/3