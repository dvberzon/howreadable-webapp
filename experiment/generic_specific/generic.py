def processStr(str):
  return ''.join(sorted(list(str.strip().lower())))


def isAnagramOf(str, testStr):
  return processStr(str) == processStr(testStr)

result = isAnagramOf("devil", "lived")
