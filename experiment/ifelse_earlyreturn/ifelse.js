function letterForNumber(num){
  var letter;
  if(num > 0 && num < 27){
    var letters = "abcdefghijklmnopqrstuvwxyz";
    var lettersArr = letters.split(''); // ['a', 'b', ..]
    letter = lettersArr[num - 1];
  } else {
    letter = '-';
  }
  return letter;
}

result = letterForNumber(3);