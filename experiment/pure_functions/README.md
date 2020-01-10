# Pure functions vs side effects

Test whether external dependencies or side effects of a function affect readability.

This was the example I knocked up, which offended everyone! It would be good to find snippets that are reasonable, and simple and show the difference between pure functions and non pure

```javascript
// version with side effects

var result = 10;
    
function multiply(n) {
  result = result * n;
}

multiply(3);

// version with no side effects

function multiply(a, b) {
  return a * b;
}


var result = multiply(3, 10);
```
