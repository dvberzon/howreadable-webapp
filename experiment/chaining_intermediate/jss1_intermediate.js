function sentenceCase(input) {
  var firstCharacter = input.charAt(0);
  var capitalizedFirstCharacter = firstCharacter.toUpperCase();
  var restOfInput = input.slice(1, input.length);

  return capitalizedFirstCharacter + restOfInput;
}

var result = sentenceCase('the right answer');
