def factorial(n):
   assert isinstance(n, int), "n should be an int"
   assert n >= 0            , "n should not be negative"
   
   factorial = 1
   for n in range (1,n+1):
      factorial = n * factorial
   return factorial