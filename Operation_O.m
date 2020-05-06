function [E] = Operation_O(c,d)

x = ones(100, 1);

CE = x*c; % cylindryczne rozszerzenie

F = min(CE, d); % przekroj metoda sup-M

E = max(F,[],1); % projekcja
end

