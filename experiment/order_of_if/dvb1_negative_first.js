function getSalutation(title, firstName, lastName) {
  var salutation;
  if (!title) {
    salutation = firstName + ' ' + lastName;
  } else {
    salutation = title + ' ' + lastName;
  }
  return salutation;
}

var result = getSalutation('Miss', 'Jane', 'Marple');
