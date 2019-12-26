%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 10 Homework Solutions
clear, clc, close all
%% Problem 10.1
A = [1 3 5];
B = [-3 -2 4];
dot(A,B)
dot(B,A)

A = [0 -1 -4 -8];
B = [4 -2 -3 24];
dot(A,B)
dot(B,A)
%% Problem 10.2
density = [1.2, 7.8, 2.7];
volume = [700,200, 300];
total_mass=dot(density,volume)
%% Problem 10.3
num=[2,1,2,5,1];
cost=[3.50, 1.25, 4.25, 1.55, 3.15];
% Because we are dealing with money, change the format to bank
format bank
total_cost=dot(num,cost)
format short  % Return the format to the default, short.
%% Problem 10.4
mass = [250, 100, 10];
C = [0.45, 4.2, 0.90];
CP = dot(C,mass)
%% Problem 10.5
C = 12;
H = 1;
O = 16;
AW=[C,H, O];
num_atoms=[2, 1, 6];
MW=dot(AW,num_atoms)
%% Problem 10.6
N_MW = 28;
O_MW = 32;
Argon_MW = 44;
MW = [N_MW, O_MW, Argon_MW];
fraction = [0.78, 0.21, 0.01];
Air_MW=dot(MW,fraction)
%% Problem 10.7
A = [12 4; 3 -5];
B=[2 12; 0 0];
A*B
B*A

A=[1 3 5; 2 4 6];
B = [-2,4; 3, 8; 12, -2];
A*B
B*A
%% Problem 10.8
% In matrix multiplication it is necessary to pay strict attention to rows
% and columns.  
Ann=[2; 1; 2; 5; 1]
Fred=[3; 2; 1; 4; 3]
cost=[3.5, 1.25, 4.25, 1.55, 3.15]
total_bill = cost*[Ann,Fred]
%% Problem 10.9
mass = [110 	250 	10 
        100 	250 	10 
        101     250 	10 
        98.6 	250 	10 
        99.4 	250 	10 ]
    
C=[4.2, 0.45,0.9]
% We need to transpose the mass
CP=C*mass'

%% Problem 10.10
AW = [ 12, 1, 16];
Alcohol_comp=   [1	4	1
                2	6	1
                3	8	1
                4	10	1
                5	12	1]
            
MW = AW*Alcohol_comp'

%% Problem 10.11
A = [-1 3; 4 2]
A.^2    % Each element is squared
A^2     % The same as A*A using matrix algebra

%% Problem 10.12
A = pascal(3)
A.^3    % Each element is cubed
A^3     % The same as A*A*A using matrix algebra

%% Problem 10.13
A = [-1 3; 4 2]
det(A)

determinant = A(1,1)*A(2,2) - A(1,2)*A(2,1)

%% Problem 10.14
A = [2,-1; 4 5]
det(A)
inv(A)

B = [4 2; 2 1]
det(B)      % Singular
%inv(B)      % Thus there is no inverse

C = [2 0 0; 1 2 2; 5 -4 0]
det(B)      % Singular
%inv(B)      % Thus there is no inverse%%

%% Problem 10.15
%  Select an xy coordinate system with x horizontal, and y vertical
F=[0,-200,0] % Define the force in each direction
r=[20*cosd(60), 20*sind(60), 0] % Notice the use of sind and cosd.  These 
%functions accept degrees as input
M=cross(r,F)

%% Problem 10.16
%  Select an xy coordinate system with x horizontal, and y vertical
r=[-10,5,0]
F=[-35*cosd(55), -35*sind(55), 0]
M=cross(r,F)

%% Problem 10.17
% Select an x,y,z coordinate system with x coming out of the paper,
% y horizontal in the plane of the paper, and z vertical in the plane 
% of the paper -- This is a right handed coordinate system.
F=[0,0, -10;
    0,0, -10]
A = [4, 14, 0];
B = [4,2, 0];
R = [A;B]
M=cross(R,F)
M=cross(R(1,:), F(1,:))
%% Problem 10.18
% Let A x = B
A = [-2, 1; 1, 1];
B = [3;10];
x=inv(A)*B
x= A\B
% b
A = [5 3 -1; 3 2 1; 4 -1 3];
B = [10; 4; 12];
x=inv(A)*B
x = A\B
% c
A=[3 1 1 1
    1 -3 7 1
    2 2 -3 4
    1 1 1 1];
B=[24; 12; 17; 0]
x=inv(A)*B
x = A\B
%% Problem 10.19
A=[3 4 2 -1 1 7 1
    2 -2 3 -4 5 2 8
    1 2 3 1 2 4 6
    5 10 4 3 9 -2 1
    3 2 -2 -4 -5 -6 7
    -2 9 1 3 -3 5 1
    1 -2 -8 4 2 4 5]
B=[42; 32; 12; -5; 10; 18; 17]
clear x 
tic
x=inv(A)*B
toc
clear x  % clear x so that both problems must create the variable
tic
x=A\B
toc
%% Problem 10.20
R1 = 2
R2 = 4
R3 = 6
R4 = 8
R5 = 10
V1 = 10
A=[R2+R4, -R2, -R4; -R2, R1+R2+R3, -R3; -R4, - R3, R3+R4+R5]
B = [V1; 0; 0]

Current = A\B

%% Problem 10.21
A = [0, 0.2, 0.65; -100, 0.35, 0.25; 100, 0.45, 0.1]
B = [50; 0; 50]
Unk =A\B
% Unk(1) is the mole fraction  of ethanol flowing into the system (x)
% Unk(2) is the mass flow rate of the tops, mtops
% Unk(3) is the mass flow rate of the bottoms, mbottoms
%% Problem 10.22
% A force balance on a statically determinate truss
theta1=45  % angle in degrees
theta2=65  % angle in degrees
F1x=cosd(30)*1000;   % horizontal load
F1y=-sind(30)*1000 % vertical load
A=[-cosd(theta1),cosd(theta2),0,0,0,0
    -sind(theta1),-sind(theta2),0,0,0,0
    cosd(theta1),0,1,1,0,0
    sind(theta1),0,0,0,1,0
    0,-cosd(theta2),-1,0,0,0
    0,sind(theta2),0,0,0,1]
B=[F1x,-F1y,0,0,0,0]'
x=inv(A)*B
x=(A\B)'
%% Problem 10.23
% Check with something simple
A_test=[1,2,3];  B_test=[1;2;3];
x=A_test*B_test
x=my_matrix_multiplier(A_test,B_test)
%% Now try Problem 10.22
x=my_matrix_multiplier(inv(A),B)
