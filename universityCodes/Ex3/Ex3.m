%----------------------------
% Exercise Chapter 3
%----------------------------

clc
clear
close

% 3.1
%Create a plot existing of four subplots
figure(1)
hold on
%first subplot
subplot(2,2,1)
x1 = 0:0.1:2*pi;
y1 = sin(x1);
plot(x1,y1);
grid on;
title('sinus')
xlabel('x [0,2pi]')
ylabel('y [-1,1]')
%second subplot
subplot(2,2,2)
x2 = 0:0.1:2*pi;
y2 = cos(x2);
plot(x2,y2);
title('cosinus')
xlabel('x[0,2pi]')
ylabel('y[-1,1]')
grid on;

%third subplot
subplot(2,2,3)
x3 = 0:0.1:2;
y3 = exp(x3);
plot(x3,y3);
title('euler number 1')
xlabel('x[0,2]');
ylabel('e^x1');
grid on;

%forth subplot
subplot(2,2,4)
x4 = -2:0.1:2;
y4 = exp(x4);
semilogy(x4,y4);
title('euler number 2')
xlabel('x[-2,2]');
ylabel('e^x2')
grid on;

hold off
%creating the pic file
print('sin_cos_exp_plot.jpeg','-djpeg');
%-----------------
% 3.2
% Create a plot existing of three subplot
close
figure(2);
hold on
x = 0:0.001:4*pi;
y = sin(x);
% creating the noise signal
noise_signal = rand(1,length(x))*0.2 - 0.1;
s = y + noise_signal;
%first subplot
%pure signal is plotted
subplot(3,1,1)
plot(x,y);
grid on;
title('sine wave');
xlabel('x[0,4pi]');
ylabel('sin(x)');

%second subplot
%noise signal is plotted
subplot(3,1,2)
plot(x,noise_signal);
grid on;
title('noise signal');
xlabel('x[0,4pi]');
ylabel('random values');

%third subplot
%noisy signal -> pure + noise is plotted.
subplot(3,1,3)
plot(x,s);
grid on;
title('noisy signal');
xlabel('x[0,4pi]');
ylabel('sin(x) + noise');


hold off
print('sin_noise_plot.jpeg','-djpeg');
%--------------------------------
% 3.3
%Create two plots consisting of two subplots
% store it as -djpeg
%measuremt.csv had 2 columns: path delay and clock clock skew
close
data_read = dlmread('measurement.csv',';');
path_delay_microsec = data_read(:,1);
clock_skew_ppm = data_read(:,2);
threshold = 10 + mean(path_delay_microsec(1:950))
%first plot
figure(3)
hold on
% the path delay and the threshold which is 10 us
% above the calculated mean are plotted
%first subplot
subplot(2,1,1)
plot(path_delay_microsec)
yline(threshold);
grid on
legend ('path delay', 'threshold');
title('path delay values in microsec');
xlabel('time/s');
ylabel('path delay[microsec]');
%second subplot
subplot(2,1,2)
plot(clock_skew_ppm)
grid on
hold off
title('clock skew values in ppm');
xlabel('time/s');
ylabel('clock skew[ppm]');
print('time_trend.jpeg','-djpeg');

%second plot
close
figure(4)
hold on
%first subplot
subplot(2,1,1)
histogram(clock_skew_ppm(100:900),40);
title('clock skew values of the interval [100,900]');
xlabel('clock skew[ppm]');
ylabel('occurance');
print('time_trend.jpeg','-djpeg');
%grid on;
%second subplot
subplot(2,1,2)
histogram(clock_skew_ppm(2300:3100),40);
title('clock skew values of the interval [2300,3100]');
xlabel('clock skew[ppm]');
ylabel('occurance');
%grid on;

hold off
print('histogram.jpeg','-djpeg');
