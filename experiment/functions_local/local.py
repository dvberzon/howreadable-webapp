def strPresent(str):
  return str is not None and len(str) > 0

def validateParams(params):
  firstNameValid = strPresent(params.get('firstName'))
  lastNameValid = strPresent(params.get('lastName'))
  emailValid = strPresent(params.get('email')) and '@' in params.get('email')
  postcodeValid = strPresent(params.get('postcode'))

  return firstNameValid and lastNameValid and emailValid and postcodeValid

params = {
  'firstName': 'Jane',
  'lastName': 'Doe',
  'email': 'jane@doe.com',
  'postcode': ''
}

result = validateParams(params)
