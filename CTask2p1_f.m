function smoothed = CTask2p1_f(raw_data, width)
  % question requirement 1
  smoothed = zeros(1, length(raw_data));
  
  % question requirement 2
  if rem(width, 2) == 0
    width = width + 1;
    fprintf(2, 'Width should be an odd int\n Using [%i] as width\n', width);
  end

  midpoint = width / 2 - 0.5;
  smoothed(end) = raw_data(end);

  for i = 1:midpoint
    smoothed(i) = mean(raw_data(1:(2*i -1)));
    smoothed(end-(i-1)) = mean(raw_data((end-(2*i -2):end)));
  end

  for j = (midpoint+1):(length(raw_data)-midpoint)
    smoothed(j) = mean(raw_data(j-midpoint:j+midpoint));
  end
end
