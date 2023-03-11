answers={0:"option1",1:"option1",2:"option1",3:"option1",4:"option1",5:"option1",6:"option1",
7:"option1",8:"option1",9:"option1",10:"option1",11:"option1",12:"option1",
13:"option1",14:"option1",15:"option1",16:"option1",17:"option1",18:"option1",
19:"option1",20:"option1",21:"option1",22:"option1",23:"option1",24:"option1",
25:"option1",26:"option1",27:"option1",28:"option1",29:"option1"}

function checkmark(){
    marks=0
    console.log(selected);
    console.log(answers);
    for(i=0;i<30;i++){
      if(answers[i]==selected[i])
      {
      marks+=1;
      }
    }
    console.log("Marks="+marks);
    window.location.replace('finish3.php')
    n=document.getElementById('pname').innerHTML
    e=document.getElementById('email').innerHTML
    c=document.getElementById('cname').innerHTML
    document.cookie = "name=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "marks=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "email=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "cname=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "sname=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "name="+n;
    document.cookie = "email="+e;
    document.cookie = "cname="+c;
    document.cookie = "marks="+marks;
  }