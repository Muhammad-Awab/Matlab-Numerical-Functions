function secant_Method(fun, max_iter, tol)
    fun = input('Please enter your function: ','s');
    x(1) = input('Enter your first initial guess: ');
    x(2) = input('Enter your second initial guess: ');
    max_iter = input('Enter Maximum number of iterations: ');
    tol = input('Enter tolerance: ');
    f = inline(fun);

    disp('i   x(i+1)     err(i)')
    for i = 2:max_iter
        x(i+1) = x(i) - ((x(i) - x(i-1)) * f(x(i))) / (f(x(i)) - f(x(i-1)));
        err(i) = abs(x(i+1) - x(i));
        fprintf('%i    %f    %f\n', i, x(i + 1), err(i));
        if(err(i) < tol)
            break
        end
    end
end
