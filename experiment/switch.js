function apply_tuple(action, num) {
  var result;

  switch(action){
    case 'half':
      result = num / 2;
      break;
    case 'double':
      result = num * 2;
      break;
    case 'triple':
      result = num * 3;
      break;
    case 'quadruple':
      result = num * 4;
      break;
    default: 
      result = num;
  }

  return result;
}

const result = apply_tuple('double', 2);
