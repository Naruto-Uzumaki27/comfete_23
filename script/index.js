const questions=document.getElementsByClassName('question');
const options=document.getElementsByClassName('options');
const numbers=document.getElementsByClassName('number');
const modal=document.getElementById('modal');
let a=0;
let selected=[];
function closeModal(){
  modal.style.display="none";
}
function showModal(){
  modal.style.display="block";
}
function closeQuestions(){
  for(let i=0;i<questions.length;i++){
      questions[i].style.display="none";
      options[i].style.display="none";
  }
}
closeQuestions();
showQuestion(a);

function showQuestion(n){
  if(n<0){a=0;}
  if(n>=questions.length){a=questions.length-1;}
  closeQuestions();
  questions[a].style.display="block";
  options[a].style.display="block";
  for(let i=0;i<numbers.length;i++){
    numbers[i].className=numbers[i].className.replace(' active','');
   }
  numbers[a].className+=' active';
  numbers[a].scrollIntoView();
  checkSelected();
}

function previousQuestion(n){
    a=a+n;
    showQuestion(a);
}
function nextQuestion(n){
   a=a+n;
   showQuestion(a);
}
function chooseOption(option){
  if (option.classList.contains("selected")) {
    option.classList.remove("selected");
    
  } else{
  for(let i=0;i<options[a].children.length;i++){
      options[a].children[i].classList.remove('selected');
     }
   option.classList.toggle('selected');
    }
   selected[a]=option.id;
}

function checkSelected(){
for(let i=0;i<selected.length;i++){
  if(selected[i]){
    numbers[i].style.backgroundColor="#004eff";
  }
}
  
}
function goToQuestion(z){
    a=z-1;
    showQuestion(a);
}
