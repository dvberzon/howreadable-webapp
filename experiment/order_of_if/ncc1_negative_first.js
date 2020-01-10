function canLegallyDrink(age) {
  var legal = age >= 18;
  if (!legal) {
    return 'no';
  } else {
    return 'yes';
  }
}

var result = canLegallyDrink(14);
