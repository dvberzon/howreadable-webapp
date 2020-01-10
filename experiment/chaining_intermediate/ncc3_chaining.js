function getLetterCounts(stringInput) {
  return stringInput.split('').reduce(function(counts, letter) {
    if (counts[letter]) {
      counts[letter] += 1;
    } else {
      counts[letter] = 1;
    }
    return counts;
  }, {});
}

var result = getLetterCounts('aaabbcccc').c;
