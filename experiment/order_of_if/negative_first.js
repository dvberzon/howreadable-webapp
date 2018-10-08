function getGreeting(user){
  var name;

  if(!user.title){
    name = user.firstName;
  }else{
    name = user.title + " " + user.lastName;
  }
  
  return "Dear " + name;
}

var user = {
  title: "Mrs.",
  firstName: "Jane",
  lastName: "Marple"
}

var result = getGreeting(user);