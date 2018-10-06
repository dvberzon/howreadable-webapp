def letter_for_number(num):
  if(num > 0 and num < 27):
    letters = "abcdefghijklmnopqrstuvwxyz"
    letters_arr = list(letters)   # ['a', 'b', ..]
    letter = letters_arr[num - 1]
  else:
    letter = '-'
  return letter

result = letter_for_number(3)
