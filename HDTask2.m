LED_color = ['c', 'b']; % color codes for display bars
figure(1) % drawing figure once; changing its content in every loop

while true
  fprintf(2, '\nTo exit the program, enter x\n');
  user_input = input('Or enter an integer (0-9): ', 's');

  if length(user_input) > 1
    % comparing ascii to see if first digit is a num
    if double(user_input(1)) > 47 && double(user_input(1)) < 58
        % checking if the number contains decimal points
        if rem(str2double(user_input), 1) ~= 0
            disp("Enter an integer (0-9) rather than any decimal number!")
        
        % when number is out of expected range
        else
            disp("Enter an integer between 0 and 9")
        end
    else
      % all other errors for big input
      fprintf(2, 'INVALID INPUT\n');
    end
    continue; % skip the remaining code when input is not right

  % checking if user wants to quit; comparing input ascii with x and X
  elseif double(user_input) == 88 || double(user_input) == 120
    clc; clear; close all;
    break;
  
  % checking if input is in range
  elseif double(user_input) > 47 && double(user_input) < 58
    num_bin = dec2bin(str2double(user_input));
  
  % all other errors
  else
    fprintf(2, 'INVALID INPUT\n');
    continue;

  end

  % making all chars use 4bits- BCD convention
  while length(num_bin) ~= 4
      num_bin = ['0', num_bin];
  end

  % declaring variable used in simulink
  W = str2double(num_bin(1)); X = str2double(num_bin(2));
  Y = str2double(num_bin(3)); Z = str2double(num_bin(4));

  result = sim("BCD_to7.slx");  % run simulink
  
  % get details from simulink
  a = result.get('a'); b = result.get('b'); c = result.get('c'); 
  d = result.get('d'); e = result.get('e'); f = result.get('f'); 
  g = result.get('g'); 

  % Create figure
  plot(6:10, 22.*ones(1, 5), LED_color(a.Data + 1), 'LineWidth', 3);
  hold on;
  plot(10.*ones(1, 5), 17:21, LED_color(b.Data + 1), 'LineWidth', 3);
  hold on;
  plot(10.*ones(1, 5), 11:15, LED_color(c.Data + 1), 'LineWidth', 3);
  hold on;
  plot(6:10, 10.*ones(1, 5), LED_color(d.Data + 1), 'LineWidth', 3);
  hold on;
  plot(6.*ones(1, 5), 11:15, LED_color(e.Data + 1), 'LineWidth', 3);
  hold on;
  plot(6.*ones(1, 5), 17:21, LED_color(f.Data + 1), 'LineWidth', 3);
  hold on;
  plot(6:10, 16.*ones(1, 5), LED_color(g.Data + 1), 'LineWidth', 3);
  hold off;
  axis([0 30 0 30]);
  set(gca,'xtick',[],'ytick',[])

  % Display binary details (part 4.2)
  text(15, 19, 'W = '); text(17, 19, num_bin(1)); 
  text(15, 17, 'X = '); text(17, 17, num_bin(2)); 
  text(15, 15, 'Y = '); text(17, 15, num_bin(3)); 
  text(15, 13, 'Z = '); text(17, 13, num_bin(4)); 
end
