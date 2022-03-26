%==========================================================================
% Built in Functions
var1 = 100;
sin(var1);
cos(var1);
tan(var1);
cot(var1);
log(var1);       % natural log
log10(var1);     % log to the base 10
exp(var1);       % euler's number to the power var1
abs(var1);       % absolute value
int2str(var1);   % convert integer value to string(/char array); will ignore decimal values
num2str(var1)    % convert numerical value to string(/char array); will include decimal values

x = 3;
y = 5;
zeros(x, y);     % optional parameters; geneeates x,y array of all 0s
ones(x, y);      % optional parameters; geneeates x,y array of all 1s

eye(x, y)+n      % optional parameters; generates x,y array with \ diagonal values of 1 and rest as 0
                 % +n is again optional here; value at n would replace the default 0

% random generators
rand(x, y);      % optional parameters; generates x,y array with random numbers between 0 and 1
randn(x, y);     % optional parameters; generates x,y array with normally distributed random numbers
randi(x, y)      % optional parameters; generates x,y array with pseudorandom integers of uniform discrete distribution

%==========================================================================
% predefined values

pi      % value of pi to 15 significant digit
i, j    % imaginary numbers
Inf     % infinity
NaN     % Not a number, such as 0/0
ans     % stores result of last expresion that wasn't stored in a var


%==========================================================================
% Console Commands

clc    % clears user terminal
clear  % removes all variables stored int the workspace


%==========================================================================
% 2D MATRICES

var2 =  [12 34 2 23; 43 12 7 58; 61 94 3 75];
sum_row = sum(var2);        % would store sum of all rows (individually) and return as 1D matrix
sum_col = sum(var2')';      % ' inverts rows with columns; operation used to perform column addition with row add method
sum_dia = sum(diag(var2));  % adds all diagonal terms from 0,0
flip_rows = fliplr(var2);   % flips content of the rows, so value in first cell (in a row) becomes value of last cell (of that row)


%==========================================================================
% Data Managment 

save file1.mat;            % save all declared variables in file1.mat
save('file2.mat', 'var1')  % save only selected variables 
load file1.mat;            % load data from file1.mat
loat file1.mat var1;       % load only var1 from file1
whos                       % display info about all variables in the current workspace
whos(var1)                 % display info about var1 (only)
whos('-file', 'file1.mat') % display info about variables in file1


%==========================================================================
% user input

var3 = input('Enter data: ');       % can input both numbers and arrays to this; empty and char input = empty array
var4 = input('Enter text: ', 's');  % stored data would be saved as char array


%==========================================================================
% Cell arrays

var5 = {'some text', 4321, [24 13; 85 63]};          % creating a cell array
var5(2, :) = {'more text', 4324, [43 78; 92 34]};    % apending another row to the array
var5(1, 2);        % type of content in the passed cell location
var5{1, 2};        % data at the passed cell location
var5{1, 3}(1, 2)   % data at the given index for the array at the passed cell location


%==========================================================================
% Structures
% multidimentional arrays with elements accessed by textual field designators
% eat individual element has a name

var6.name = 'example';
var6.num = 123456;
var5.result = [74, 53, 98, 87];
% here a new variable is created with 3 properties, all of different datatypes

% two methods of adding records
var6(2).name = 'someone else';  
var6(3)= struct('name','random text', 'num', 7430,'resuly', [58, 40, 88, 10]);


%==========================================================================
% Display data on console

disp(['the value of pi = ' num2str(pi)]    % method 1
fprintf('the value of pi = %f', pi)        % method 2

% Conversion characters
%> %d   display value as integer
%> %e   display value in exponential form
%> %f   display value in float format
%> %s   display value in string/char format

% Escape characters
%> \n   new line
%> \b   backspace
%> \\   ordinary \
%> %%   ordinary %

% Float point config
%> %.2f  would make the dcimal point round off to 2 digits


%==========================================================================
% 2D Plot
% General Syntax: plot(X1, Y1, line_type.............. Xn, Yn, line_type)
% General Rules:
%> if X and Y are vectors, then they must have equal length
%> if X and Y are matrices, then they must have equal size
%> if either one of them is scalar then plot function plots discrete points

% Example:
figure(1) % Figure 2
x = 0:pi/100:pi*2;     % array of values from 0 to 2pi with interval of pi/100
y1 = cos(x);
y2 = sin(x);

plot(x, y1, 'r');
hold on;               % is there by default, however is good practice to write it
plot(x, y2, 'g');      % if hold on wasn't there, then this graph would have replaced old one (instead of overlap)
hold off;              % good practice to hold off after all required graphs are plotted on one figure.
legend('Graph 1 legend', 'Graph 2 legend');
xlabel('text');
ylable('text');

grid off;             % grid lines can be toggeled on/off

% mini-graphs
% more than one graph in a figure but without them overlapping on one other
figure(2)
subplot(2, 2, 1)      % specifies there would be a 2x2 grid, and we're working on 1st one
plot(x, y1, 'r-');
title('Sine Graph');
axis([0 10 -5 10]);   % specifies custom axis interval for the graph- min_x, max_x, min_y, max_y


%==========================================================================
% Relational Operators
%  compares two operands by determining whether a comparison statement is true or false.

%>  ==    are ___ and ___ equal?
%>  ~=    are ___ and ___ not equal?
%>  >     is ___ bigger than ___ ?
%>  >=    is ___ bigger than or equal to ___?
%>  <     is ___ smaller than ___?
%>  <=    is ___ smaller than or equal to ___?


%==========================================================================
% A logical operator 
% examines true/false statements and produces a result that is true (1) or false (0)

%>  ~     NOT
%>  &     element-wise and
%>  |     element-wise or
%>  &&    short-circuit and; only with scalar logocal condition
%>  ||    short-circuit or; only with scalar logocal condition


%==========================================================================
