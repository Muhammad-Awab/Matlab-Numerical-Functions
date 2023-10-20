fun = input('Enter the function: ','s');
f = inline(fun);
der = diff(sym(fun))