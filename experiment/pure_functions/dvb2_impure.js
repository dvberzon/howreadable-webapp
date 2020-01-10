var users = [
  { username: 'amy', admin: true },
  { username: 'bob', admin: false },
  { username: 'helen', admin: true },
  { username: 'amir', admin: false },
  { username: 'carmen', admin: false }
];

function countAdmins() {
  var count = 0;
  for (var i = 0; i < users.length; i++) {
    if (users[i].admin) {
      count = count + 1;
    }
  }
  return count;
}

var result = countAdmins();
