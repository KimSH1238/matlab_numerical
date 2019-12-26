function Y=mysum2(N)
if N==1, Y=1;
else Y=mysum2(N-1)+N;
end