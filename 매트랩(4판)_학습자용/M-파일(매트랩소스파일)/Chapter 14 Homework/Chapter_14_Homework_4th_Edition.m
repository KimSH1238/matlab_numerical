%% Holly Moore
% Matlab for Engineers, 4th Edition
% Chapter 14 Homework Solutions
clear, clc, close all
%%  Problem 14.1
%Everyone will have a different result
%% Problem 14.2
% Quadratic Julia Set - Douday's Rabbit
	clear, clc
	iterations=80;
	grid_size = 500;
	[x,y]=meshgrid(linspace(-1.5,1.5,grid_size),linspace(-1.5,1.5,grid_size));
	c = -0.123+i*0.745;
	z=x+y*i;                % set the initial matrix to 0
	map=zeros(size(x));           % create a map of all grid points equal to 0
%%  For Loop
    for k=1:iterations
    	z=z.^2 +c;
    	a=find(abs(z)>sqrt(5));    %Determine which elements have exceeded sqrt(5)
    	map(a)=k;	  
    end
%%  Create a figure
	figure(1)
	image(map)		%Create an image
	colormap(jet)

%% Problem 14.3
% Quadratic Julia Set - Siegal Disk Fractal
	clear, clc
	iterations=80;
	grid_size = 500;
	[x,y]=meshgrid(linspace(-1.5,1.5,grid_size),linspace(-1.5,1.5,grid_size));
	c = -0.391-i*.587;
	z=x+y*i;                % set the initial matrix to 0
	map=zeros(size(x));           % create a map of all grid points equal to 0
%%  For Loop
    for k=1:iterations
    	z=z.^2 +c;
    	a=find(abs(z)>sqrt(5));    %Determine which elements have exceeded sqrt(5)
    	map(a)=k;	  
    end
%%  Create a figure
	figure(2)
	image(map)		%Create an image
	colormap(jet)
    
%% Problem 14.4
% Quadratic Julia Set - San Marco Fractal
	clear, clc
	iterations=80;
	grid_size = 500;
	[x,y]=meshgrid(linspace(-1.5,1.5,grid_size),linspace(-1.5,1.5,grid_size));
	c = -0.75;
	z=x+y*i;                % set the initial matrix to 0
	map=zeros(size(x));           % create a map of all grid points equal to 0
%%  For Loop
    for k=1:iterations
    	z=z.^2 +c;
    	a=find(abs(z)>sqrt(5));    %Determine which elements have exceeded sqrt(5)
    	map(a)=k;	  
    end
%%  Create a figure
	figure(3)
	image(map)		%Create an image
	colormap(jet)

%% Problem 14.5
x=-2*pi:pi/10:2*pi;
y=sin(x);
figure(4)
h=plot(x,y)
get(h)
%a
set(h,'Color','green')
%b
set(h,'LineStyle','--')
%c
set(h,'LineWidth', 2)
% or you could do it all in one statemet
set(h,'Color','green','LineStyle','--','LineWidth',2)
%% Problem 14.6
figure_h=gcf
get(figure_h)
set(figure_h,'Color','red','Name','A Sine Function')
%% Problem 14.7
axis_h=gca
get(axis_h)
set(axis_h,'Color','blue','XScale','log')
%% Problem 14.8
%Everyone's results will be different
%% Problem 14.9
figure(5)
x=-2*pi:pi/20:2*pi;
a=0:pi/10:8*pi;
for k=1:length(a)
    y=sin(x-a(k));
    plot(x,y)
    drawnow
end
%% Problem 14.10
figure(6)
x=-2*pi:pi/20:2*pi;
a=0:pi/10:8*pi;
for k=1:length(a)
    y=sin(x-a(k));
    plot(x,y)
    drawnow
    M(k)=getframe;
end
movie(M,1)
%% Problem 14.11
figure(7)
x=-2*pi:pi/20:2*pi;
y=sin(x);
[x,y]=meshgrid(x,y);
a=0:pi/10:8*pi;
for k=1:length(a)
    z=sin(x-a(k)).*cos(y-a(k));
    surf(z)
    drawnow
    pause(0.1)
end
%% Problem 14.12
figure(8)
x=-2*pi:pi/20:2*pi;
y=sin(x);
[x,y]=meshgrid(x,y);
a=0:pi/10:8*pi;
for k=1:length(a)
    z=sin(x-a(k)).*cos(y-a(k));
    surf(z)
    drawnow
    N(k)=getframe;
    pause(0.1)
end
movie(N,1)

%% Problem 14.13
%Rabbit Fractal
%  The first part of this program is the same as problem 2, except that a
% course grid and only 20 iterations were used to make it run faster
clear, clc
iterations=20;			% Limit the number of iterations in this first pass
grid_size = 50;		% Use a small grid to make the program run faster
X=linspace(-1.5,1.5,grid_size);
Y=linspace(-1.5,1.5,grid_size);
[x,y]=meshgrid(X,Y);
c = -0.123+i*0.745;
z=x+y*i;
map=zeros(size(x));
%%
for k=1:iterations
    z=z.^2 +c;
    a=find(abs(z)>sqrt(5)); 
    map(a)=k;
end
%%
figure(9)
h=imagesc(map)
 
%% New code section
 
N(1)=getframe;			%Get the first frame of the movie
disp('Now lets zoom in')
disp('Move the cursor to a point where you''d like to zoom')
[y1,x1]=ginput(1)		%Select the point to zoom in on
 
xx1=x(round(x1),round(y1))
yy1=y(round(x1),round(y1))
 
%%
for k=2:100			%Calculate and display the new images
    k				%Send the iteration number to the command window
[x,y]=meshgrid(linspace(xx1-1/1.1^k,xx1+1/1.1^k,grid_size),linspace(yy1-1/1.1^k,yy1+1/1.1^k,grid_size));
c = -0.123+i*0.745;
z=x+y*i;
map=zeros(size(x));
for j=1:iterations
    z=z.^2 +c;
    a=find(abs(z)>sqrt(5)); 
    map(a)=j;
end

set(h,'CData',map)		% Retrieve the image data from the variable map
colormap(jet)
N(k)=getframe; 			% Capture the current frame
end
movie(N,2)			% Play the movie twice
 
%% Problem 14.14
figure(10)
surf(peaks)
hold on 
%%
n = 20;			% Define the surface of a sphere, using spherical coordinates
Theta = linspace(-pi,pi,n);
Phi = linspace(-pi/2,pi/2,n);
[theta,phi]=meshgrid(Theta,Phi);  
X = cos(phi).*cos(theta);    % Translate into the xyz coordinate system
Y = cos(phi).*sin(theta);  
Z = sin(phi);
h=surf(40*X,40*Y,40*Z)		%Create a surface plot of a sphere of radius 1
alpha(0.5)
hold off
%% Problem 14.15
figure(11)
peaks
camlight
%% Problem 14.16
figure(12)
clf
load mri
D = squeeze(D);
contourslice(D,[],[],[1,8,12]);
view(3);
%% Problem 14.17