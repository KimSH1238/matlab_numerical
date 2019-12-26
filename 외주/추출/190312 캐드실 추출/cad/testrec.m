K=[0 0 0 0 1 2 2.5 3 3.5 4 4 4 4];
figure(1); clf; axis([min(K) max(K) 0 1]); box on; grid on;
k=4; NN=length(K)-k-1;
for i=0:NN,
h=drawns(i,k,K);
end