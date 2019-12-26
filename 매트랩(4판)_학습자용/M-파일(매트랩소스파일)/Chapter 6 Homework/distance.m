function output = distance(h,R)
% This function calculates the distance to the horizon from the top of a
% hill or mountain.
%It requires two inputs, the height of the hill and the radius
% of the planetary body
% Either or both of the inputs can be scalars or matrices
[ Radius, height] = meshgrid(R,h);
output = sqrt(2.*Radius.*height + height.^2);