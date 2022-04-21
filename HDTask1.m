% motion constants
v = 4; g = 9.81; h = 1.8;

% game activer, scoreboard and streak record
in_game = true; score = 0; streak = 0;

% game will loop as long as in_game is true;
while in_game
  f = figure(1);
  f.Position = [10, 50, 600 650];
  x_cord = randi(250, 1) / 100; % random location for board


 % draw ball
  ball = plot(0, h, '.', 'MarkerSize', 55);
  hold on;

  % plotting board
  plot(x_cord:0.1:(x_cord+0.5), zeros(1, 6), 'LineWidth', 5);
  hold on;
  % putting up scoreboard and streak record
  text(3, 3.25, "Score: "); text(3.5, 3.25, num2str(score));
  text(3, 3, "Win Streak: "); text(3.7, 3, num2str(streak));

  axis([0 4 -1 4])

  % per level; would be changed to false once this level is over
  is_playing = true;

  % unlimited chances for a single board placement
  while is_playing
    % get user action input
    fprintf('\nTo exit the game, enter '); fprintf(2, 'exit\n');
    user_input = input("To play the game, enter a shooting angle between -90 and 90 deg: ", 's');
    drop_ang = str2double(user_input);
      if isnan(drop_ang)  % user entered text input
        if isequal(user_input, 'exit')
            in_game = false;
            break;
        else  % user entered random text letters
            fprintf(2, "INVALID INPUT!\n\n");
            continue;
        end
      else % user entered numbers
        if ~(drop_ang >= -90 && drop_ang <= 90) % entered num is not in the allowed range
            fprintf(2, "Enter angle between (-90)deg and (90)deg!\n\n");
            continue;
        end
      end

    % time factor
    for t = 0:0.01:20
      % current cords for the ball
      x = v*cosd(drop_ang)*t;
      y = h + (v*sind(drop_ang)*t) - (0.5*g*(t^2));

      % checking if the ball is over the board
      if x >= x_cord && x <= (x_cord+0.5) && round(y, 2) > 0 && round(y, 2) < 0.14
        is_playing = false;
        streak = streak + 1;
        score = score + 1;
        break;
      % ball is not on the board but is under the onscreen level
      elseif y < -1.5
        % streak is reset on evrey wrong attempt
        text(3, 3, "---------------------"); 
        streak = 0;
        set(ball, 'XData', 0, 'YData', h);
        break;
      end
  
      % updating ball's x and y value; animation
      set(ball, 'XData', x, 'YData', y);
      
      pause(0.01); % display frame rate
    end

    pause(1) % pause for a sec on right attempt, question requirement #5
  end
  hold off; close all; % clearing board upon level completition
end
