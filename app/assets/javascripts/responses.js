document.addEventListener('DOMContentLoaded', function(){
  // code for response page
  if(document.querySelector('#response')){
    var startTime = new Date();
    var responseTime = 0;
    var responeDiv = document.getElementById('response');
    var goButton = document.querySelector('.question button.go');
    var backButton = document.querySelector('.answer-form button.back');
    var msInput = document.querySelector('#response_responded_ms');

    var startTimer = function(){
      startTime = new Date();
      console.log('started timer');
    }

    var stopTimer = function(){
      responseTime += new Date() - startTime;
      msInput.value = responseTime;
    }

    goButton.addEventListener('click', function(){
      stopTimer();
      responeDiv.classList.add("answer-mode");
    });

/*    backButton.addEventListener('click', function(e){
      e.preventDefault();
      startTimer();
      responeDiv.classList.remove("answer-mode");
    });
*/    
  }
  
})