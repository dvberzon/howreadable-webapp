def sort_alphabetically(str):
  return ''.join(sorted(list(str.strip().lower())))


def is_anagram_of(str, testStr):
  return sort_alphabetically(str) == sort_alphabetically(testStr)

result = is_anagram_of("devil", "lived")
