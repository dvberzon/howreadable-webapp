function getResult(bool1, bool2) {
  return bool1 || bool2 ? 'one or more' : 'neither';
}

var result = getResult(true, false);