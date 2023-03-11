answers={0:"option1",1:"option2",2:"option3",3:"option4",4:"option4",5:"option3",6:"option2",
7:"option1",8:"option1",9:"option2",10:"option3",11:"option4",12:"option4",
13:"option3",14:"option2",15:"option1",16:"option1",17:"option2",18:"option3",
19:"option4",20:"option4",21:"option3",22:"option2",23:"option1",24:"option1",
25:"option2",26:"option3",27:"option4",28:"option4",29:"option3"}

function checkmark(){
  marks=0
  for(i=0;i<30;i++){
    if(answers[i]==selected[i])
    {
    marks+=1;
    }
  }
  console.log("Marks="+marks);
  window.location.replace('finish1.php');
  n=document.getElementById('pname').innerHTML;
  e=document.getElementById('email').innerHTML;
  c=document.getElementById('cname').innerHTML;
  document.cookie = "name=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
  document.cookie = "marks=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
  document.cookie = "email=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
  document.cookie = "cname=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
  document.cookie = "name="+n;
  document.cookie = "email="+e;
  document.cookie = "cname="+c;
  document.cookie = "marks="+marks;
}