%----------------------------
% Exercise Chapter 6
%----------------------------


clc
clear
close
%6.1
% Create 2 matrices with the dimension 1000x1000 and fill it with
%random numbers. Perform a multiplication of both matrices
%(element by element operation!). Solve this exercise in two different
%ways: nested for loops and vectorized approach.
%Create for each computation method a custom function in store
%them in a separate m-file.
% Name of function 1: vectorized_approach
% Name of function 2: loop_approach
% Input: matrix1, matrix2
% Output: result_matrix
% Call the two created functions in a separate script-file and
%measure the execution time of both functions
disp('Exercise 6.1');
r = 1000;
c = 1000;

A = rand(r,c);
B = rand(r,c);
%two matrices are created.
result_matrix_loop_approch = zeros(r,c);
result_matrix_vectorized_approch = zeros(r,c);
%timing of the first approach
start1 = tic;
result_matrix_loop_approch = loop_approach(A,B);
end1 = toc(start1);

%timing of the second approach
start2 = tic;
result_matrix_vectorized_approch = vectorized_approach(A,B);
end2 = toc(start2);

if end1 < end2
    fprintf('loop_approach (elapsed time : %f) took less time than the vectorized_approach (elapsed time : %f)\n',end1,end2);
else
    fprintf('vectorized_approach (elapsed time : %f) took less time than the loop_approach (elapsed time : %f)\n',end2,end1);
end
disp('---------------------------------------------------------');

%6.2
% Create a program with the functionality described as follows
%consisting of 2 custom functions:
%Ask the user to input two different points (consisting of x- and y-
%values). Create a function which calculates the parameters of a
%linear function k and d (basing on the formula: 𝑦 = 𝑘 ⋅ 𝑥 + 𝑑).
% The function needs to consist of the
%following parameters:
%Input: point_1, point_2
%Output: k, d
%Name of function: calculate_k_d
%Further, ask the user to input the minimum and maximum x-value
% for a plot of the function. Based on these limits, create a
%sequence of x-values with a step size of 10^−3.
%Calculate the y-values according to the output parameters k and d
%of the first function. Create a second custom function which creates
%a plot of the calculated x- and y-vector. Use a proper formatting for
%the plot (grid lines on, appropriate title and labels).
%The function needs to consist of the following parameters:
%Output: -
%Name of function: create_plot
%--------------------------------------------------------------
clear
close
point1 = zeros(2,1);
point2 = zeros(2,1);

point1(1,1) = input('Please enter the x value for the first point: ');
point1(2,1) = input('Please enter the y value for the first point: ');

point2(1,1) = input('Please enter the x value for the second point: ');
point2(2,1) = input('Please enter the y value for the second point: ');
%calculating the slope and y-intersection of
% the line which goes through these pints.
[k,d] = calculate_k_d(point1,point2);
%getting the input for plotting
min = input('Please enter the minimum value for x: ');
max = input('Please enter the maximum value for x: ');
%creating the range of values for plotting
x_val = min:0.001:max;
y_val = k * x_val + d;
create_plot(x_val,y_val)
