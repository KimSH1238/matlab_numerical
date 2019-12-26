function matdata=pascal_mat_v2(num1,num2)
% make pascal symmetrical matrix
%
% num1 : input > pascal symmetrical matrix's raw
% num2 : input > pascal symmetrical matrix's col
% matdata : output > pascal symm~ matrix

matdata=zeros(num1,num2);
matdata(1,:)=1;
matdata(:,1)=1;

for raw=2:num1
    for col=2:num2
        matdata(raw,col)=matdata(raw-1,col)+matdata(raw,col-1);
    end
end
disp(matdata)