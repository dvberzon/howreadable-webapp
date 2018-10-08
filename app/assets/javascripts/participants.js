document.addEventListener('DOMContentLoaded', function(){
  // code for participants page
  if(document.querySelector('#participant')){
  /*  // remove contact details for now
    var contactDiv = document.getElementById('contact');
    var contactRadios = document.querySelector('.contact-options');
    var canContactRadio = document.getElementById('participant_can_contact_true');
    
    contactRadios.addEventListener('change', function(elem){
      var checkedAnswer = document.querySelector('.contact-options input:checked');
      if(checkedAnswer && checkedAnswer.value === 'true'){
        contactDiv.classList.add("show");  
      } else {
        contactDiv.classList.remove("show");  
      }
      
    }); */
    var clientWidth = document.documentElement.clientWidth;
    var clientHeight = document.documentElement.clientHeight;
    document.getElementById('participant_client_w').value = clientWidth;
    document.getElementById('participant_client_h').value = clientHeight;
  }
});
