function add12Hours(time) {
  var hourMinute = time.split(':');

  return 12 + parseFloat(hourMinute[0]) + ':' + hourMinute[1];
}

function to24HourTime(time) {
  var parts = time.split(' ');

  if (parts[1] === 'AM') {
    return parts[0];
  }

  return add12Hours(parts[0]);
}

var result = to24HourTime('7:30 PM');
