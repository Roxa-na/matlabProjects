%----------------------------
% Exercise Chapter 5
% Name : Roxana Alebuye Samami
% Student No.: 2110769023
%----------------------------
clc
clear 
close
%5.1

A = [7 21 30 40];
B = [11 4 14 6];
C = [0.5 0.3 0.1 2.7];
%F_loop and F_vec
for i=1:length(A)
    F_loop = A(i) + B(i);
end
F_vec = A + B;
%G_loop and G_vec
for i=1:length(A)
    G_loop = A(i) + B(i) * C(i);
end
G_vec = A + B .* C;

%H_loop and H_vec
for i=1:length(A)
    H_loop = A(i)/C(i) + B(i) * B(i);
end
H_vec = A ./ C + B .* B;


%5.2

rand_vec = rand(1,200)*100;
i = 1;
while(i <= length(rand_vec))
   if mod (i,2) == 0
       rand_vec(i) = 0;
   else
        rand_vec(i) = rand_vec(i) * 2;
   end
   i = i + 1;
end

%5.3

rand_matrix = rand(10,10)*10;
for i=1:size(rand_matrix,1)
    for j=1:size(rand_matrix,2)
        rand_matrix(i,j) = rand_matrix(i,j) * i; 
    end

end






