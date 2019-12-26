function polygon(n)
%This function requires a scalar input - the number of sides of a requested
%polygon, and draws it in polar coordinates.  Note that no VALUE is
%returned from this function.
theta = 0:2*pi/n:2*pi;
r = ones(1,length(theta));
polar(theta,r)