fibon :: Int -> Integer
fibon = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = fibon (n-2) + fibon (n-1)


fibonacci n a b = if(n==1) then b else (fibonacci (n-1) b (a+b))
fibo n = fibonacci n 1 1