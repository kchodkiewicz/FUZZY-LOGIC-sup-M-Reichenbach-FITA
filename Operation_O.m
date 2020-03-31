function [E] = Operation_O(c,d)

x = ones(100, 1);

CE = x*c

F = min(CE, d);

E = max(F,[],1);
end

