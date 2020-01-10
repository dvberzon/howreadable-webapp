function repeatCharsTwice(inputString) {
  var outputString = '';

  for (var i = 0; i < string.length; i++) {
    var char = string.charAt(i);
    outputString += char + char;
  }

  return outputString;
}

var string = '0123456789';
var newString = repeatCharsTwice(string);
var result = newString.length;
