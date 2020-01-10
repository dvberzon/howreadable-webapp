function containsCarbon(compound) {
  if (compound.indexOf('C') === -1) {
    return 'no';
  } else {
    return 'yes';
  }
}

var result = containsCarbon('H2O');
