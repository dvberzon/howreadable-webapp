function canLegallyDrink(age) {
  var legal = age >= 18;
  if (legal) {
    return 'yes';
  } else {
    return 'no';
  }
}

var result = canLegallyDrink(14);
