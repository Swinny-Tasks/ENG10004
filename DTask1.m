close all; clc; clear all;

v = 60;
distance = [];
figure(1)

for theta = 0:1:60
  single_distance = DTask1_f(v, theta);
  distance = [distance, single_distance];
  %fprintf('%0.2f at %0.2f\n', single_distance, theta)
end
length(distance)
plot(1:61, distance);
legend('v = 4m/s')
ylabel('distance covered (m)')
xlabel('initial angle (deg)')

