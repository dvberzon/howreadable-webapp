function apply_tuple(action, num) {
  var result;

  if(action === 'half') {
    result = num / 2;
  } else if(action === 'double') {
    result = num * 2;
  } else if(action === 'triple') {
    result = num * 3;
  } else if(action === 'quadruple') {
    result = num * 4;
  } else { 
    result = num;
  }
  
  return result;
}

const result = apply_tuple('double', 2);
