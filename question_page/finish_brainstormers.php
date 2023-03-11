<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100;1,100&display=swap" rel="stylesheet">
    <title>Finished</title>
    <style>
        body{
            background-image: url('../images/ty.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            background-position: center ;
            font-family: 'Raleway', sans-serif;
            color: white;
        }
        h1{
            font-size: 60px;
            margin:35% auto auto;
            text-align: center;
            color: white;
        }
        h3{color:white;text-align: center;}
        p{text-align:center;}
        #ok{
            position: fixed;
            left: 36%;
            top : 15%;
        }
    </style>
</head>
<body>
    <img id = 'ok' src="../images/ok.gif" alt="ok" width = 225px height = 225PX>
    <h1>Thank You</h1>
    <h3>Your Response is Submitted.</h3>
    <?php
    include("../dbconn/db.php");
    sleep(1);
    $name=$_COOKIE["name"];
    $cname=$_COOKIE["cname"];
    $email=$_COOKIE["email"];
    $marks=$_COOKIE["marks"];
    $ttime=$_COOKIE["t_time"];
    $stime=$_COOKIE["sub_time"];
    $sql = "INSERT INTO  student_r3 (`S_Name`, `E_id`, `C_Name`, `R3_Marks`, `t_time`, `sub_time`) VALUES ('$name', '$email', '$cname','$marks','$ttime','$stime')";

if ($conn->query($sql) === TRUE) {
  echo "<p>New record created successfully</p>";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
    ?>
</body>
</html>