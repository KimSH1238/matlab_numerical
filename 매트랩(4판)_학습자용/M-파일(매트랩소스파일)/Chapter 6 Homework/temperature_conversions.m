function []=temperature_conversions()
%a Fahrenheit to Kelvin
temp_F=0:25:200;
temp_K = F_to_K(temp_F);
[temp_F',temp_K']

function output = F_to_K(x)
R = x + 459.67;
K = R*5/9;
output = K;
end
%b Celcius to Rankine
temp_C =0:10:100;
temp_R = C_to_R(temp_C);
[temp_C',temp_R']
function output = C_to_R(x)
F = 9/5*x + 32;
R = F+459.67;
output = R;
end
%c Celcius to Fahrenheit
temp_C=0:10:100;
temp_F=C_to_F(temp_C);
[temp_C',temp_F']
function output = C_to_F(x)
F = 9/5*x + 32;
output = F;
end
end
