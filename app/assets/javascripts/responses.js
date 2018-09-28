document.addEventListener('DOMContentLoaded', function(){
  // code for response page
  if(document.querySelector('#response-form'));
  var startTime = new Date();
  var responseTime = null;
  var input = document.querySelector('#response_given_answer');
  var msInput = document.querySelector('#response_responded_ms');


  input.addEventListener('change', function(event){
     if(!responseTime){
      responseTime = new Date() - startTime;
      msInput.value = responseTime;
      console.log(responseTime);
    }
  });
})