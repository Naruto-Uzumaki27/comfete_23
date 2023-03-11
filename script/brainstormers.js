answers={0	:	"option1",1	:	"option2",2	:	"option3",3	:	"option2",4	:	"option1",5	:	"option2",6	:	"option4",7	:	"option1",8	:	"option2",9	:	"option3",10	:	"option2",11	:	"option3",12	:	"option3",13	:	"option4",14	:	"option3",15	:	"option1",16	:	"option2",17	:	"option2",18	:	"option3",19	:	"option2",20	:	"option2",21	:	"option1",22	:	"option2",23	:	"option3",24	:	"option3",25	:	"option2",26	:	"option2",27	:	"option2",28	:	"option1",29	:	"option2"}

function checkmark(){
  marks=0
  for(i=0;i<30;i++){
    if(answers[i]==selected[i])
    {
    marks+=1;
    }
  }
  const d = new Date();
  let time = d.getHours()+':'+d.getMinutes()+':'+d.getSeconds()+"| "+d.getDate()+'/'+d.getMonth()+'/'+d.getFullYear();
  n=document.getElementById('pname').innerHTML;
  e=document.getElementById('email').innerHTML;
  c=document.getElementById('cname').innerHTML;
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
  window.location.replace('finish_brainstormers.php');
}