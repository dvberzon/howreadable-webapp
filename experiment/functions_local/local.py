def str_present(str):
    return str is not None and len(str) > 0


def validate_params(params):
    first_name_valid = str_present(params.get('first_name'))
    last_name_valid = str_present(params.get('last_name'))
    email_valid = (
      str_present(params.get('email')) and '@' in params.get('email')
    )
    postcode_valid = str_present(params.get('postcode'))

    return (
      first_name_valid and last_name_valid and
      email_valid and postcode_valid
    )


params = {
    'first_name': 'Jane',
    'last_name': 'Doe',
    'email': 'jane@doe.com',
    'postcode': ''
}

result = validate_params(params)
