function output = energy(m)
% This function finds the energy equivalent of a given mass.  The input to
% the function can be either a scalar or a matrix.
c = 2.9979e8; %speed of light in a vacuum
output = m.*c.^2;
