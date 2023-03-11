<?php
include("fdata.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COMFETE 2023</title>
    <style>
        *{padding: 0;margin: 0;}
        body{background-color: #FED049;}
        .quiz-container {
          max-width: 800px;font-family: sans-serif;
          margin: 50px auto;box-sizing: border-box;
          text-align: center;padding:auto 25%;
        }
  
        .question {
          font-size: 20px;background-color: #3D5656;font-size: 1.3rem;
          padding: 20px;border-radius:5%;color:white;text-align: start;
        }
  
        .options {
          display: flex;flex-direction: column;
          justify-content: space-around;
          margin-top: 20px;
        }
  
        .option {
          font-size: 18px;margin:10px auto;
          padding: 10px 20px;text-align: start;
          border-radius: 4px;
          border-color:#913175;
          background-color:#FED049;
          color:#3D5656;
          cursor: pointer;
        }
  
        .option:hover {
          background-color: #3D5656;
          color:#FED049;
        }
  
        .buttons {
          display: flex;
          justify-content: space-between;
          margin-top: 50px;
        }
  
        .button {
          background-color:#3D5656;
          color: white;
          padding: 16px 20px;
          border: none;
          border-radius: 4px;
          cursor: pointer;
          font-size: 20px;
          width: 120px;
        }
  
        .button:hover {
          background-color: #3D5656;
        }
  
        .question-number {
          display: flex;
          justify-content: center;
          margin-top: 50px;
        }
        .selected{background-color:#D61C4E;color:white;}
        .number {
          background-color: #FED049;
          color: #3D5656;
          padding: 8px 16px;
          border-radius: 50%;
          border-color: #3d8556;
          margin: 0 10px;
          cursor: pointer;
        }
        .number:hover{
          background-color:white;
        }
        .selectDot{background-color:#3D5656;color:white;border-radius: 50%;}
        .submit{padding:10px 20px;background-color:#3D5656;
        color:white;font-size: 1.2rem;border:none;
        border-radius:5%;margin-left:40%;}
        .submit:hover{background-color:#FF7F3F ;color:#3D5656;}
      </style>
</head>
<body>
    <div class="quiz-container">
      <?php
      if(is_array($fetchData)){      
      $sn=1;
      foreach($fetchData as $data){
    ?>
        <div class="question">
          <p id="question"><?php echo $data['question']??''; ?></p>
        </div>
        <div class="options">
          <div class="option" id="option1" onclick="chooseOption(this)"><?php echo $data['op1']??''; ?></div>
          <div class="option" id="option2" onclick="chooseOption(this)"><?php echo $data['op2']??''; ?></div>
          <div class="option" id="option3" onclick="chooseOption(this)"><?php echo $data['op3']??''; ?></div>
          <div class="option" id="option4" onclick="chooseOption(this)"><?php echo $data['op4']??''; ?></div>
        </div>

        <?php
      $sn++;}}else{ ?> 
       <?php echo $fetchData; ?>
       <?php
    }?>
        <div class="buttons">
          <button class="button" id="previous" onclick="previousQuestion(-1);">Previous</button>
          <button class="button" id="next" onclick="nextQuestion(+1);">Next</button>
        </div>
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
    <button class="submit">Submit</button>
    
    <script src="index.js"></script>
</body>
</html>