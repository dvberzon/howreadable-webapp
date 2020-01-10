function sentenceCase(input) {
  return input.charAt(0).toUpperCase() + input.slice(1, input.length);
}

var result = sentenceCase('the right answer');
