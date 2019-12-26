function output = f(x)
element1=find(x>2);
element2=find(x<=2);
y=ones(size(x));
y(element1)=(x(element1)).^2;
y(element2)=2*x(element2);
output=y;