function[x,k]=jacob_i(a,b,tol,p,maxstep)
n=length(b);
x=zeros(n,1)

for k=1:maxstep
   p=x;
   for j=1:n
       x(j)=(b(j)-a(j,1:j-1)*p(1:j-1)-a(j,j+1:n)*p(j+1:n))/a(j,j);
   end
   err=abs(p-x)
   if err<tol
       break;
   else
       continue
   end
end
end
%jacob_i([4,1,-1;1,-5,-1;2,-1,-6], [13,-8,-2], 10^-3, [0,0,0], 3)
