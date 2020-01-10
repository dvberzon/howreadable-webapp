function calculateMagnitude(vector) {
  var magnitudeSquared = (vector.x * vector.x) + (vector.y * vector.y);
  var magnitude = Math.sqrt(magnitudeSquared);
  return magnitude;
}

var vector = { x: 3, y: 4 };
var result = calculateMagnitude(vector);
