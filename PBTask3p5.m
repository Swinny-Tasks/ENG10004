sum = 0;

while sum <= 9
    new_random = randn;
    if new_random > 3
        break;
    end
    sum = sum + new_random;
end

fprintf('The sum of the random numbers is: %f\n', sum);
fprintf('The last random number generated is: %f\n', new_random);