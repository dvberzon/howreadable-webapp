function getMultiples(str) {
  var digits = str.split('');
  var digitsDiv3 = digits.map(function(number) {
    return number / 3;
  });
  var wholeNumbers = digitsDiv3.filter(function(number) {
    return number.toString().indexOf('.') === -1;
  });
  var multiplesOf3 = wholeNumbers.map(function(number) {
    return number * 3;
  });
  return multiplesOf3;
}

var result = getMultiples('0123456789')[2];
