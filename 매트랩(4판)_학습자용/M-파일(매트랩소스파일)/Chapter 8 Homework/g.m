function output=g(x)
element1=find(x<-pi);
element2=find(x>=-pi & x<=pi);
element3=find(x>pi);
x(element1)=-1;
x(element2)= cos(x(element2));
x(element3) = -1;
output=x;