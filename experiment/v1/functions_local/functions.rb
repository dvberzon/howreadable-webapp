def str_present(str)
  str && !str.empty?
end

def first_name_valid(params)
  str_present params[:first_name]
end

def last_name_valid(params)
  str_present params[:last_name]
end

def email_valid(params)
  str_present(params[:email]) && params[:email].include?('@')
end

def postcode_valid(params)
  str_present params[:postcode]
end

def validate_params(params)
    first_name_valid(params) &&
      last_name_valid(params) &&
      email_valid(params) &&
      postcode_valid(params)
end


params = {
  first_name: 'Jane',
  last_name: 'Doe',
  email: 'jane@doe.com',
  postcode: ''
}

result = validate_params params
