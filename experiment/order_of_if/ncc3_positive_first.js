var totalPokemon = 150;

function caughtThemAll(numPokemon) {
  if (numPokemon === totalPokemon) {
    return 'caught them all';
  } else {
    return 'gotta catch them all';
  }
}

var result = caughtThemAll(102);
