function sort(input) {
  return input
    .toLowerCase()
    .split('')
    .sort()
    .join('');
}

var result = sort('bag');
