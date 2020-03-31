function [E] = Operation_O(c,d)


CE = reshape(c, [100, 100]);

F = min(CE, d);

E = max(F,[],1);
end

