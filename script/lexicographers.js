answers={0:"option1",1:"option3",2:"option2",3:"option2",4:"option4",5:"option1",
6:"option2",7:"option3",8:"option2",9:"option1",10:"option2",11:"option1",
12:"option1",13:"option1",14:"option3",15:"option3",16:"option1",17:"option1",
18:"option3",19:"option1",20:"option1",21:"option2",22:"option4",23:"option1",
24:"option3",25:"option3",26:"option4",27:"option4",28:"option1",
29:"option1"}

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
    const d = new Date();
    let time = d.getHours()+':'+d.getMinutes()+':'+d.getSeconds()+"| "+d.getDate()+'/'+d.getMonth()+'/'+d.getFullYear();
    
    n=document.getElementById('pname').innerHTML
    e=document.getElementById('email').innerHTML
    c=document.getElementById('cname').innerHTML
    t=document.getElementById('timer').innerHTML
    document.cookie = "name=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "marks=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "email=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "cname=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "sname=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "t_time=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "sub_time=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "name="+n;
    document.cookie = "email="+e;
    document.cookie = "cname="+c;
    document.cookie = "marks="+marks;
    document.cookie = "t_time="+ t
    document.cookie = "sub_time="+ time
    window.location.replace('finish_lexicographers.php')
  }