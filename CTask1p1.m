angle = linspace(0, 2*pi);
lc = {2:4 2:4 2 4}; % line cords
cir_color = ['y' 'r'; 'c', 'b'];
counter = 0;

for i = 2:2:4
    a = 2:4; b = 4; 
    for j = 2:2:4
        x = cos(angle) + i; y = sin(angle) + j;
        plot(x, y, cir_color(i/2,j/2))
        hold on;
        
        plot(lc{1+counter}.*ones(1, 3), lc{end-counter}.*ones(1, 3), 'c--')
        hold on;
        counter = counter + 1;
    end
end

axis([0 6 0 6])
