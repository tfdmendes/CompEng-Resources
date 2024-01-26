def countDigits(str):
   contagem = 0
   for x in str:
      if x.isdigit() == True:
         contagem += 1
   return contagem
