function getMultiplesOf3(length) {
  var array = new Array(length);
  for (var i = 0; i < array.length; i++) {
    array[i] = i * 3;
  }
  return array;
}

var numberArray = getMultiplesOf3(10);

var result = numberArray[8];
