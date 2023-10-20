%maximum of five numbers
function [max] = mymax(n1,n2,n3,n4,n5)
%n1 = 11;n2 = 20; n3 = 40; n4 = 100; n5 = 90; 
max = n1;
if(n2>max)
    max = n2;
end
if(n3>max)
    max = n3;
end
if(n4>max)
    max = n4;
end
if(n5>max)
    max = n5;
end
end

