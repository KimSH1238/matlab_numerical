a=12, b=4; c=(a-b)+40-a/b*10;
c
% need black
% comma or semicolon

x=45;
e=sin(x)^2+cos(x)^2;
c=sind(x)
d=sin(x)
% tri_function sin and sind

% cant contain in name > period comma semicolon
% uppercase lowercase differenced
% use underscore instead space
% must begin with letter

% name cant be used same like built-in
% break case catch classdef continue else elseif end for function global
% if otherwise parfor persistent return spmd switch try while 

% can use but should not use name ans eps inf pi i j
% not pi=1

% clear : remove all variables
% clear x : x remove
% who : display list of variables
% whos : more detail who

% ax^2+bx+c determinant, solution
a=4; b= -9; c= -17.5;
dis=sqrt(b^2-4*a*c)
x1=(-b+dis)/(2*a)
x2=(-b-dis)/(2*a)

% if 1111.m > ans is 1111
% do mot allow 190312.m

% cd E: > change directory

aa1=[1 2 3]
aa2=[1,2,3]
% space, comma available
% comma + space better
aa3=[1, 2, 3; 4, 5, 6]
aa4=[1, 2, 3
     4, 5, 6]
% enter, semicolon available
% semi + space better

% matlab's arange
aax1=[1:2:10]
aax2=[-3:7]
aax3=[-12.2:13.4]
% not giving term, matlab automatically decide term
aax4=[12:-3:-34]
aax4_error=[12:-3:-34]

% matlab's linspace
va=linspace(0,2,10);
va1=linspace(0,2)
disp(va)
% displaing function disp()

% function script 1
cd=6; f1e=3; f1h=4;
% cos(), cosd() importance
mat=[f1e, cd*f1h, cos(pi/3); f1h^2 ...
     sqrt(f1h^2/2), 1]
% continuation ... using

% zeros(), ones(), eye()
aa5=zeros(1,2)
aa6=ones(2,2)
aa7=eye(3,4)

% matlab dont need decide size
% ex transpose operator
aa1_tr=aa1'
aa7_tr=aa7'

% array element can be addressed individually in subgroups
ve = [35, 36, 78, 23 ,5, 14]
ve(4)
ve(5)=50
% indexing & modifing
ve(4)+ve(5)

% indexing priority ver to hor
% array(ver,hor)
aa7
aa7(3,1)=2
aa7
aa7(5)

% extraction matrix or vector
% vector
ve
ve_sub=ve(3:5)
ve_sub1=ve([1,3:5])
% square black important

% matrix
aa8=[1, 3, 5, 6, 9;
     2, 4, 6, 8 ,10;
     3, 6, 9, 12, 15;
     14, 15, 15, 12, 15]
% hor extraction
aa8_sub1=aa8(:,3)
% ver extraction
aa8_sub2=aa8(3,:)
aa8_sub3=aa8(1:3,2:3)
aa8_sub4=aa8([1,3],[5,2:3])

% matrix free making
aa9=[10:-1:4;
     ones(1,7);
     2:2:14;
     zeros(1,7)]
 % many rows available
 aa10=[10:-1:4;
     ones(1,7);
     2:2:14;
     zeros(1,7)]