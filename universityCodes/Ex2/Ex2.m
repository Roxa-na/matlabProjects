%----------------------------
% Exercise Chapter 2
%----------------------------

clc
clear
close

% 2.1
% Initialize 2 complex variables (scalar – dimension 1x1) with individual
% numbers (where the real part and the imaginary part of the complex
%variable is required to be ≠ 0). Calculate the conjugate-complex value
% Multiply the 2 complex variables complex_var1 and complex_var2
% Output the variable mult_complex. output the absolut value as well.
fprintf('%s\n','%2.1');
%creating the complex values
complex_var1 = complex(rand()*10 + 1, rand()*10 + 1)
complex_var2 = complex(rand()*10 + 12, rand()*10 + 12)
% conjugating the variables
conj_complex_var1 = conj(complex_var1)
conj_complex_var2 = conj(complex_var2)
%multiplying them
mult_complex = complex_var1 * complex_var2;
%outputting the values + the absolute value
fprintf('mult_complex = %f + %fi\n\n',real(mult_complex),imag(mult_complex));
fprintf('The absolute value of mult_complex is %f.\n', abs(mult_complex));
fprintf('%s\n','---------------------------------------------');
% 2.2
% Calculate the distance vector of these 2 points and its magnitude
fprintf('%s\n','%2.2');
point_1 = [-1; 2; 3];
point_2 = [2; 3; 4];
%calculating the magnitude
dist_vector = point_2 - point_1;
distance = sqrt(sum(dist_vector .* dist_vector));

fprintf('dist_vector = [ ');
fprintf('%g ',dist_vector(1:end));
fprintf(']\n\n');
fprintf('distance = %f\n', distance);

fprintf('%s\n','---------------------------------------------');
% 2.3
% Create a sequence between –π and +π with a step size of 10^-3
% Create a variable with the name y_vector and assign the cosine
%values with respect to the
% Create a plot
%store the plot as jpeg
% add plot of sin(x)*cos(x) and store it as .fig
%----------------
x_vector = -pi:0.001:pi;
//creating the cosine
y_vector = cos(x_vector);
%plotting
plot(x_vector,y_vector);
title('y = cos(x)');
xlabel('x [-pi,pi]');
ylabel('y [-1,1]');
grid on;
p = gca;
%saving
exportgraphics(p,'cos_plot.jpeg');
hold on
mul_vector = sin(x_vector) .* cos(x_vector);
%plotting
plot(x_vector,mul_vector);
legend ('cos(x)', 'multiplication');
title('plotting cos(x) and sin(x)');
%storing
savefig('two_plots.fig');
% 2.4
% Generate data, plot and export to a csv file
%-------
%initializing values
x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);
%CSVfile
%creating data
data= [x',y1',y2'];
% writing the data to csv file
dlmwrite('output.csv',data,';');
close
%plotting
plot(x,y1);
title('plotting cos(x) and sin(x)');
xlabel('x [0,2 * pi]');
ylabel('y [-1,1]');
grid on;
hold on
plot(x,y2);
legend ('sin(x)','cos(x)');
p_new = gca;
exportgraphics(p_new,'sin_cos.jpeg');

% 2.5
%Read data from a CSV-File and create a plot
close
%reading the data
data_read = dlmread('input_file.csv',';');
column_1 = data_read(:,1);
column_2 = data_read(:,2);
%plotting
semilogx(column_1,column_2);
title('plotting csv file');
xlabel('column_1');
ylabel('column_2');
grid on
p_new_2 = gca;
%stroing the plot
exportgraphics(p_new_2,'csv_plot.jpeg');
