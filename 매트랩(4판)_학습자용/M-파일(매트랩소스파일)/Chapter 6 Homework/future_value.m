function FV=future_value(PV, i, n)
% This function requires 3 inputs
% PV, the present value
% i, the interest rate per compounding period, expressed as a fraction
% n, the number of compounding periods
% any ONE of the variables can be represented with a matrix
% the remainder must be scalers.
FV=PV.*(1+i).^n;