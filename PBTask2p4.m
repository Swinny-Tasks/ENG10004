radius = input('Enter the circle radius:\n');
% this statement asks user for an input and stores it in variable radius
% \n is an escape character that adds <new line> at the end of statement

Area = pi*radius^2;
% square of variable radius is calcuated and multiplied with pi
% (an inbuilt variale) and the answer is stored in a new variable called
% Area

Perimeter = 2*pi*radius;
% variable radius is multiplied with pi and 2, and the answer is stored in
% a new variable called Perimeter

fprintf('The area is %f \n', Area);
% since Area could have decimal numbers, %f for float is used
% fprintf is one method of printing data on user's console

disp(['The perimeter is ' num2str(Perimeter)]);
% since Perimetr is of numrical datatpe, it is converted to string to add
% it with 'The perimeter is'.