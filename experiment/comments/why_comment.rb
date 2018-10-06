def ranges_overlap?(range1, range2)
  # Two ranges overlap if one starts before the other ends
  # and ends before the other starts
  range1[:end] >= range2[:start] && range1[:start] <= range2[:end]
end

scores = {
  start: 1,
  end: 7
}

desired = {
  start: 5,
  end: 9
}

result = ranges_overlap?(scores, desired)