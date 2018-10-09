from functools import reduce

values = [1, 2, 3, 4]

result = reduce(lambda sum, val: sum + val, values)
