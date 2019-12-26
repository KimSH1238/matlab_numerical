function Y=nik(t,i,k,K)
if t==max(K) && i==length(K)-k-1, Y=1; return; end
if k==1
   if t>=K(i+1) && t<K(i+2), Y=1;
   else Y=0;
   end
else
   AD=K(i+k)-K(i+1);
   if AD==0, A=0; else A=(t-K(i+1))/AD; end
   BD=K(i+k+1)-K(i+2);
   if BD==0, B=0; else B=(K(i+k+1)-t)/BD; end
   Y=A*nik(t,i,k-1,K)+B*nik(t,i+1,k-1,K);
end?