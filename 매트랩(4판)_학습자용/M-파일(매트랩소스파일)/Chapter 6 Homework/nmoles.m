function n = nmoles(mass,MolecularWeight)
% This function requires 2 inputs, the mass and the molecular weight
% either or both inputs can be scalars or matrices
[MW,m]=meshgrid( MolecularWeight,mass);
n = m./MW;