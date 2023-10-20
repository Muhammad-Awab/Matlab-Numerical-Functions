%nested loop with break statment
a = 10;
while(a < 20)
    fprintf('Value of i is: %d \n ',a)
    if (a == 15)
        break;
    end
    a = a + 1;
end

%nested loop for continue statement
i = 10;
while(i < 20)
    if i == 15;
        i = i + 1;
        continue;
    end
    fprintf('Value of i is: %d \n ',i)
    i = i + 1;
end
    