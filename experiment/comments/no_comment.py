def do_ranges_overlap(range1, range2):
  return (
    range1.get('end') >= range2.get('start')
    and range1.get('start') <= range2.get('end')
  )


scores = {
  'start': 1,
  'end': 7
}

desired = {
  'start': 5,
  'end': 9
}

result = do_ranges_overlap(scores, desired)