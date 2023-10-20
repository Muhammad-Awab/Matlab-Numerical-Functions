function [c] = bisect(f,a,b,tol,max_iter)
fun = input('Please enter function: ','s');
f = inline(fun);
a = input('Enter the initial value: ');
b = input('Enter the second value: ');
max_iter = input('Enter the iterations: ');
tol = input('Enter the tolernce value: ');
if (f(a)*f(b) > 0)
    fprintf('Worng Guess!Enter new guess\n');
    a = input("Enter the initial value");
    b = input("Enter the second value");
end
disp('k    a      c       b        f(a)       f(c)      f(b)       abs(b-a)')
for k = 1:max_iter
c = ((a + b) / 2);
fprintf('%i    %f     %f        %f        %f      %f       %f    %f\n',k,a,c,b,f(a),f(c),f(b),abs(b-a))   
if ((f(b)*f(c)) < 0)
    a = c;
else
if ((f(a)*f(c)) < 0)
    b = c;
end
err = abs(b - a);
if (err < tol)
    break;
end
fprintf('%d    %f     %f\n',k,c,err)
end
end

