def letterForNumber(num):
  if(num > 0 and num < 27):
    letters = "abcdefghijklmnopqrstuvwxyz"
    lettersArr = list(letters)   # ['a', 'b', ..]
    letter = lettersArr[num - 1]
  else:
    letter = '-'
  return letter

result = letterForNumber(3)
