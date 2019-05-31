function getResult(bool1, bool2) {
  if (bool1 || bool2) {
    return 'one or more';
  } else {
    return 'neither';
  }
}

var result = getResult(false, true);
