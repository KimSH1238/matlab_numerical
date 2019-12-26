x=[1 : 10 : 1];
y=0.001*x.^4;
plot(x,y)

% plot(x,y,'line specifier','property name','property value')
% line specifier : line - -- : -. , color r g b k(black) , marker
% d(diamond), s(square)
% property name,value : linewidth, marker size,edge, fill color
% 'color' : [r, g, b]/255

x=[1,2,3,4,5,6,7];
y=[2,3,4,5,6,7,8];
plot(x,y,'-mo','LineWidth',2,'markersize',12,'MarkerEdgeColor','g','markerfacecolor','y')

yr=[1988:1:1994];
s=[8, 12, 20, 22, 18, 24, 27];
plot(yr,s,'--r*')

x=[-2:0.01:4];
y=3.5.^(-0.5*x).*cos(6*x);
plot(x,y)

% fplot('fnc',limits,'line specifier')
% limit = [xmin,xmax]
% multiple plot : plot(x1,y1,x2,y2,x3,y3)

x=[-2:0.01:4];
y=3*x.^3-26*x+6;
yd=9*x.^2-26;
ydd=18*x;
plot(x,y,'-r')
hold on
plot(x,yd,'-g')
hold on
plot(x,ydd,'-b')
hold off
% hold on : dont lose exist graph <> hold off

% line : add line to exist plot
x=[-2:0.01:4];
y=3*x.^3-26*x+6;
yd=9*x.^2-26;
ydd=18*x;
plot(x,y,'-r')
line(x,yd,'color','g')
line(x,ydd,'color','b')
% line cant use abbriviation speicifing
xlabel('x label')
ylabel('y label')
title('visualization title')
legend('original','1st diffirential','2nd diffirential')
% legend('string nst','location','lcn')

% ex noexist in textbook
x=[-2:0.01:4];
y=3*x.^3-26*x+6;
yd=9*x.^2-26;
ydd=18*x;
plot(x,y,'-r')
line(x,yd,'color','g')
line(x,ydd,'color','b')
xlabel('\bfx data')
ylabel('y data','fontsize',20)
title('plotting fnc & its derivative')
legend('fnc','1st derivative','2nd derivative','location','northwest')
% cant use \n in label

% alpha graph ex
t=0:.1:100;
y=0.33*exp(-0.05*t);
plot(t,y)
% title('Ae^{\alphat} for A=0.33 & \alpha = -0.55','fontsize','15')
% unexpected error
% rotation to font available
% axis equal, square, tight
% grid on, off