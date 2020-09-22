ERROR = 100;

f = @(x) power(x, 3) - 0.165*power(x, 2) + 3.993*power(10, -4)

a =0;
b = 0.11;
C = 0;

flag = 0;
ERROR = -1;

%fprintf('IT | Xl | XO | Xm | Err\n');
while(ERROR>5 || flag<=1) 
    a;
    b;
    M = (a+b)/2;
    A = f(a);
    B = f(M);
    C = A*B; 
    if(flag~=0)
        ERROR = abs(((M-m0)/M)*100);
    end
    m0 = M;
    
    
    
    if(flag==0)
        fprintf('IT|\t   Xl|\t      XO|\t Xm|\t Err\n');
    end
    fprintf('%i | %f | %f | %f | %f\n', flag, a, b, M, ERROR)
    
    if(C<0) 
        b = M;;
    end
    if(C>0) 
        a = M;
    end
    flag = flag + 1;
end