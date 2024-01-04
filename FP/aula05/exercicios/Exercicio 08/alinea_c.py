# Given an integer n, return a list containing 
# 1 2 2 3 3 3 4 4 4 4 ... and finally n repeated n times.
# You may assume n is 0 or greater.

def reapeatNumTimes(n):
   lista = []
   for number in range(1,n+1):
      lista += [number] * number
   return lista
      
   