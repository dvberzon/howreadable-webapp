var person1 = {
  name: 'Bob',
  dateOfBirth: '1973-01-03'
};

var person2 = {
  name: 'Bob',
  dateOfBirth: '1982-01-03'
};

function haveSameBirthday(person1, person2) {
  var date1 = new Date(person1.dateOfBirth);
  var date2 = new Date(person2.dateOfBirth);
  var sameMonth = date1.getMonth() == date2.getMonth();
  var sameDate = date1.getDate() == date2.getDate();
  return sameMonth && sameDate;
}

var result = haveSameBirthday(person1, person2);
