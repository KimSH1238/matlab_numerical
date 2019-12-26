function [S,N]=mysum1(n,m)
N=m-n+1;

if N<=0, error('error'); end

S=0; for k=n:m, S=S+k; end

clear all; a=pi/6; R=[cos(a) -sin(a);sin(a) cos(a)];
MyBox=[-4 4 -3 3];