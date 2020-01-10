function sort(input) {
  var lowerCase = input.toLowerCase();
  var lettersArray = lowerCase.split('');
  var sorted = lettersArray.sort();
  return sorted.join('');
}

var result = sort('bag');
