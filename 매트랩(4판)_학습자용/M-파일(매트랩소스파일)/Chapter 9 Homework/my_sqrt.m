function output = my_sqrt(A,x,converg)
xold=x;
for k=1:1000;
    y=1/A*x^2;
    x=xold/8*(15-y*(10-3*y));
    if abs(x-xold)<converg
        xold = x;
        break
    else
        xold=x;
    end
end
output=x;
    