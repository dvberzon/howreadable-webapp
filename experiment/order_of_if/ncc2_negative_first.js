function containsCarbon(compound) {
  if (compound.indexOf('C') !== -1) {
    return 'yes';
  } else {
    return 'no';
  }
}

var result = containsCarbon('H2O');
