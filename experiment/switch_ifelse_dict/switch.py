# SWITCH CASE DOESNT EXIST :(

# I wrote another version of the dictionary instead

def half(val):
  return val / 2

def double(val):
  return val * 2

def triple(val):
  return val * 3

def quadruple(val):
  return val * 4

def default(val):
  return val

def applyTuple(action, num):
  action_handlers = {
    'half': half,
    'double':  double,
    'triple': triple,
    'quadruple': quadruple,
    'default': default
  }

  return (action_handlers.get(action) or action_handlers.get('default'))(num)

result = applyTuple('doudble', 2)
