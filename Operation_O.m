function [E] = Operation_O(c,d)

CE = integral(c, 0, 1);

F = min(CE, d);
f = @max;

E = integral(f, 0, 4);
end

