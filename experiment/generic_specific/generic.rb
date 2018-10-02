def process_str(str)
  return str.downcase.chars.sort.join.strip
end


def is_anagram_of(str, testStr)
  return process_str(str) == process_str(testStr)
end

result = is_anagram_of "devil", "lived"
