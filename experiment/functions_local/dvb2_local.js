var nonNumericCards = {
  1: 'Ace',
  11: 'Jack',
  12: 'Queen',
  13: 'King'
};

var suits = ['Hearts', 'Clubs', 'Spades', 'Diamonds'];

var pack = [];

for (var suitIndex = 0; suitIndex < suits.length; suitIndex++) {
  var suit = suits[suitIndex];
  for (var number = 1; number < 14; number++) {
    var value = nonNumericCards[number] || number;
    pack.push(value + ' of ' + suit);
  }
}

var result = pack[0];
