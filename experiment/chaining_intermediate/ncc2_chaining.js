function getMultiples(str) {
  return str
    .split('')
    .map(function(num) {
      return num / 3;
    })
    .filter(function(num) {
      return num.toString().indexOf('.') === -1;
    })
    .map(function(num) {
      return num * 3;
    });
}

var result = getMultiples('0123456789')[2];
