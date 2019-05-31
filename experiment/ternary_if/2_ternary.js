function getResult(str) {
  return str.length < 4 ? 'short' : 'long';
}

var result = getResult(3);