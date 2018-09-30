function applyTuple(action, num) {
  var result;

  var action_handlers = {
    half: function() {
      result = num / 2;
    },
    double: function() {
      result = num * 2;
    },
    triple: function() {
      result = num * 3;
    },
    quadruple: function() {
      result = num * 4;
    },
    default: function() {
      result = num;
    }
  };

  (action_handlers[action] || action_handlers['default'])();
  
  return result;
}

const result = applyTuple('double', 2);
