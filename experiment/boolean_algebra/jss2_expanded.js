var you = {
  happy: true,
  knowsIt: false
};

function shouldClapHands(person) {
  if (!person.happy || !person.knowsIt) {
    return false;
  }

  return true;
}

var result = shouldClapHands(you);
