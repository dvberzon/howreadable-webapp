def process_str(str)
  str.downcase.chars.sort.join.strip
end

def anagram_of?(str, test_str)
  process_str(str) == process_str(test_str)
end

result = anagram_of? 'devil', 'lived'
