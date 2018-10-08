def greeting(user):
  if user.get('title'):
    name = user.get('title') + " " + user.get('last_name')
  else:
    name = user.get('first_name')

  return "Dear " + name

user = {
  'title': 'Mrs.',
  'first_name': 'Jane',
  'last_name': 'Marple'
}

result = greeting(user)