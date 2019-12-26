function [x,v,a] = freefall(t)
% This function requires a single input - time, and returns three output
% values; distance, velocity and acceleration
x = 1/2.*9.8.*t.^2;
v = 9.8.*t;
a = 9.8;