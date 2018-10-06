# for any two ranges, do they overlap?
def ranges_overlap?(range1, range2)
  # does one start before the other ends
  # and end before the other starts 
  range1[:end] >= range2[:start] && range1[:start] <= range2[:end]
end

# range of scores
scores = {
  start: 1,
  end: 7
}

# the desired range
desired = {
  start: 5,
  end: 9
}

# do the scores overlap with the desired range
result = ranges_overlap?(scores, desired)