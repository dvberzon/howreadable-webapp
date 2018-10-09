// for any two ranges, do they overlap?
function doRangesOverlap(range1, range2) {
  // does one start before the other ends
  // and end before the other starts
  return range1.end >= range2.start && range1.start <= range2.end;
}

// range of scores
var scores = {
  start: 1,
  end: 7
};

// the desired range
var desired = {
  start: 5,
  end: 9
};

// do the scores overlap with the desired range
var result = doRangesOverlap(scores, desired);