function withinRange(value, start, end) {
  var beforeStart = value < start;
  var afterEnd = value > end;
  return !(beforeStart || afterEnd);
}

var result = withinRange(10, 4, 20);
