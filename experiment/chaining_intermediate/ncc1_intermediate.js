function reverse(sentence) {
  var words = sentence.split(' ');
  var reversedWords = words.reverse();
  var reversedSentence = reversedWords.join(' ');
  return reversedSentence;
}

var sentence = 'Hello world!';
var result = reverse(sentence);
