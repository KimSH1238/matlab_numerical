a=[1, 4, 3];
b=[1, 0, -2];
disp(conv(a, b))
% deconv > devision eq
disp(deconv(a, b))
% [A, B]=deconv(a,b) > A is divided coeff~, B is rest
deconv([2, 9, 7, -6],[1, 3])

% polyder > derivative of single polynomial
% can derivate 2 eq by polyder(a,b)
% [c,d]=polyder(a,b) > derivative of quotient of 2 eq
% c is derivate result, d is rest of division
a=[3, -2, 4];
b=[1, 0, 5];
c=polyder(a, b)-conv(polyder(a),b)
[d, e]=polyder(a, b)

% curve fitting > polyfit(x array, y array, nth fnc)
% for same of m points, polyfit canbe used to until m-1
x=rand(1,5);
y=rand(1,5);
p=polyfit(x,y,3)
xp=0: 0.01: 1;
yp=polyval(p, xp);
plot(x,y,'o',xp,yp)

% log, exp curve fitting
p1=polyfit(x,log(y),3)
yp1=polyval(p1, xp);
plot(x,log(y),'o',xp,yp1)

% interp1(x,y,xi,'method')
% method > of interpolation