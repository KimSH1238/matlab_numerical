function h=drawns(i,k,K)
N=1000;
T=(max(K)-min(K))*(0:N)/N+min(K);
?
Y=zeros(N+1);
for kk=1:N+1, t=T(kk);
   Y(kk)=nik(t,i,k,K);
end
h=line(T,Y);?