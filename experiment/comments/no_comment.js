function doRangesOverlap(range1, range2){
  return range1.end >= range2.start && range1.start <= range2.end;
}

var scores = {
  start: 1,
  end: 7
}

var desired = {
  start: 5,
  end: 9
}

var result = doRangesOverlap(scores, desired);