fun = input('Enter the function: ','s');
x = input('Ente varibale value: ');
f = inline(fun);
v = feval(f,x)