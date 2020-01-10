function getLetterCounts(stringInput) {
  var letters = stringInput.split('');
  var counts = letters.reduce(function(counts, letter) {
    if (counts[letter]) {
      counts[letter] += 1;
    } else {
      counts[letter] = 1;
    }
    return counts;
  }, {});
  return counts;
}

var result = getLetterCounts('aaabbcccc').c;
