var list = [1, 2, 3];

function doubleItems(input) {
  for (var i = 0; i < input.length; i += 1) {
    input[i] = input[i] * 2;
  }
}

doubleItems(list);

var result = list[1];
