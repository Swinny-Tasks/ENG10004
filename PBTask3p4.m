n = input("Please enter an integer number for n: ");
sum = 0;

for k=1:1:n
    nume = ((-2)^k)*(k^2);
    deno = 1.2^((2*k)+1);
    sum = sum + (nume/deno);
end

fprintf('The result for n = %i is %f \n', n, sum);
