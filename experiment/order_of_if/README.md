# Order of if

This one is interesting. Based on the idea that cognitively for an if statement you should:

- Do the positive case first
- Do the smallest case first

And when these are in conflict it's not clear which one to do first. In version one we tested the positive first with the following snippets:

```javascript
// positive case first

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
  title: "Miss",
  firstName: "Jane",
  lastName: "Marple"
};

var result = getGreeting(user);

// negative case first

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
  title: "Miss",
  firstName: "Jane",
  lastName: "Marple"
};

var result = getGreeting(user);
```

We didn't test for smallest case first. It would be good to come up with terser tests.