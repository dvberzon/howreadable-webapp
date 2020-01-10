function getLogin(user) {
  var login;
  if (user.admin) {
    login = user.username;
  } else {
    login = user.email;
  }
  return login;
}

var user = {
  username: 'jane',
  admin: true,
  email: 'jane@example.com'
};

var result = getLogin(user);
