function output = mass(num_moles, molecular_weight)
% This function requires two inputs, the number of moles, and the molecular
% weight
% Either or both inputs can be scalars or matrices.
[MW,n] = meshgrid( molecular_weight,num_moles);
output = n.*MW;