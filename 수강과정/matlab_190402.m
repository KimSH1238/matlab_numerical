% disp fprintf
abc=[5, 9, 1;
     7, 2, 4];
disp(abc)
% disp do not related with ;
disp('disp dont related with ;')

game1=input('1st game score : ');
game2=input('2nd game score : ');
game3=input('3rd game score : ');
ave_points=(game1+game2+game3)/3;
disp(' ')
disp('avg point is :')
disp(' ')
disp(ave_points)
% disp cant display 2 element

yr=[1984:2:1996];
pop=[127 130 136 145 158 178 211];
tableYP(:,1)=yr;
tableYP(:,2)=pop;
disp('        year    population(10^6)')
disp(' ')
disp(tableYP)

% fprinf canbe used th display output
% dueto many available option, fprintf is complicated
fprintf('fprint can use line change \ndiffer from disp\n')
% usage of escape character \ (\n, \b, \t...)

x=50;
fprintf('text as a string %-5.2f additional text\n',x)
% %-(flag)5(field width).2(precision)f(conversion character)

% flag table
% - sign : left justify nom within field
% + sign : print a sign character infrontof num
% 0 sign : add 0 if num is shorter than field

% conversion character table
% e : exponential notation using lowercase
% E : exponential notation using uppercase
% f : fixed point notation
% g : shorter of e or f notation?
% G : shorter of E of f notation?
% i : integer notation

game1=input('1st game score : ');
game2=input('2nd game score : ');
game3=input('3rd game score : ');
ave_points=(game1+game2+game3)/3;
fprintf('avg point is : %-5.2f score \n',ave_points)

x=1.5;
f=sqrt(x)
T=[x;
   f];
fprintf('if num is : %i, its square root is %f\n',T)
% fprintf of matrix

x=input('num of bottom length :');
y=input('num of height length :');
r=sqrt(x^2+y^2);
fprintf(' if x is %f and y is %f, r is %f\n',x,y,r)

% fprintf to save output to file

% step 1 :open file with fopen connand
% fid=fopen('file name','permission')
% r : open file for reading(default)
% w : open file for writing.
% if file already exist, its content is deleted
% if file not exist, creating
% a : same as w but write right after content
% r+ : open file for reading and writing

% step 2: use fprintf

clear all
vmph=10:10:100;
vkmh=vmph.*1.61;
tbl1=[vmph,vkmh];
flbv=200:200:2000;
fn=flbv.*4.5;
tbl2=[flbv,fn];
fid1=fopen('vmph_to_vkmh.txt','w');
fid2=fopen('flbf_to_fn.txt','w');
fprintf(fid1,'velo~ conversion table\n\n');
fprintf(fid1,'mile/hour  km/hour    \n');
fprintf(fid1,'%-8.2f %-8.2f \n',tbl1);
fprintf(fid2,'force~ conversion table\n\n');
fprintf(fid2,'   lbf    newton    \n');
fprintf(fid2,'%-8.2f %-8.2f \n',tbl2);
fclose(fid1);
fclose(fid2);
% good tool for csv and machine learning package
% .mat : variable data for matlab
% save('test.mat','var1','var2', ....)

v=[3, 16, -4, 7, 3];
a=[6, -2.1, 15.5;
   -6.1, 8, 11];
% save -ascil test.mat???
% -ascil is for other program

load('test.mat')
% load is like save
dit=load('dit.txt')
% can make matrix in outside and load to matlab
