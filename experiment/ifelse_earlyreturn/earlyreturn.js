function letterForNumber(num){
  
  if(num < 1 || num > 26){
    return '-';
  }  
  var letters = "abcdefghijklmnopqrstuvwxyz";
  var lettersArr = letters.split(''); // ['a', 'b', ..]
  return lettersArr[num - 1];
}

result = letterForNumber(3);