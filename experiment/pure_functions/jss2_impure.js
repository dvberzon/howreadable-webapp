var animal = {
  name: 'Snuffles',
  type: 'DOG'
};

function rename(input, newName) {
  return {
    name: newName,
    type: input.type
  };
}

var result = rename(animal, 'Snowball').name;
