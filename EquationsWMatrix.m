A = [6, 7.5, 13.75;7.5, 13.75, 28.125; 13.75, 28.125, 61.1875]
B = [13.75; 28.125; 61.1875]

X = inv(A)*B

disp("y="+X(1, 1)+" + "+X(2, 1)+"x + "+X(3, 1)+"x^2")

%X(4) = 10 % set values of matrix
%X(5, 1) = 11 % another way to set vañlues in a matrix