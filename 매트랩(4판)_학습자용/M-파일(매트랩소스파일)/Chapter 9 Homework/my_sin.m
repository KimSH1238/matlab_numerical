function output = my_sin(x)
sinx = 0;
for k=1:30
    new = sinx + (-1)^(k+1)*x^(2*k-1)/factorial(2*k-1);
    if abs(new-sinx)<0.001
        sinx=new;
        break
    else
        sinx=new;
    end
end
output=sinx;
        