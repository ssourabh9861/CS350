fibonacci n a b = if(n==1) then b else (fibonacci (n-1) b (a+b))
fibo n = fibonacci n 1 1