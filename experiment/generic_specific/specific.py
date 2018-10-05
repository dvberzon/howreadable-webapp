def sortAlphabetically(str):
  return ''.join(sorted(list(str.strip().lower())))


def isAnagramOf(str, testStr):
  return sortAlphabetically(str) == sortAlphabetically(testStr)

result = isAnagramOf("devil", "lived")
