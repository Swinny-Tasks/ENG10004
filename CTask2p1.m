t = linspace(0,1,100);
noise = rand(1,length(t));
x = cos(2*pi*t) + 0.5*(rand(size(noise))-0.5);

smooth = CTask2p1_f(x, 5);

figure(1)
scatter(1:100, x);
hold on;
plot(1:100, smooth);
hold off;
title('Smoothing filter')
xlabel('Index')
ylabel('Data Value')
legend('Original Values', 'Smoothed');
