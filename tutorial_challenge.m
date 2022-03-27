% week 3 lecture notes example programming challenge

inf_rate = 1.02;
bank_int = 1.05;
bank_bal = 300000;
withdraw = 25000;

bal_overtime = [bank_bal];
withdraw_overtime = [0];

years = 0;
while bank_bal >= withdraw
    bank_bal = bank_bal * bank_int;
    bank_bal = bank_bal - withdraw;
    withdraw = withdraw * inf_rate;
    
    bal_overtime(end+1) = bank_bal;
    withdraw_overtime(end+1) = withdraw;

    years = years + 1;
end

figure(1)
plot(0:1:years, bal_overtime, 'g');
hold on;
plot(0:1:years, withdraw_overtime, 'r');
hold off;
axis([0 years+1 0 300000]);
grid on;

fprintf('Money will last for: %i years \n', years);