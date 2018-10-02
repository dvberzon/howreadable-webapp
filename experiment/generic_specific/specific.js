function sortAlphabetically(str){
  return str.toLowerCase().split('').sort().join('').trim();
}


function isAnagramOf(str, testStr){
  return sortAlphabetically(str) == sortAlphabetically(testStr);
}

var result = isAnagramOf("devil", "lived");