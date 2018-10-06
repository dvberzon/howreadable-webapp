function strPresent(str){
  return str != null && str.length > 0
}

function validateParams(params){
  var firstNameValid = strPresent(params.firstName);
  var lastNameValid = strPresent(params.lastName);
  var emailValid = strPresent(params.email) && params.email.indexOf('@') > -1;
  var postcodeValid = strPresent(params.postcode);

  return firstNameValid && lastNameValid && emailValid && postcodeValid
}

var params = {
  firstName: 'Jane',
  lastName: 'Doe',
  email: 'jane@doe.com',
  postcode: ''
}

result = validateParams(params);