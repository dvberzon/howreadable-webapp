def letter_for_number num
  return '-' if(num < 1 || num > 26)
  letters = "abcdefghijklmnopqrstuvwxyz";
  letters_arr = letters.split('') # ['a', 'b', ..]
  return letters_arr[num - 1]
end

result = letter_for_number 3