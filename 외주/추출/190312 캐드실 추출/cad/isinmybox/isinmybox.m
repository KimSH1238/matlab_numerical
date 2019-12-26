clear all; a=pi/6; R[cos(a) -sin(a); sin(a) cos(a)];
MyBox=[-3 3 -3 3]; figure(1); clf; %axis on; axis image;
axis(MyBox); box on; grid on; daspect([1 1 1]);
%myax=gca; myax.DataAspectRatio=[1 1 1]; %set(myax, 'dataaspectratio',[1 1
%1]);
,
hc=line(0,0); set(hc, 'marker','o','markersize',3,'linestyle','--')
B=[]; [x,y]=ginput(1);
while(isinmybox(MyBox,x,y)),
          B=[B;[x,y]]; set(hc, 'xdata', B(:,1),'ydata'B(:2));
           [x,y]=ginput(1);
end

N=1000; T=(0:N)/N; X=zeros(1,N+1);Y=X;
for k=1:(N+1),  t=T(k);
    r=getbezpt(B,t);
    X(k)=r(1); Y(k)=r(2);
end   ; h=line(X,Y);
set(h,'color',[0.5 0.5 0.5], 'linewidth',3);