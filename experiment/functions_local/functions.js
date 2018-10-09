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