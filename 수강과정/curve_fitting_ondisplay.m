function curve_fitting_ondisplay(n)
% input on display > go fitting

close all
figure(1);
hold on;
grid on;
axis([0, 10, 0, 10]);
i=0; butten=1;
% mouse initial value

% [x, y, button]=ginput(n)
% allow to identify coordinate of n points

while butten==1
    [xg,yg,butten]=ginput(1);
    i=i+1;
    x(i)=xg;
    y(i)=yg;
    plot(x(i),y(i),'ro','linewidth',2)
end

p=polyfit(x,y,n);
xp=min(x)-1: .1: max(x)+1;
yp=polyval(p,xp);
plot(xp, yp, 'k')