marks = input("Please enter your mark (0 - 100): ");

if (marks > 100 || marks < 0)
    disp('INVALID');
elseif marks >= 80
    disp('Your grade is High Distinction.');
elseif marks >= 70
    disp('Your grade is Distinction.');
elseif marks >= 60
    disp('Your grade is Credit.');
elseif marks >= 50
    disp('Your grade is Pass.');
else
    disp('Your grade is Fail.');
end
