var users = [];

function addUser(users, newUser) {
  return [].concat(users, newUser);
}

users = addUser(users, 'bob');
users = addUser(users, 'amy');
users = addUser(users, 'will');
users = addUser(users, 'lin');

var result = users.length;
