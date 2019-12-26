df=1:4
df(5:10)=10:5:35
% can add element
ad=[5, 7, 2]
ad(8)=4
% can skip between

e=[1, 2, 3, 4;
   5, 6, 7, 8]
e(3,:)=[10:4:22]
% can use square black can omit
k=eye(3)
g=[e, k]
% can add matrix
aw=[3, 6, 9;
    8, 5, 11]
aw(4,4)=11
bg(3,4)=15
% default is zero

% delete element and flow
df
df(2)=[]
df(2:4)=[]
g
g(2,:)=[]
g(:,1:2)=[]

% length() : return no. of element in vector
% size() : return row verctor size
% reshape(a,b,c) : create new matrix with same 1D index in a
% diff. shape like (b,c)
% [1, 4, 7;
%  2, 5, 8;
%  3, 6, 9] index order

% diag(a) : if a is vector > create square matrix with diagonal element is a
% if a is matrix > extrude diagonal element to vector

% string is 'string' 'str''ing'
% string is array of char
% created within single quote
a='fruit 8'
a(4:7)
a(1)=15
a(2:3)=14
a(3:4)='aa'
% string indexed askey cord
% string is similar to vector, matrix
a=['iiii ';'need ']
% Q : char func?

% qu 16
a=[2:3:17]
b=[3:4:15]
c=[a, b]
% qu 34
a=[1:18]
b=reshape(a,3,6)
ba=[b(:,1), b(:,3), b(:,5)]
bb=[b(2,2:5), b(:,3)']
bc=[b(1,3:5), b(3, 2:4)]
% qu 41
e1=zeros(2,2);
e2=ones(2,2);
a=[e2, e1]
e3=eye(2,2);
% warning : eyes() X eye() O
b=[e3, e1, e2]
e1=ones(1,4)
e2=zeros(1,4)
% warning : zeros(2) > 2,2 array
c=[e1; e2; e2]

% vector adding subtracting
vec1=[8, 5, 4]
vec2=[10, 2, 7]
vec=vec1+vec2
vec=vec1-vec2
vec=vec+1
vec=vec*2
vec=vec/4

% array multiplication
a=[1, 4, 2;
   5, 7, 3;
   9, 1, 6;
   4, 2, 8]
b=[6, 1;
   2, 5;
   7, 3]
c=a*b

a=[2, 5, 1]
b=[3, 1, 4]'
a*b
% dot product(inner product) calculation
b*a

a=[1, 4, 2;
   5, 7, 3;
   9, 1, 6;
   4, 2, 8]
b=3
b*a
a*b

% linear alzebra
a(4,:)=[]
% inverse matrix
a=inv(a)
a=inv(a)
% double inverse is same
a=a^-1
% matrix determinant
det(a)
% Q : matrix left division

% left division = transpose (transpose right division)
a=[4, -2, 6;
   2, 8, 2;
   6, 10, 3]
b=[8, 4, 0]'
c=a'
d=b'
x=a\b
x=inv(a)*b
x=(d/c)'
x=(d*inv(c))'

% element by element operation
a=[4, -2, 6;
   2, 8, 2;
   6, 10, 3]
b=[8, 3, 0;
   4, 5, 6;
   1, 4, 8]
a*b

a=[4, -2, 6;
   2, 8, 2;
   6, 10, 3]
b=[8, 3, 0;
   4, 5, 6;
   1, 4, 8]
a.*b

a=[4, -2, 6;
   2, 8, 2;
   6, 10, 3]
b=[8, 3, 0;
   4, 5, 6;
   1, 4, 8]
a./b

a=[4, -2, 6;
   2, 8, 2;
   6, 10, 3]
b=[8, 3, 0;
   4, 5, 6;
   1, 4, 8]
a/b

a=[4, -2, 6;
   2, 8, 2;
   6, 10, 3]
b=[8, 3, 0;
   4, 5, 6;
   1, 4, 8]
a\b

a=[4, -2, 6;
   2, 8, 2;
   6, 10, 3]
b=[8, 3, 0;
   4, 5, 6;
   1, 4, 8]
a.\b

a=[4, -2, 6;
   2, 8, 2;
   6, 10, 3]
b=[8, 3, 0;
   4, 5, 6;
   1, 4, 8]
a.^(0.5*b)

% for numerical solution
x=linspace(0,2);
yre=10+x.*2+2*x.^2