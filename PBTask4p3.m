% part (1)
A = [0.21; 0.52; 0.71; -0.3; 0.92; 1.2; 0.35];
disp(sum(A));

% part (2)
B = [0.24 57 -4; 0.13 65 -2.5; 0.28 55 -1; 0.21 45 -1.5; 0.32 56 -3; 0.45 58 0];
disp(mean(B));

% part (3)
C = [1 0.3 -0.2 0.2 0.22 0.55 1.75 1.3 0.1 1.3];
fprintf('max: %0.2f at index: %d', max(C), find(C == max(C)));

% part (4)
D = [8 1 3; 6 5 7; 4 9 2];
D(find(D >= 5)) = 0;  % this line would work even without find function
disp(D);