function matdata=pascal_mat_v1(num)
% make pascal symmetrical matrix
%
% num : input > pascal symmetrical matrix's size
% matdata : output > pascal symm~ matrix

matdata=zeros(num);
matdata(1,:)=1;
matdata(:,1)=1;

for raw=2:num
    for col=2:num
        matdata(raw,col)=matdata(raw-1,col)+matdata(raw,col-1);
    end
end
disp(matdata)