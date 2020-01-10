var list = ['a', 'b', 'b', 'c', 'a'];

function keepDuplicates(value, index) {
  return index !== list.indexOf(value) || index !== list.lastIndexOf(value);
}

function capitalize(item) {
  return item.toUpperCase();
}

var result = list.filter(keepDuplicates).map(capitalize)[1];
