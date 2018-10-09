def greeting(user):
  if not user.get('title'):
    name = user.get('first_name')
  else:
    name = user.get('title') + " " + user.get('last_name')

  return "Dear " + name

user = {
  'title': 'Miss',
  'first_name': 'Jane',
  'last_name': 'Marple'
}

result = greeting(user)