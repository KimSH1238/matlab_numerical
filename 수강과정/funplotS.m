function xyout = funplotS(Fun,a,b)

x=linspace(a,b,100);
y=feval(Fun,x);
xyout(1,1)=a;
xyout(2,1)=(a+b)/2;
xyout(3,1)=b;
xyout(1,2)=y(1);
xyout(2,2)=feval(Fun,(a+b)/2);
xyout(3,2)=(100);

plot(x,y)
xlabel('x')
ylabel('y')
