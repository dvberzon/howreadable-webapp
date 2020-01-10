var list = ['a', 'b', 'b', 'c', 'a'];

function keepDuplicates(value, index) {
  return index !== list.indexOf(value) || index !== list.lastIndexOf(value);
}

function capitalize(item) {
  return item.toUpperCase();
}

var duplicates = list.filter(keepDuplicates);
var capitalizedDuplicates = duplicates.map(capitalize);

var result = capitalizedDuplicates[1];
