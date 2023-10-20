function [minValue] = findMin(a, b, c, d, e)
    minValue = a;  % Assume 'a' is the minimum
    
    if (b < minValue)
        minValue = b;
    end
    
    if (c < minValue)
        minValue = c;
    end
    
    if (d < minValue)
        minValue = d;
    end
    
    if (e < minValue)
        minValue = e;
    end
end