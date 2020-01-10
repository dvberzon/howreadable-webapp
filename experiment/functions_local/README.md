# Abstracting into functions vs local operations

A bit hard to define this one, but a test to see if the extra level of indirection involved in abstracting a function is offset by naming a group of operations and encapsulating them in function.

This was the example code we used in v1. It would be good to find something terser

As Kiril mentioned the type of function (parsing data vs changing it) may affect the readability, so we might want to stick to one case.

```javascript
// local operations

function strPresent(str){
  return str != null && str.length > 0;
}

function validateParams(params){
  var firstNameValid = strPresent(params.firstName);
  var lastNameValid = strPresent(params.lastName);
  var emailValid = strPresent(params.email) && params.email.indexOf('@') > -1;
  var postcodeValid = strPresent(params.postcode);

  return firstNameValid && lastNameValid && emailValid && postcodeValid;
}

var params = {
  firstName: 'Jane',
  lastName: 'Doe',
  email: 'jane@doe.com',
  postcode: ''
};

result = validateParams(params);

// abstracted into functions

function strPresent(str){
  return str != null && str.length > 0;
}

function firstNameValid(params){
  return strPresent(params.firstName);
}

function lastNameValid(params){
  return strPresent(params.lastName);
}

function emailValid(params){
  return strPresent(params.email) && params.email.indexOf('@') > -1;
}

function postcodeValid(params){
  return strPresent(params.postcode);
}

function validateParams(params){
  return firstNameValid(params) && 
    lastNameValid(params) &&
    emailValid(params) &&
    postcodeValid(params);
}

var params = {
  firstName: 'Jane',
  lastName: 'Doe',
  email: 'jane@doe.com',
  postcode: ''
};

var result = validateParams(params);
```
