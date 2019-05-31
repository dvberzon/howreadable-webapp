def greeting(user)
  if !user[:title]
    name = user[:first_name]
  else
    name = "#{user[:title]} #{user[:last_name]}"
  end

  'Dear ' + name
end

user = {
  title: 'Miss',
  first_name: 'Jane',
  last_name: 'Marple'
}

result = greeting user
