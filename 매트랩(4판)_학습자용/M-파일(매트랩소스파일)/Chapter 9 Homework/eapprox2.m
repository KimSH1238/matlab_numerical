function output = eapprox2(K)
A=ceil(rand(1,K)*K);
n=hist(A,K);
J=sum(n==0);
output = K/J;