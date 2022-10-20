% Exercise Chapter 1
%-----------------------------
clc
clear 

% 1.1
% Create a 3x1 vector, name it my_ones and fill it with ‘1’s
fprintf('%s\n','%1.1')
my_ones = ones(3,1)
fprintf('%s\n','---------------------------------------------')
% 1.2
% Create a 3x4 matrix, name it my_matrix 
% and fill it with individual numbers
fprintf('%s\n','%1.2')
my_matrix = rand(3,4)
fprintf('%s\n','---------------------------------------------')
% 1.3
% Create a 3x3 matrix of the last three columns of my_matrix
% and name it square_matrix
fprintf('%s\n','%1.3')
square_matrix = my_matrix(:,2:end)
fprintf('%s\n','---------------------------------------------')
% 1.4
%Create a 4x4 identity matrix and name it id_matrix
fprintf('%s\n','%1.4')
id_matrix = eye(4,4)
fprintf('%s\n','---------------------------------------------')
% 1.5
% Create a row vector with 200 random numbers (1 row and 200 columns). 
% The values of the random numbers need 
% to be in the range of 10 ≤ 𝑥 ≤ 20.
fprintf('%s\n','%1.5')
rand_vector = rand(1,200)*10 + 10;
fprintf('%s\n','---------------------------------------------')
% 1.6
% Take the vector of 1.5 and calculate the mean value 
% and name the result mean_rand_vector.
fprintf('%s\n','%1.6')
mean_rand_vector = mean(rand_vector,"all")
fprintf('%s\n','---------------------------------------------')
% 1.7
%  Create a row vector with the colon operator. 
% The minimum value should be 2 and the
%maximum value should be 20. 
% The step size between the values should be 0.1.
fprintf('%s\n','%1.7')
sequence = 2:0.1:20
fprintf('%s\n','---------------------------------------------')
% 1.8
% Create two matrices A and B
% Compute the matrices C1 and C2 by using addition
% and subtraction as follows:
% 𝐶1 = 𝐴 + 𝐵 and 𝐶2 = 𝐴 − 𝐵
% o Compute the matrix products D1 and 
% D2: 𝐷1 = 𝐴 ⋅ 𝐵 and 𝐷2 = 𝐵 ⋅ 𝐴
% o Using element by element operations, compute the matrix F whose elements are
% obtained as follows fij = bij + aij . bij
fprintf('%s\n','%1.8')
A = [1 -2; 3 -1];
B = [-4 7; 2 -3];
%-------
C1 = A + B
C2 = A - B
%-------
D1 = A * B
D2 = B * A
%-------
%fij = bij + aij . bij
F = B + A .* B.^2

