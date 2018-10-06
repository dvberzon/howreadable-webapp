def applyTuple(action, num):
  action_handlers = {
    'half': lambda : num / 2,
    'double':  lambda : num * 2,
    'triple': lambda : num * 3,
    'quadruple': lambda : num * 4,
    'default': lambda : num
  }

  return (action_handlers.get(action) or action_handlers.get('default'))()

result = applyTuple('double', 2)
