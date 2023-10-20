%Finding roots of quadratic equation
function [x1,x2] = quadroot(a,b,c)
d = sqrt(b^2-4*a*c);
x1 = (-b + d) / (2*a);
x2 = (-b - d) / (2*a);
x1
x2
end

