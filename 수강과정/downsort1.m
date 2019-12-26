function y=downsort1(x)
% arrange array for size

y=x;
n=length(x);
for i=i:n
    for j=i+1:n
        if y(i)>y(j):
            data=y(i);
            y(i)=y(j);
            y(j)=data;
        end
    end
end
