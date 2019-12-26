function BB=getbezpt(B,t)
BB=B; n=size(BB,1);
while(n>1)
    BB=(1-t)*BB(1:(n-1),:)+t*BB(2:n,:); n=n-1;
end