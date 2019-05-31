function getResult(value) {
  if (value.length < 4) {
    return 'short';
  } else {
    return 'long';
  }
}

var result = getResult('hello');
