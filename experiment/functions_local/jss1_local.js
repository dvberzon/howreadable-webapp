function to24HourTime(time) {
  var parts = time.split(' ');

  if (parts[1] === 'AM') {
    return parts[0];
  }

  var hourMinute = parts[0].split(':');

  return 12 + parseFloat(hourMinute[0]) + ':' + hourMinute[1];
}

var result = to24HourTime('7:30 PM');
