%----------------------------
% Exercise Chapter 4
%----------------------------
clc
clear
close
%4.1
% Create a program with if-else statements
% Identify with if-else statements whether the value in the csv file
%is positive, negative or zero.
disp("This is the first exercise: \n");
dRead = readmatrix('num_value.csv');
num_val = dRead;
if num_val > 0
    res_val = 'positive'
elseif num_val == 0
    res_val = 'zero'
else
    res_val = 'negative'
end
disp("--------------------------------------------\n");
%----------------------------------------------------------
%4.2
%Identify whether that value belings to a range from 0 to 20 or higher.
disp("This is the second exercise: \n");
if (num_val >= 0) & (num_val < 10)
    res_range = '0 <= value < 10'
elseif (num_val >= 10) & (num_val <= 20)
     res_range = '10 <= value <= 20'
elseif (num_val > 20)
     res_range = 'value > 20'
else
    res_range = 'value < 0'
end
disp("--------------------------------------------\n");
%----------------------------------------------------------
%4.3
% certain condition to assess the validity of a statement
disp("This is the third exercise: \n");
switch num_val
    case 1
        res_valid = 'The input value is valid.'
    case 2
         res_valid = 'The input value is valid.'
    case 3
         res_valid = 'The input value is valid.'
    case 4
        res_valid = 'The input value is valid.'
    otherwise
        res_valid = 'The input value is not valid.'
end
disp("--------------------------------------------\n");
%----------------------------------------------------------
%4.4
%A switch-case that checkas the first letter of a string
disp("This is the forth exercise: \n");
string_var = 'this is a string.'
switch string_var(1)
    case 'T'
        res_string = 'capitalized'
    case 't'
        res_string = 'not capitalized'
    otherwise
        res_string = 'different character'
end
disp("--------------------------------------------\n");
