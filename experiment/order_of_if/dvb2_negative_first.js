function getLogin(user) {
  var login;
  if (!user.admin) {
    login = user.email;
  } else {
    login = user.username;
  }
  return login;
}

var user = {
  username: 'jane',
  admin: true,
  email: 'jane@example.com'
};

var result = getLogin(user);
