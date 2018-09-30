def apply_tuple(action, num)
  result = nil
  
  action_handlers = {
    half: -> { result = num / 2 },
    double: -> { result = num * 2 },
    triple: -> { result = num * 3 },
    quadruple: -> { result = num * 4 },
    default: -> { result = num },
  }
  (action_handlers[action] || action_handlers[:default]).call
  
  result
end

result = apply_tuple :double, 2
