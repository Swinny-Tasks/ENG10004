t = 0:0.01:4;
ft = (t*(3 + 6i)) - 3;

figure(1)
subplot(2, 1, 1)
plot(t, abs(ft), 'b');
ylabel('Amplitude')
title('Amplitude and phase plot of complex number')

subplot(2, 1, 2)
plot(t, (angle(ft)*(180/pi)), 'b');
ylabel('Phase (degree)')
xlabel('t')