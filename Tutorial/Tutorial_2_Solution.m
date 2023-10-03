%% Exercise 1

% 1) Create a x vector starting from 1 to 5, with an increment of 0.5. y=3x+2. 
% Use a for loop to calculate y. 
x = [1: 0.5: 5];
y = zeros(1,length(x));
for i = 1:length(x)
    y(i) = 3 * x(i) + 2;
end
disp(y)

% 2) What would be the last value of y?
y(length(y))

% 3) Create a x vector starting from 1 to 5, with an increment of 0.5. 
%Create a z vector starting from 10 to 18, with an increment of 1. 
%y=3x+2. You would like to check if each value of y is equal to the 
% same value of z. For instance z(1) is equal to y(1)? z(2) is equal to y(2)? 
% If it is equal, display "y is equal to z". If it is not equal display "Not equal"
% Write a Matlab program with a for loop and if decision.
z = [10 : 1: 18]
for i = 1:length(z)
    if y(i) == z(i)
        disp("y is equal to z")
    else
        disp("Not equal")
    end
end

% 4) Same question with z vector starting from 10 to 15, with an increment of 5. What do you expect from Matlab? Why?Same question with z vector starting from 10 to 15, with an increment of 5.
%What do you expect from Matlab? Why?
z = [10: 5 : 15];
for i = 1:length(z)
    if y(i) == z(i)
        disp("y is equal to z")
    else
        disp("Not equal")
    end
end

% 5) With the same x vector and y = 3x+2, create a z vector starting 
%from 10 to 20, with an increment of 1. You would like to check 
% for a single value of y, if you can find this value among the z vector. 
%If it is equal, display both indexes (index of y and index of z). 
% Write a Matlab program with two for loops.

z = [10:20];
for i = 1:length(x)
    for j = 1:length(z)
        if y(i) == z(j)
            disp(i)
            disp(j)
        end
    end
end
%% Exercise 2

% 1) Write MATLAB program in 3 different ways with an input 
%question, such as How old are you? and check if the 
%answer is greater than 18, display Greater, lower than 
%18 display Lower or equal to 18 display Same. The 
%answer of the input question would be between 17 and 20 
%years old. 

age = input("How old are you?")
threshold = 18;
if age > threshold
    disp("Greater")
elseif age == threshold
    disp("Same age")
else 
    disp("Less")
end

% Second way
age = input("How old are you?")
threshold = 18;
if age > threshold
    disp("Greater")
end
if age == threshold
    disp("Same age")
end
if age < threshold
    disp("Less")
end

% Third way
age = input("How old are you?")
threshold = 18;
switch age 
    case {19:100}
    disp("Greater")
    case {18}
    disp("Same age")
    case {0:17}
    disp("Less")
end

% 2) ax^2+bx+c=0. a=[3 3 2];b=[5 -6 3];c=[2 3 1];
%calculate the solution(s) if the discriminant delta is 
% greater than 0 or equal to 0. Write a Matlab program 
% to get the solution(s) while changing the a, b, c 
% parameters of the equation. 

a = [3 3 2];
b = [5 -6 3];
c = [2 3 1];
 
for i=1:3
    delta(i) = b(i)^2 - 4*a(i)*c(i);
    if delta(i) > 0
        x1 = (-b(i) - sqrt(delta(i)))/(2 * a(i))
        x2 = (-b(i) + sqrt(delta(i)))/(2 * a(i))
    elseif delta(i) == 0
        x1 = -b(i)/(2 * a(i))
    else
        disp("Cannot compute")
    end
end

%% Exercise 3

% 1) For loop to compute sum of fractions
% For loops
y = 1/8;
sign = -1;
for i = 2:19 
    y = y + (sign^(i+1) * (i/((i+1)^(i+2))));
end
disp(y)


%% Exercise 4

%Create the algorithm to calculate the salary at the end of the month and 
% if the salary is lower than 8000 AED, mention that no
% taxes would be paid, if salary is between 8000 and 
% 12000 AED, mention that taxes of 1000 AED would be paid, and finally if salary is greater than 12000, mention that taxes of 2000 AED would be paid. In this algorithm, calculate the number of working hours per week as well, if it is more than 35h, then you will get a bonus of 400 AED per extra hour.
%Translate the algorithm to 2 Matlab programs (with and without using for loop)
%EX 1 WITH FOR LOOP
nb_hours=[8 7 7 4 3 11 5 6 9 8 4 7 10 8 6 7 9 8 7 7];
rate=[80 70 75 72 90 60 100 82 86 74 78 81 100 63 92 65 61 100 72 71];

for i=1:length(nb_hours)
    salary_day(i)=nb_hours(i)*rate(i);
end
total_salary=sum(salary_day);
if total_salary<8000
    disp('No need to pay taxes')
    tax=0;
elseif total_salary>=8000 && total_salary<=12000
    disp('Pay 1000AED for taxes')
    tax=1000;
else disp('Pay 2000AED for taxes')
    tax=2000;
end

total_nb_hours=sum(nb_hours);
nb_hours_per_week=total_nb_hours/4;%% there are 4 weeks in the month
if nb_hours_per_week>35
    disp('Extra hours will be paid')
    extra=(nb_hours_per_week-35)*400;
    disp('You will receive :')
    disp(num2str(extra));
end

final_salary=total_salary-tax+extra

%EX 1 WITHOUT FOR LOOP
nb_hours=[8 7 7 4 3 11 5 6 9 8 4 7 10 8 6 7 9 8 7 7];
rate=[80 70 75 72 90 60 100 82 86 74 78 81 100 63 92 65 61 100 72 71];
salary_day=nb_hours.*rate;%% JUST THIS LINE CHANGES
total_salary=sum(salary_day);
if total_salary<8000
    disp('No need to pay taxes')
    tax=0;
elseif total_salary>=8000 && total_salary<=12000
    disp('Pay 1000AED for taxes')
    tax=1000;
else disp('Pay 2000AED for taxes')
    tax=2000;
end

total_nb_hours=sum(nb_hours);
nb_hours_per_week=total_nb_hours/4;%% there are 4 weeks in the month
if nb_hours_per_week>35
    disp('Extra hours will be paid')
    extra=(nb_hours_per_week-35)*400;
    disp('You will receive :')
    disp(num2str(extra));
end

final_salary=total_salary-tax+extra

%% Exercise 5

% Create the algorithm to find NaN (number of rows and number of column)
% Translate the algorithm to a Matlab program. 
%%EX 2
MA=[5 3 2 1 9;3 8 7 6 4;9 0 5 NaN 3;4 8 2 7 6]
si=size(MA);
nb_row=si(1);
nb_col=si(2);
for i=1:nb_row
    for j=1:nb_col
        if isnan(MA(i,j))==1
            disp('The row is: ')
            disp(i)
            disp('The column is: ')
            disp(j)
        end
    end
end

%% Exercise 6
% 1) Write a Matlab program to estimate for each case the area, and if it is greater 
% than the total area needed for the cathedral, display "greater”, or if it is equal display “perfect” else display “lower”.

L = [2 3 1.5];
W = [0.5 0.5 0.7];
T = [4 2 3];
N = [1050 1000 1000];
area = L .* W .* N;
for i = 1:3
    if area(i) > 1050
        disp("Greater")
    elseif area(i) == 1050
        disp("Perfect")
    else
        disp("Lower")
    end
end

% 2) estimate for each case the total mass of the roof and if the total mass is greater than what the framework (wood structure) could support (37 tons), display “Could not support”.
total_mass = area .* T .* 10^(-3) .* 11.35;
for i = 1:length(total_mass)
    if total_mass(i) > 37
        disp("Cound not support")
    else
        disp("Cound support")
    end
end

% 3) Join both programs from question 1) and question 2) in a single one to know among the 3 cases which case would correspond to the recommendations? (recommendations: area should be equal to 1050m² and total mass lower than 37 tons)Join both programs from question 1) and question 2) in a single one to know among the 3 cases which case would correspond to the recommendations? (recommendations: area should be equal to 1050m² and total mass lower than 37 tons)
for i = 1:length(total_mass)
    if area(i) == 1050 && total_mass(i) > 37
        disp("We would recommend Case:")
        disp(num2str(i))
    end
end

%%%%%%%%%%%%%%%%%%% End %%%%%%%%%%%%%%%%%%%%%%%%%


