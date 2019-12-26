function output=my_matrix_multiplier(A,B)
[rows_A,cols_A]=size(A);
[rows_B,cols_B]=size(B);
if cols_A~=rows_B
    disp('The number of columns in A must equal the number of rows in B')
    output=[];
else
for k=1:rows_A
    total(k)=0;
    for j=1:cols_A
        total(k)=total(k)+ A(k,j)*B(j);
    end
end
output=total;
end

