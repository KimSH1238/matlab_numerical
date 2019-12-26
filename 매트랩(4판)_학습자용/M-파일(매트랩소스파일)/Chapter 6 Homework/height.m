function output = height(t)
% This function returns the height of a rocket at t seconds after engine
% shutdown.  It requires a single input - time - which can be either a
% scalar or a matrix
output = -9.8/2.*t.^2 + 125.*t + 500;