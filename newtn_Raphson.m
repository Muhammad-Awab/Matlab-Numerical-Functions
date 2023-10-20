function newtn_Raphson(fun, max_iter, tol, x)
fun = input('Please enter your function: ','s');
x(1) = input('Ener your initial guess: ');
max_iter = input('Enter Maximum number of ierations: ');
tol = input('Enter tolerance: ');
f = inline(fun);
der = diff(sym(fun))
d = inline(der);
disp('i   x(i+1)     err(i)')
for i = 1:max_iter
    x(i + 1) = x(i)-((f(x(i))/d(x(i))));
    err(i) = abs(x(i+1)-x(i));
    fprintf('%i    %f    %f\n',i,x(i + 1),err(i))
    if(err(i) < tol)
        break
    end
end