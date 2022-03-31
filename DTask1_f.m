function distance = DTask1_f(v, theta)
  h = 1.8; g = 9.8; t = 10; distance = NaN;

  theta = theta*pi/180;
  x = v*cos(theta)*t;
  y = h + (v*sin(theta)*t) - (0.5*g*t*t);

  at_index = find(y < 0); % at index signifies at what index is y <= 0
  if isempty(at_index)
      fprintf('The ball does not hit the ground in 10 seconds')
      fprintf(' y = %i\n', theta);
  else
    distance = x(at_index(1));
  end

end
