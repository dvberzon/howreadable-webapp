function canDrink(drinkerAge, drinkIsAlcoholic) {
  var underAge = drinkerAge < 18;
  return !(underAge && drinkIsAlcoholic);
}

var result = canDrink(21, true);
