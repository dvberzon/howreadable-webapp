var totalPokemon = 150;

function caughtThemAll(numPokemon) {
  if (numPokemon !== totalPokemon) {
    return 'gotta catch them all';
  } else {
    return 'caught them all';
  }
}

var result = caughtThemAll(102);
