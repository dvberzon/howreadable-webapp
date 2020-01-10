function reverse(sentence) {
  return sentence
    .split(' ')
    .reverse()
    .join(' ');
}

var sentence = 'Hello world!';
var result = reverse(sentence);
