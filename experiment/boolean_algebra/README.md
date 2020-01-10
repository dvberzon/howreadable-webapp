# Boolean algebra

We talked about the possibility of testing for expanded vs simplified:

eg: 
- expanded `(!a && !b)`
- simplified `(!(a || b))`

How does more brackets compare to less `not`s

Here's a vague attempt at an example. I know there are better ways to write the functionality but it demonstrates the idea.

```javascript
// expanded
function isPositive(num) {
  return num !== null && num > 0;
}

var result = isPositive(-3);

// simplified
function isPositive(num) {
  return !(num === null || num < 0);
}

var result = isPositive(-3);
```
