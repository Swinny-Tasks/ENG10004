disp('----------------')
fprintf(2, 'A  B  C  D    L\n')
disp('----------------')

for A = 0:1
  for B = 0:1
    for C = 0:1
      for D = 0:1
        fprintf('%i  %i  %i  %i', A, B, C, D)
        L = or(xor(A, B), and(not(C), D));
        fprintf('    %i\n', L);
      end
    end
  end
end
