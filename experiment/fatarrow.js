const getResult = (value) => value > 4 ? 10 : 20;

const result = getResult(3);

function makeRequest () {
  return (dispatch) => {
    axios()
      .then()
      .catch((error) => {
        if (error.response.status === 401) {
          dispatch(imGettingAToken());
          return getToken()
            .then(makeRequest);
        } else {
          throw throw Error(error);
        }
      })
  }
}

bob ?
  : will
  ? hello
  : dfdf
  ?

with or without brack
ets

var thing = 
...
var newting
...
var blah
...
result



for(let value of values){

}

const str = bar + 'a';
CONST STR = `${bar} a`;

arr.splice()
[].concat(arr)
[...arr]

copy an array

