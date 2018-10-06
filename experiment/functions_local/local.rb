def str_present(str)
  str && str.length > 0
end

def validate_params(params)
  first_name_valid = str_present params[:first_name]
  last_name_valid = str_present params[:last_name]
  email_valid = str_present(params[:email]) && params[:email].include?('@')
  postcode_valid = str_present params[:postcode]

  first_name_valid && last_name_valid && email_valid && postcode_valid
end

params = {
  first_name: 'Jane',
  last_name: 'Doe',
  email: 'jane@doe.com',
  postcode: ''
}

result = validate_params params
