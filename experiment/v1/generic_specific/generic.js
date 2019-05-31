function processStr(str){
  return str.toLowerCase().split('').sort().join('').trim();
}


function isAnagramOf(str, testStr){
  return processStr(str) == processStr(testStr);
}

var result = isAnagramOf("devil", "lived");