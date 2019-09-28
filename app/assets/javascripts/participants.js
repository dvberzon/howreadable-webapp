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

  var navButtons = document.querySelectorAll('button.nav')
  console.log(navButtons);
  function navToSection(event) {
    var sectionId = event.target.dataset.target;
    var sections = document.querySelectorAll('section');
    for(var i = 0; i < sections.length; i++){
      sections[i].classList.remove('in');
    } 
    document.getElementById(sectionId).classList.add('in');
    window.scrollTo(0,0);
  }
  for(var i = 0; i < navButtons.length; i++){
    navButtons[i].addEventListener('click', navToSection);  
  }
});
