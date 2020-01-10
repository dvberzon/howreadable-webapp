var string = '0123456789';
var newString = '';

for (var i = 0; i < string.length; i++) {
  var char = string.charAt(i);
  newString += char + char;
}

var result = newString.length;
