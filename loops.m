%display numbers from 10 to 19
i = 10;
while(i < 20)
     fprintf('Value of i is: %d \n ',i)
     i = i + 1;
end

fprintf('Values in for loop \n')

%for loop for display values
for index = 10:20
    fprintf('Value of i is: %d \n ',index)
end

%for loop with reverse increment
for a = 1:-.1:0
    disp(a)
end