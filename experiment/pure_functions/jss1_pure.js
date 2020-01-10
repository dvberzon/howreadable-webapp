var list = [1, 2, 3];

function doubleItems(input) {
  var newList = [];

  for (var i = 0; i < input.length; i += 1) {
    newList[i] = input[i] * 2;
  }

  return newList;
}

var result = doubleItems(list)[1];
