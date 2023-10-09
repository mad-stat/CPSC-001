% Add 1 to each element of the vector [2 5 -1]. 
v = [2 5 -1];
v + 1
% Ans: 3     6     0

% Multiply each element of the vector [1 4 8] by 3.
v = [1 4 8];
v * 3
% Ans: 3    12    24

% Find the array product of the two vectors [1 2 3] and [0 1  1].
[1 2 3] * [0 -1  1]'
% Ans: 1

% Square each element of the vector [2 3 1]
[2 3 1] .^ 2
% Ans: 4     9     1

% An amount of money A invested over a period of n years with an annual interest rate of r grows to an amount A(1 + r)n. 
% Suppose we want to calculate final balances for investments of $750, $1000, $3000, $5000 and $11999, over a period of 
% 10 years, with an interest rate of 9%. 
format short g
amount = [750 1000 3000 5000 11999];
rate = 0.09;
year = 10;
interest = (1 + rate)^year;
final_amount = amount .* interest;
disp(final_amount)
% Ans: 1775.5       2367.4       7102.1        11837        28406

% Modify the program comp to find the balances for a single 
% amount A ($1000) over periods of 1, 5, 10, 15 and 20 years. 
amount = 1000;
rate = 0.09;
year = [1 5 10 15 20];
interest = (1 + rate).^year;
final_amount = amount .* interest;
disp(final_amount)
% Ans: 1090       1538.6       2367.4       3642.5       5604.4

% MATLAB as a calculator:
sqrt(2)
% Ans: 1.4142
(3 + 4)/(5 + 6)
% Ans: 0.63636
(5 + 3)/(5 * 3)
% Ans: 0.53333
2^3^2
% Ans: 62
(2 * pi)^2
% Ans: 39.478
2 * pi^2
% Ans: 19.739
1 / sqrt(2 * pi)
% Ans: 0.39894
1 / (2 * sqrt(pi))
% Ans: 0.28209
(2.3 * 4.5)^(1/3)
% Ans: 2.1793
(1 - (2/(3+2)))/(1 + (2/(3-2)))
% Ans: 0.2
1000 * (1 + 0.15/12)^60
% Ans: 2107.2
(0.0000123 + 5.678 + 10^(-3))*0.4567 * 10^(-4)
% Ans: 0.00025936
(2*(3+4)/5*(6+1))^2
% Ans: 384.16

% Set up a vector 𝑛 with elements 1, 2, 3, 4, 5. 
% Use MATLAB array operations on the vector 𝑛 to set up 
% the following four vectors, each with five elements.
n  = [1 2 3 4 5];
%	2 , 4 , 6 , 8 , 10
n + n
%	1⁄2 ,1 , 3⁄2 ,2 , 5⁄2
n ./ 2
%	1 , 1⁄2 , 1⁄3 , 1⁄4 , 1⁄5
1 ./ n
%	1 , 1⁄2^2 , 1⁄3^2 , 1⁄4^2 , 1⁄5^2
1 ./ (n .^ 2)

% Suppose 𝑥 = [2 -1 5 0] and 𝑦 = [3   2   -1   4] are two vectors. 
% Evaluate by hand the vector 𝑧 in the following statements. 
% THEN check your answers with MATLAB.
x = [2   -1   5   0];
y = [3   2   -1   4];
% 𝑧 = 𝑥 -𝑦
z = x - y
% Ans: -1    -3     6    -4

% 𝑧 = 𝑦 + 𝑥-3
z = y + x - 3
% Ans: 2    -2     1     1

% z = 3𝑥 + 𝑥^𝑦
z = 3 * x + x.^y
% Ans: 14           -2         15.2            0

%	𝑧 = 𝑦⁄x
z = y ./ x
% Ans:  1.5           -2         -0.2          Inf

% 𝑧 = x/y
z = y .\ x
% Ans:  0.66667         -0.5           -5            0

% 𝑧 = 𝑥^y
z = x .^y
% Ans: 8            1          0.2            0

% 𝑧 = 2^𝑦 + 𝑥
z = 2.^y + x
% Ans: 10            3          5.5           16

%	𝑧 = 2𝑦⁄3 ∗ 𝑥
z = 2 .*(y/3) .*x
% Ans: 4      -1.3333      -3.3333            0

%	𝑧 = 2y𝑥
z = 2 .* y .*x
% Ans: 12    -4   -10     0

% Verify that the exponent and natural logarithm are inverses of one another.
exp(log(10))
% Ans: 10

% Matlab as a calculator
sqrt(((4.172 + 9.131844)^3 - 18)/(-3.5 + (11.2 - 4.6) * (7 - 2.91683)^(-0.4)))
% Ans: 94.869

% Evaluate the sine of 30°, 45°, 60°, and 120°. 
% Subsequently, evaluate cosine, tangent and cotangent of the same angles.

angle = [30 45 60 120]
angle_converted = angle_in_degree .* (pi/180)
sin(angle_converted)
tan(angle_converted)
cos(angle_converted)
cot(angle_converted)

% Find and display all integers between 1 and 10000 which divide by 37.
disp(37: 37: 10000)

% Create a matrix A of size 4×3, whose elements 𝑎_𝑖𝑗  are calculated from the row and column indices as follows:
% 𝑎_𝑖𝑗=〖(𝑗−4)〗^2 〖(𝑖+1)〗^(−3)+𝑖𝑗
A = zeros([4, 3])
for i = 1:4
    for j = 1:3
        A(i, j) = ((j - 4)^2 * (i + 1)^(-3)) + (i * j);
    end
end
disp(A)
% Ans    2.125          2.5        3.125
%       2.3333       4.1481        6.037
%       3.1406       6.0625       9.0156
%        4.072        8.032       12.008

% Using a matrix equation, find the intersection point of the lines defined by the following equations:
% 7𝑥−12𝑦+4=0
% 12𝑥−45𝑦+26=0
A = [7 -12; 12 -45];
b = [-4; -26];
x = inv(A) * b
% Ans:       0.77193
%            0.78363

% Create a matrix of 100 rows and 100 columns. 
% The odd columns should contain values 2 , and 
% the even columns, values 0.

A=zeros(100); 
A(:,1:2:100)=2;
disp(A)

%%%%%%%%%%%%%%%%%% END OF TD-1 %%%%%%%%%%%%%%%
