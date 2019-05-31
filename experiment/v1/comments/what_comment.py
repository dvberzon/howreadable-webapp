# for any two ranges, do they overlap?
def do_ranges_overlap(range1, range2):
    # does one start before the other ends
    # and end before the other starts
    return (
        range1.get('end') >= range2.get('start') and
        range1.get('start') <= range2.get('end')
    )

# range of scores
scores = {
    'start': 1,
    'end': 7
}

# the desired range
desired = {
    'start': 5,
    'end': 9
}

# do the scores overlap with the desired range
result = do_ranges_overlap(scores, desired)
