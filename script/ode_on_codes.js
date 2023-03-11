answers={0	:	"option4",1	:	"option2",2	:	"option1",3	:	"option2",4	:	"option4",5	:	"option3",6	:	"option3",7	:	"option1",8	:	"option2",9	:	"option1",10	:	"option1",11	:	"option4",12	:	"option1",13	:	"option3",14	:	"option4",15	:	"option1",16	:	"option4",17	:	"option4",18	:	"option3",19	:	"option2",20	:	"option3",21	:	"option2",22	:	"option3",23	:	"option2",24	:	"option2",25	:	"option3",26	:	"option2",27	:	"option1",28	:	"option4",29	:	"option4"}

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
    document.cookie = "sname=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "cname=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "t_time=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "sub_time=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    document.cookie = "name="+n;
    document.cookie = "email="+e;
    document.cookie = "cname="+c;
    document.cookie = "marks="+marks;
    document.cookie = "t_time="+ t
    document.cookie = "sub_time="+ time
    window.location.replace('finish_ode_on_codes.php')
  }