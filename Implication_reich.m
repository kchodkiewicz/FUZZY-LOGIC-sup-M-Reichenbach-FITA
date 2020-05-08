function [ret] = Implication_reich(x,y)
for i=1:length(x),			%mój matlab nie wykona operacji dla wszystkich elementów
    for j=1:length(y),
        ret(i,j) = 1-x(i)+x(i).*y(j);
    end
end

end

