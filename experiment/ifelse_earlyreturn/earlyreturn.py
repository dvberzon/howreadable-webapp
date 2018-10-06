def letter_for_number(num):

  if(num < 1 or num > 26):
    return '-'

  letters = "abcdefghijklmnopqrstuvwxyz"
  letters_arr = list(letters)  # ['a', 'b', ..]
  return letters_arr[num - 1]

result = letter_for_number(3)
