# Chaining methods vs intermediate variables

This one could be interesting. An example might be the following (nicked from the naming example)

```javascript
// chained methods

function sortAlphabetically(str){
  return str.toLowerCase().split('').sort().join('');
}

var result = sortAlphabetically('bag');

// intermediate variables

function sortAlphabetically(str){
  var lowerCase =  str.toLowerCase();
  var lettersArr = lowerCase.split('');
  var sorted = lettersArr.sort()
  return sorted.join('');
}

var result = sortAlphabetically('bag');
```