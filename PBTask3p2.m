hrs_worked = input("Please enter the number of hours worked: ");
money_phr = input("$Please enter the hourly wage in $: ");

earned = hrs_worked * money_phr;
bonus = 0;

if hrs_worked > 40
    bonus = money_phr * 0.6 * (hrs_worked - 40);
end

fprintf('The worker,s pay is $%.2f \n', (earned+bonus));
