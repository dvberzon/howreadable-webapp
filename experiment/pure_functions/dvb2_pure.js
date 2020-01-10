var users = [
  { username: 'amy', admin: true },
  { username: 'bob', admin: false },
  { username: 'helen', admin: true },
  { username: 'amir', admin: false },
  { username: 'carmen', admin: false }
];

function countAdmins(userArr) {
  var count = 0;
  for (var i = 0; i < userArr.length; i++) {
    if (userArr[i].admin) {
      count = count + 1;
    }
  }
  return count;
}

var result = countAdmins(users);
