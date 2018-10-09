def sort_alphabetically(str)
  str.downcase.chars.sort.join.strip
end

def anagram_of?(str, test_str)
  sort_alphabetically(str) == sort_alphabetically(test_str)
end

result = anagram_of? 'devil', 'lived'
