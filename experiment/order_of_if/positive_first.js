function getGreeting(user){
  var name;

  if(user.title){
    name = user.title + " " + user.lastName;
  }else{
    name = user.firstName;
  }
  
  return "Dear " + name;
}

var user = {
  title: "Mrs",
  firstName: "Jane",
  lastName: "Marple"
}

var result = getGreeting(user);