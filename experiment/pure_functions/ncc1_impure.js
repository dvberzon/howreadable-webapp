function calculateMagnitude(vector) {
  var magnitudeSquared = (vector.x * vector.x) + (vector.y * vector.y);
  var magnitude = Math.sqrt(magnitudeSquared);
  vector.magnitude = magnitude;
}

var vector = { x: 3, y: 4 };
calculateMagnitude(vector);
var result = vector.magnitude;
