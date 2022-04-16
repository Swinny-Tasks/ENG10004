LED_color = ['c', 'b']; % color codes for display bars
figure(1) % drawing figure once; changing its content in every loop

while true
  fprintf(2, '\nTo exit the program, enter x\n');
  
  user_input = input('Or enter an integer (0-9): ', 's');
  input_int = str2double(user_input);
      if isnan(input_int)  % user entered text input
        if (isequal(user_input, 'x') || isequal(user_input, 'X'))
          clc; clear; close all;
          break;
        else  % user entered random text letters
          fprintf(2, "INVALID INPUT!\n\n");
          continue;
        end
      else % user entered numbers
        if ~(input_int >= 0 && input_int <= 9) % entered num is not in the allowed range
          fprintf(2, "Enter integer between 0 and 9!\n\n");
          continue;
        elseif (rem(input_int, 1) ~= 0)
          disp("Enter an integer (0-9) rather than any decimal number!")
          continue;
        else
          num_bin = dec2bin(input_int);
        end
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
  set(gca,'xtick',[],'ytick',[])  % hide axis numbers 

  % Display binary details (part 4.2)
  text(15, 19, 'W = '); text(17, 19, num_bin(1)); 
  text(15, 17, 'X = '); text(17, 17, num_bin(2)); 
  text(15, 15, 'Y = '); text(17, 15, num_bin(3)); 
  text(15, 13, 'Z = '); text(17, 13, num_bin(4)); 
end
