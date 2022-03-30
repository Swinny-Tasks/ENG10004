function COUNTER = PBTask4p2a_f(value)
  global COUNTER;
  COUNTER = COUNTER + value;
  if COUNTER > 1000
      COUNTER = 0;
  end

end