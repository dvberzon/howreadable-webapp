def letterForNumber(num):

  if(num < 1 or num > 26):
    return '-'

  letters = "abcdefghijklmnopqrstuvwxyz"
  lettersArr = list(letters)  # ['a', 'b', ..]
  return lettersArr[num - 1]

result = letterForNumber(3)
