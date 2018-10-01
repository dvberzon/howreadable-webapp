def letter_for_number num
  if(num > 0 && num < 27)
    letters = "abcdefghijklmnopqrstuvwxyz"
    letters_arr = letters.split('') # ['a', 'b', ..]
    letter = letters_arr[num - 1]
  else
    letter = '-';
  end
  letter
end

result = letter_for_number 3