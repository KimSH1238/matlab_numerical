% simply supported beam external
p=490.3;
r1=355.05;
x1=0.105;
x2=0.265;

x=linspace(0.105, 0.395, 100);


if x<=0.265
    v1=0.*x-490.3;
    m1= -490.3.*x+51.0525;
elseif x>0.265
    v1=0.*x+135.25;
    m1= -46.27.*x-66.7;
end

plot(x,m1);