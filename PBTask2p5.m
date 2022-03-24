clear all; clc; close all;

t = 0:0.1:(2*pi);
sin_graph = sin(t);
cos_graph = cos(t);

plot(t, sin_graph, 'b-', t, cos_graph, 'r--');
legend('Sin', 'Cos');
xlabel('Time (s)');
ylabel('Function value');
