def process_str(str):
    return ''.join(sorted(list(str.strip().lower())))


def is_anagram_of(str, testStr):
    return process_str(str) == process_str(testStr)

result = is_anagram_of("devil", "lived")
