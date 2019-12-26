function output = eapprox(K)
A=ceil(rand(1,K)*K);
J=0;
for k=1:K
    if A~=k
        J=J+1;
    end
end
output=K/J;