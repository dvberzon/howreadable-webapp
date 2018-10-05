def strPresent(str):
  return str is not None and len(str) > 0

def firstNameValid(params):
  return strPresent(params.get('firstName'))

def lastNameValid(params):
  return strPresent(params.get('lastName'))

def emailValid(params):
  return strPresent(params.get('email')) and '@' in params.get('email')

def postcodeValid(params):
  return strPresent(params.get('postcode'))

def validateParams(params):
  return (
    firstNameValid(params)
    and lastNameValid(params)
    and emailValid(params)
    and postcodeValid(params)
  )

params = {
  'firstName': 'Jane',
  'lastName': 'Doe',
  'email': 'jane@doe.com',
  'postcode': ''
}

result = validateParams(params)
