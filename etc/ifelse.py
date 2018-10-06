def applyTuple(action, num):
  if(action == 'half'):
    result = num / 2
  elif(action == 'double'):
    result = num * 2
  elif(action == 'triple'):
    result = num * 3
  elif(action == 'quadruple'):
    result = num * 4
  else:
    result = num

  return result

result = applyTuple('double', 2)
