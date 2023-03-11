answers={0:"Adobe Illustrator",1:"Airbnb",2:"AMD",3:"Brave",4:"ChatGpt",
5:"Meta",6:"MySql",
7:"Nestle",8:"Netscape-Navigator",9:"Nvidia",10:"OpenOffice",
11:"Stack Overflow",12:"Tesla",
13:"Tor",14:"Ubuntu",15:"Nike",16:"Samsung",17:"Uber",18:"Apple",
19:"The New York Times",20:"Eveready",21:"RedBull",22:"Amul",23:"Mahindra",
24:"Microsoft",
25:"Instagram",26:"Kit Kat",27:"Coca Cola",28:"Adidas",29:"Levi's"}

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
    window.location.replace('finish_adventors.php') 
  }