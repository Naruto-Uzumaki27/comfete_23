<?php
include("../dbconn/fdata_adventors.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COMFETE 2023</title>
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../style/ads.css">
</head>
<body>
  <div class="container">
    <div class="left">
      <div class="question-number">
        <div class="number" id="number1" onclick="goToQuestion(1)">1</div>
        <div class="number" id="number2" onclick="goToQuestion(2)">2</div>
        <div class="number" id="number3" onclick="goToQuestion(3)">3</div>
        <div class="number" id="number4" onclick="goToQuestion(4)">4</div>
        <div class="number" id="number5" onclick="goToQuestion(5)">5</div>
        <div class="number" id="number6" onclick="goToQuestion(6)">6</div>
        <div class="number" id="number7" onclick="goToQuestion(7)">7</div>
        <div class="number" id="number8" onclick="goToQuestion(8)">8</div>
        <div class="number" id="number9" onclick="goToQuestion(9)">9</div>
        <div class="number" id="number10" onclick="goToQuestion(10)">10</div>
        <div class="number" id="number1" onclick="goToQuestion(11)">11</div>
        <div class="number" id="number2" onclick="goToQuestion(12)">12</div>
        <div class="number" id="number3" onclick="goToQuestion(13)">13</div>
        <div class="number" id="number4" onclick="goToQuestion(14)">14</div>
        <div class="number" id="number5" onclick="goToQuestion(15)">15</div>
        <div class="number" id="number6" onclick="goToQuestion(16)">16</div>
        <div class="number" id="number7" onclick="goToQuestion(17)">17</div>
        <div class="number" id="number8" onclick="goToQuestion(18)">18</div>
        <div class="number" id="number9" onclick="goToQuestion(19)">19</div>
        <div class="number" id="number10" onclick="goToQuestion(20)">20</div>
        <div class="number" id="number1" onclick="goToQuestion(21)">21</div>
        <div class="number" id="number2" onclick="goToQuestion(22)">22</div>
        <div class="number" id="number3" onclick="goToQuestion(23)">23</div>
        <div class="number" id="number4" onclick="goToQuestion(24)">24</div>
        <div class="number" id="number5" onclick="goToQuestion(25)">25</div>
        <div class="number" id="number6" onclick="goToQuestion(26)">26</div>
        <div class="number" id="number7" onclick="goToQuestion(27)">27</div>
        <div class="number" id="number8" onclick="goToQuestion(28)">28</div>
        <div class="number" id="number9" onclick="goToQuestion(29)">29</div>
        <div class="number" id="number10" onclick="goToQuestion(30)">30</div>
      </div>
    </div>
    <div class="right">
      <?php
      $name = $_GET['name'];
      $email =$_GET['email'];
      $college = $_GET['college'];
      echo "
      <div class='avatar-container'>
        <div class='avatar'>
          <img src='../images/avatar.png' alt='Profile'>
        </div>
        <div class='name-box'><b>
          <p class='avatar-name' id='pname'>$name</p></b>"."
          <div id='email' class='avatar-email'>$email</div>
          <div id='cname' class='avatar-college'>$college</div>
        </div>
      </div>";
      ?>
      <div class="quiz-container">
        <?php
          if(is_array($fetchData))
          {
            $sn=1;
            foreach($fetchData as $data){
        ?>
        <div class="question">
          <p id="question"><img draggable =false src='<?php echo $data['question']; ?>' width='350px' height='350px' alt='img'></p>
        </div>
        <script>
          function selectOption(opt){
          selected[a]=opt.value;
            }
        </script>
        <select class="options" id="options" onChange='selectOption(this)'>
            <option   class='list_ele option'  value="none"  selected disabled hidden>Select an Option</option>  
            <option   class='list_ele option'   >AMD</option>  
            <option   class='list_ele option'   >Adidas</option>  
            <option   class='list_ele option'   >Adobe Illustrator</option>  
            <option   class='list_ele option'   >Airbnb</option>  
            <option   class='list_ele option'   >Amul</option>  
            <option   class='list_ele option'   >Apple</option>  
            <option   class='list_ele option'   >Brave</option>  
            <option   class='list_ele option'   >ChatGpt</option>  
            <option   class='list_ele option'   >Coca Cola</option>  
            <option   class='list_ele option'   >Eveready</option>  
            <option   class='list_ele option'   >Instagram</option>  
            <option   class='list_ele option'   >Kit Kat</option>  
            <option   class='list_ele option'   >Levi's</option>  
            <option   class='list_ele option'   >Mahindra</option>  
            <option   class='list_ele option'   >Meta</option>  
            <option   class='list_ele option'   >Microsoft</option>  
            <option   class='list_ele option'   >MySql</option>  
            <option   class='list_ele option'   >Nestle</option>  
            <option   class='list_ele option'   >Netscape-Navigator</option>  
            <option   class='list_ele option'   >Nike</option>  
            <option   class='list_ele option'   >Nvidia</option>  
            <option   class='list_ele option'   >OpenOffice</option>  
            <option   class='list_ele option'   >RedBull</option>  
            <option   class='list_ele option'   >Samsung</option>  
            <option   class='list_ele option'   >Stack Overflow</option>  
            <option   class='list_ele option'   >Tesla</option>  
            <option   class='list_ele option'   >The New York Times</option>  
            <option   class='list_ele option'   >Tor</option>  
            <option   class='list_ele option'   >Uber</option>  
            <option   class='list_ele option'   >Ubuntu</option>  
        </select>
        <?php $sn++; }} else{ ?>
        <?php echo $fetchData; ?>
        <?php } ?>
        <?php
        $conn->close();?>
        <div id="btn-container">
           <div class="buttons">
             <button class="button" id="previous" onclick="previousQuestion(-1);"><img src="../images/previous.png" class="pn" alt="" draggable="false"></button>
             <button class="button" id="next" onclick="nextQuestion(+1);"><img class="pn" src="../images/next.png" alt="" draggable="false"></button>
           </div>
        </div>
    </div>
  </div>
  <div class="modal" id="modal">
     <span class="close" onclick="closeModal()">&times;</span>
     <p>Are You Sure, You want to Submit?</p>
     <div class="btn-container">
            <button class="button" onclick="checkmark()">Submit</button>
            <button class="button" onclick="closeModal()">Cancel</button>
     </div>

  </div>
  <div id="timer"></div>
  <div id='rnd_name'>Adventors</div>
  <button class="submit" id="submit" onclick="showModal()">Submit</button>
  <script src="../script/index.js"></script>
  <script src="../script/adventors.js"></script>
  <script src="../script/timer.js"></script>
</body>
</html>