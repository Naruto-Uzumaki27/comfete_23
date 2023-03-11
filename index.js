const questions=document.getElementsByClassName('question');
const options=document.getElementsByClassName('options');
const numbers=document.getElementsByClassName('number');
let a=0;
let selected=[];
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
    numbers[i].className=numbers[i].className.replace(' selectDot','');
   }
  numbers[a].className+=' selectDot';
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
  for(let i=0;i<options[a].children.length;i++){
      options[a].children[i].classList.remove('selected');
  }
  if(option.classList==='selected'){
      option.classList.remove('selected');
  }else{
     option.classList.toggle('selected');
  }
   selected[a]=option.id;
}
function goToQuestion(z){
    a=z-1;
    showQuestion(a);
}
