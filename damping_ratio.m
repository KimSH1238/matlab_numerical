mm50=mm;
mm70=mm1;

cut50=299;
cut70=137;

%x1=mm50{:,1};
%x1=x1(11:length(x1));
%y1=mm50{:,2};
%y1=y1(11:length(y1));
z1=mm50{:,3};
z1=z1(cut50:length(z1));

%x2=mm70{:,1};
%x2=x2(11:length(x2));
%y2=mm70{:,2};
%y2=y2(11:length(y2));
z2=mm70{:,3};
z2=z2(cut70:length(z2));

t1=1:length(z1)';
t2=1:length(z2)';
x1=300.*exp(-0.25335.*t1/100).*cos(4.2718.*t1/100);
x2=300.*exp(-0.27354.*t2/100).*cos(4.1455.*t2/100);

%figure
%plot(t1,x1,t1,y1,t1,z1)
%title('50mm plot'), xlabel('time'), ylabel('position')
%legend('x','y','z')

%figure  
%plot(t2,x2,t2,y2,t2,z2)
%title('70mm plot'), xlabel('time'), ylabel('position')
%legend('x','y','z')

figure
plot(t1/100,z1,t1/100,x1)
title('50mm plot'), xlabel('time'), ylabel('position')

figure  
plot(t2/100,z2,t2/100,x2)
title('70mm plot'), xlabel('time'), ylabel('position')