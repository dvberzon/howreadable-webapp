function getSalutation(title, firstName, lastName) {
  var salutation;
  if (title) {
    salutation = title + ' ' + lastName;
  } else {
    salutation = firstName + ' ' + lastName;
  }
  return salutation;
}

var result = getSalutation('Miss', 'Jane', 'Marple');
