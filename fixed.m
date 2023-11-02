function fixed_point(fu,max_iter,tol,x)
fun = input('Please enter your function: ','s');
x(1) = input('Ener your initial guess: ');
max_iter = input('Enter Maximum number of ierations: ');
tol = input('Enter tolerance: ');
g = inline(fun);
disp('i   x(i+1)     err(i)')
for i = 1:max_iter
    x(i + 1) = g(x(i));
    err(i) = abs(x(i+1)-x(i));
    fprintf('%i    %f    %f\n',i,x(i + 1),err(i))
    if(err(i) < tol)
        break
    end
end
root = x(i+1)
