A=[0 1];B=[0 1];C=[0 1];
disp('--------')
disp('A B C X')
disp('--------')
for a=1:2
  for b=1:2
    for c=1:2
      and1 = and(not(A(a)), B(b));
      and2 = and(not(C(c)), B(b));
        
      % 1 logic-OR gate
      X = or(not(and1), and2);
      fprintf('%d %d %d %d\n', A(a),B(b),C(c),X);
    end
  end
end