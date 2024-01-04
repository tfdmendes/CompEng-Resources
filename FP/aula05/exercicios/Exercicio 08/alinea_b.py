# Given a string s, return the string with adjacent duplicates removed. 
# For example, Mississippi yields Misisipi. You may assume there is at least 
# one character in the given string. 

def removeAdjacentDuplicates(str):
   result = str[0]
   for i in range(1,len(str)):
      if str[i] != str[i-1]:
         result += str[i]
   return result