function dydt = blasius(t,y)
dydt(1)=y(2)
dydt(2)=y(3)
dydt(3)=-1/2*y(1)*dydt(2)
dydt=dydt'