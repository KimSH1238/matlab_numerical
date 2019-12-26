function output=my_asin(x)
if x>=-1 & x<=1
    output = asin(x)
else
    output = 'Error - asin is not defined for this value'
end