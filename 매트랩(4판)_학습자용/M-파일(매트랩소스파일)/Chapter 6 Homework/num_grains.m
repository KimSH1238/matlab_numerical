function output = num_grains(n)
% This function finds the number of grains in a 1 inch square, based on the
% ASTM grain size.  The input to the function can either be a scalar or a
% matrix.
output = 2.^(n-1);