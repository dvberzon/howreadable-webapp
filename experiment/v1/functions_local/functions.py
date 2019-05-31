def str_present(str):
    return str is not None and len(str) > 0


def first_name_valid(params):
    return str_present(params.get('first_name'))


def last_name_valid(params):
    return str_present(params.get('last_name'))


def email_valid(params):
    return str_present(params.get('email')) and '@' in params.get('email')


def postcode_valid(params):
    return str_present(params.get('postcode'))


def validate_params(params):
    return (
        first_name_valid(params) and
        last_name_valid(params) and
        email_valid(params) and
        postcode_valid(params)
    )

params = {
    'first_name': 'Jane',
    'last_name': 'Doe',
    'email': 'jane@doe.com',
    'postcode': ''
}

result = validate_params(params)

