def sort_alphabetically(str)
  return str.downcase.chars.sort.join.strip
end


def is_anagram_of(str, testStr)
  return sort_alphabetically(str) == sort_alphabetically(testStr)
end

result = is_anagram_of "devil", "lived"
