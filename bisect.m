function c = bisect( tol,max_iter )
fun=input('Enter Function: ','s');
f= inline(fun);
a=input('Enter Start Value of interval: ');
b=input('Enter End Value of interval: ');
tol=input('Enter Tolerance: ');
max_iter=input('Enter Max Iterations: ');
disp('k        c          error')
for k=1:max_iter    
c=(a+b)/2;
    if((f(a)*f(c))<0)
            b=c;
    elseif((f(b)*f(c))<0)
                a=c;
    end
    error=abs(b-a);
    if(error<tol)
        break;
    end
fprintf('%d    %f       %f\n',k,c,error)
end
