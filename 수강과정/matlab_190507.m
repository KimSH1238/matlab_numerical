% logical, double
5>8
5==8
y=(6<10)+(7>8)+(5*3~=10)
% ~= ok =~ nok

b=[15, 6, 9, 4, 11, 7, 14];
c=[8, 20, 9, 2, 19, 7, 10];
d=c>=b
% logical array(matrix) is true of false array(matrix)
d=[12, 14, 1, 32, 13, 3, 24];
ma=[b; d];
mb=[d; c];
mc=ma~=mb

r=[8, 12, 9, 4, 23, 19, 10];
s=r<=10
t=r(s)
% logical cantbe replaced by double
% w=[1, 0, 1, 1, 0, 0, 1];
% t=r(w)

% black priority is same
a=3+4<16/2
b=3+(4<16)/2
% & : and, | : or, ~ : not
% T & F : F, T | F : T, 
a=3&7
b=5|0
c=~25
d=25*((12&0)+(~0)+(0|5))
x=[2, 3, 1, 3];
y=[23, 0, 2, 3];
z1=x|y
z2=x&y
% precedence of operation
% 1 expo 2 not 3 multiple 4 addition 5 boul 6 and or

x=-2;
y=5;
a= -5<x<-1
b= -5<x & x<-1
% numerical expression not same in matlab
% can use and(a,b) or(a,b) not(a,b)
% xor(a,b) : exclusive or > returns true if one operand is true and one is
% false

% all(a) : return true if all element is true (matrix and)
a=[1, 12, 3, 13];
b=[0, 23, 1, 23];
c=all(a)
d=all(b)
% result of all(matrix) is logical const
% any(a) : return true if one or more element is true (matrix or)
% find(a) : if a is matrix, return indice of true element
% find(a>b) : if a>b >> true elememt

t=input('enter no. of worked hour : ');
h=input('enter hourly wage : ');
pay=t*h;
% matlab dont need structure line but better
if t>40
    pay=pay+(t-40)*0.5*h;
end
% matlab dont need indentation but better
fprintf('worker''s pay is %5.2f\\ \n',pay)

% another algorhism
if t>40
    pay=t*h+(t-40)*0.5*h;
else
    pay=t*h
end

fprintf('worker''s pay is %5.2f\\ \n',pay)

% ex : H2O level of watertower
h=input('')

if h>33
    disp('error : too high than tower')
elseif h<0
    disp('error : too low than bottom')
elseif h<=19
    v=pi*12.5^2*h;
    fprintf('volume of H2O is %7.3f m^{3}',v)
else
    rh=12.5+10.5*(h-19)/14;
    v=pi*12.5^2*19+pi*(h-19)*(12.5^2+12.5*rh+rh^2);
    fprintf('volume of H2O is %7.3f m^{3}',v)
end

% switch, case, otherwise
% ex : unit converter
ei=input('enter numeric value : ')
eiu=input('enter current units(J, ft-lb, cal, eV) : ','s')
eou=input('enter new units(J, ft-lb, cal, eV) : ','s')

error=0;

switch eiu
    case 'J'
        eiJ=ei;
    case 'ft-lb'
        eiJ=ei/0.738;
    case 'cal'
        eiJ=ei/0.239;
    case 'eV'
        eiJ=ei/6.24e18
    otherwise
        error=1;
end

switch eio
    case 'J'
        eo=eiJ;
    case 'ft-lb'
        eo=eiJ*0.738;
    case 'cal'
        eo=eiJ*0.239;
    case 'eV'
        eo=eiJ*6.24e18
    otherwise
        error=1;
end

if error
    disp('error : current or new ynit are typed incorrectly')
else
    fprintf('E=%g %s\n',eo,eou)
end