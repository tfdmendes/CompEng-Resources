
# Given a list of integers, return the 
# position of the first occurrence of the largest element.
# You may assume the given list has at least one element.
# Do not use the index, find, or max methods.

def positionOfFirstLargest(lista):
   number = 0
   contagem = -1
   posicao = 0
   for x in lista:
      contagem += 1
      if x > number:
         number = x
         posicao = contagem
   return posicao