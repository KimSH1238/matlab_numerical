% anonymous fnc
fa=@ (x) exp(x.^2)./sqrt(x.^2+5)
fb=@ (x1,x2) 3*fa+exp(x.^2)./sqrt(x.^2+5)
% for input matrix > need each perform '.'
% can use many input

% fnc fnc
ydemo=funplot(@F1, 0.5, 4);
disp(ydemo)
fdemo=@ (x) 2*x+1
ydemo=funplot(fdemo, 0, 4);
disp(ydemo)

% feval : evaluate value of fuc
disp(feval('sqrt',8))

% Q 7,8
S=@ (r,d) pi^2.*(2*r+d).*d
r=0.35;
d=0.12;
t=0.002;
W=@ (S,t) sw*S*t
W1=@ (r, d, t) sw*(pi^2.*(2*r+d).*d)*t
sw=0.696;

disp(S(r,d))
disp(W1(r,d,t))
% disp(W(S(r,d),t)
% cant use fncfnc at onlyline function

% Q 7.36
RV=(1+(w.*L./R).^2)^(-0.5)

% Q 7.26