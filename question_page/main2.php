<?php
include("../dbconn/fdata2.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COMFETE 2023</title>
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../style/second.css">
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
        
        <div class='ques'></div>
        
        <div class="question">
          <p id="question"><?php echo $data['question']; ?></p>
        </div>
        
        <div class="options">
          <div class="option" id="option1" onclick="chooseOption(this)"><?php echo $data['op1'] ?></div>
          <div class="option" id="option2" onclick="chooseOption(this)"><?php echo $data['op2'] ?></div>
          <div class="option" id="option3" onclick="chooseOption(this)"><?php echo $data['op3'] ?></div>
          <div class="option" id="option4" onclick="chooseOption(this)"><?php echo $data['op4'] ?></div>
        </div>
        
        <?php $sn++; }} else{ ?> 
        <?php echo $fetchData; ?>
        <?php } ?>
        <?php
        $conn->close();?>
        
        <div id="btn-container">
           <div class="buttons">
             <button class="button" id="previous" onclick="previousQuestion(-1);">Previous</button>
             <button class="button" id="next" onclick="nextQuestion(+1);">Next</button>
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
  <div id='rnd_name'>Ode On Codes</div>
  <div id="timer"></div>
  <button class="submit" id="submit" onclick="showModal()">Submit</button>
  <script src="../script/index.js"></script>
  <script src="../script/check2.js"></script>
  <script src="../script/timer.js"></script>
</body>
</html>