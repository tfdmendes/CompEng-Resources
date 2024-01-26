# Given a string, return a string composed first of all characters at even 
# positions and then of all characters at odd positions.

def evenThenOdd(str):
   result = ""
   char_pares = str[::2]
   char_impares = str[1::2]
   
   result = char_pares + char_impares
   return result