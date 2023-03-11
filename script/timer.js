const timer=document.getElementById('timer');
j=59;
i=19;
me()
function me(){
   if(j==0 && i==0){
      alert("Sorry, Your Time is Up!");
      checkmark();
   }
   if(j>=0 ){
      if(j<10 && i<10){
         timer.innerText='0'+i+":"+'0'+j;j--;}
      else if(j<10 && i>10){
          timer.innerText=i+":0"+j;j--;
   }
   else if(i<10 && j>10){
       timer.innerText="0"+i+':'+j;j--;
}
   else{
      timer.innerText=i+':'+j;j--;
   }
setTimeout(me, 1000)}
else if(i>0){

   i--;
   j=59;
   me();
} 
}