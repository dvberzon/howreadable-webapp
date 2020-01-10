function isValidPassword(input) {
  var containsLetter = /[a-z]/.test(input);
  var containsNumber = /[0-9]/.test(input);
  var isLongEnough = input.length >= 8;

  if (!containsLetter || !containsNumber || !isLongEnough) {
    return false;
  }

  return true;
}

var result = isValidPassword('pass9');
