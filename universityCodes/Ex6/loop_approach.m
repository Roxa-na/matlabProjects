function result_matrix = loop_approach(matrix1,matrix2)

for i=1:size(matrix1,1)
    for j=1:size(matrix2,2)
        result_matrix(i,j) = matrix1(i,j) * matrix2(i,j); 
    end
end

end