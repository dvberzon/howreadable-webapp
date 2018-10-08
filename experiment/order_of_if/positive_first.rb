def greeting(user)
  if user[:title]
    name = "#{user[:title]} #{user[:last_name]}"
  else
    name = user[:first_name]
  end

  return "Dear " + name
end

user = {
  title: "Mrs.",
  first_name: "Jane",
  last_name: "Marple"
}

result = greeting user