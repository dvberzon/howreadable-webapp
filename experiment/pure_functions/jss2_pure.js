var animal = {
  name: 'Snuffles',
  type: 'DOG'
};

function rename(input, newName) {
  input.name = newName;
}

rename(animal, 'Snowball');

var result = animal.name;
