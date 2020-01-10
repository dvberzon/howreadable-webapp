function getSum(values) {
  var sum = 0;
  for (var i = 0; i < values.length; i++) {
    sum += values[i];
  }
  return sum;
}

function getAverage(values) {
  return getSum(values) / values.length;
}

result = getAverage([1, 2, 3]);
