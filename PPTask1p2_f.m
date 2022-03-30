function PPTask1p2_f(N)
    for i = 1:1:N
        if (rem(i, 3) == 0) && (rem(i, 7) == 0)
            disp([int2str(i), ' is divisible by 3 AND 7']);
        elseif (rem(i, 3) == 0)
            disp([int2str(i), ' is divisible by 3']);
        elseif (rem(i, 7) == 0)
            disp([int2str(i), ' is divisible by 7']);
        else
            disp([int2str(i), ' is NOT divisible by 3 or 7']);
        end
    end
end