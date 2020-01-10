function differentNamesAndValues(input1, input2) {
  return input1.name !== input2.name && input1.value !== input2.value;
}

var object1 = { name: 'bob', value: 3 };
var object2 = { name: 'bob', value: 4 };

var result = differentNamesAndValues(object1, object2);
