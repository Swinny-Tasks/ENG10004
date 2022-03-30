% part 2: declaring variables
h = 1.8; g = 9.8; v = 4; a = 45;

% part 3: time between 0 and 1 with interval of 1000
t = 0:1/1000:1;

% part 4: formulas
a = a*pi/180;
x = v*cos(a)*t;
y = h + (v*sin(a)*t) - (0.5*g*(t.^2));

% part 5: approx of ball hit ground
at_index = find(y < 0);
fprintf('The ball hits the ground at a distance of %f meters.\n', x(at_index(1)));

% part 6: using figure
figure(1)
plot(x, y)
xlabel('distance covered (m)')
ylabel('height (m)')
hold on;
plot(0:max(x)/100:max(x), zeros(101), 'k--');
hold off;