<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Database</title>
  <link rel="stylesheet" href="style/admin.css">

</head>
<body>
  

<?php
include("dbconn/db.php");

$db= $conn;
$tableName="student_r1";
$columns= ['S_Name','E_id','C_Name','R1_Marks'];
$fetchData = fetch_data($db, $tableName, $columns);

function fetch_data($db, $tableName, $columns){
 if(empty($db)){
  $msg= "Database connection error";
 }elseif (empty($columns) || !is_array($columns)) {
  $msg="columns Name must be defined in an indexed array";
 }elseif(empty($tableName)){
   $msg= "Table Name is empty";
}else{

$columnName = implode(", ", $columns);
$query = "SELECT ".$columnName." FROM $tableName"." ORDER BY R1_Marks DESC";
$result = $db->query($query);

if($result== true){ 
 if ($result->num_rows > 0) {
    $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
    $msg= $row;
 } else {
    $msg= "No Data Found"; 
 }
}else{
  $msg= mysqli_error($db);
}
}
return $msg;
}
?>
<button ><a href="#r1" style="text-decoration: none;color:black;";>Round 1</a></button>
<button ><a href="#r2" style="text-decoration: none;color:black;";>Round 2</a></button>
<button ><a href="#r3" style="text-decoration: none;color:black;";>Round 3</a></button>
<button ><a href="#r4" style="text-decoration: none;color:black;";>Round 4</a></button>
<h1 id='r1'>Ode On Codes</h1>
      <table class="rwd-table" border="1">
       <thead><tr><th>S.N</th>

         <th>Name</th>
                  <th>Collage Name</th>
         <th>Marks</th>
    </thead>
    <tbody>
  <?php
      if(is_array($fetchData)){      
      $sn=1;
      foreach($fetchData as $data){
    ?>
      <tr>
      <td><?php echo $sn; ?></td>
      <td><?php echo $data['S_Name']??''; ?></td>
      
      <td><?php echo $data['C_Name']??''; ?></td>
      <td><?php echo $data['R1_Marks']??''; ?></td>
     </tr>
     <?php
      $sn++;}}else{ ?>
      <tr>
        <td colspan="8">
    <?php echo $fetchData; ?>
  </td>
    <tr>
    <?php
    }?>
    </tbody>
     </table>
</table>


<?php 
/*Second Round*/
$tableName="student_r2";
$columns= ['S_Name','E_id','C_Name','R2_Marks'];
$fetchData = fetch_data1($db, $tableName, $columns);


function fetch_data1($db, $tableName, $columns){
  if(empty($db)){
   $msg= "Database connection error";
  }elseif (empty($columns) || !is_array($columns)) {
   $msg="columns Name must be defined in an indexed array";
  }elseif(empty($tableName)){
    $msg= "Table Name is empty";
 }else{
 
 $columnName = implode(", ", $columns);
 $query = "SELECT ".$columnName." FROM $tableName"." ORDER BY R2_Marks DESC";
 $result = $db->query($query);
 
 if($result== true){ 
  if ($result->num_rows > 0) {
     $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
     $msg= $row;
  } else {
     $msg= "No Data Found"; 
  }
 }else{
   $msg= mysqli_error($db);
 }
 }
 return $msg;
 }

?>

<h1 id='r2'>Lexicographers</h1>
      <table class="rwd-table">
       <thead>
        <tr><th>S.N</th>
         <th>Name</th>
                  <th>Collage Name</th>
         <th>Marks</th>
    </thead>
    <tbody>
  <?php
      if(is_array($fetchData)){      
      $sn=1;
      foreach($fetchData as $data){
    ?>
      <tr>
      <td><?php echo $sn; ?></td>
      <td><?php echo $data['S_Name']??''; ?></td>
      
      <td><?php echo $data['C_Name']??''; ?></td>
      <td><?php echo $data['R2_Marks']??''; ?></td>
     </tr>
     <?php
      $sn++;}}else{ ?>
      <tr>
        <td colspan="8">
    <?php echo $fetchData; ?>
  </td>
    <tr>
    <?php
    }?>
    </tbody>
     </table>
</table>

<?php 
/*Third Round*/
$tableName="student_r3";
$columns= ['S_Name','E_id','C_Name','R3_Marks'];
$fetchData = fetch_data2($db, $tableName, $columns);


function fetch_data2($db, $tableName, $columns){
  if(empty($db)){
   $msg= "Database connection error";
  }elseif (empty($columns) || !is_array($columns)) {
   $msg="columns Name must be defined in an indexed array";
  }elseif(empty($tableName)){
    $msg= "Table Name is empty";
 }else{
 
 $columnName = implode(", ", $columns);
 $query = "SELECT ".$columnName." FROM $tableName"." ORDER BY R3_Marks DESC";
 $result = $db->query($query);
 
 if($result== true){ 
  if ($result->num_rows > 0) {
     $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
     $msg= $row;
  } else {
     $msg= "No Data Found"; 
  }
 }else{
   $msg= mysqli_error($db);
 }
 }
 return $msg;
 }
?>

<h1 id='r3'>Brainstormers</h1>
      <table class="rwd-table" border="1">
       <thead><tr><th>S.N</th>

         <th>Name</th>
                  <th>Collage Name</th>
         <th>Marks</th>
    </thead>
    <tbody>
  <?php
      if(is_array($fetchData)){      
      $sn=1;
      foreach($fetchData as $data){
    ?>
      <tr>
      <td><?php echo $sn; ?></td>
      <td><?php echo $data['S_Name']??''; ?></td>
      
      <td><?php echo $data['C_Name']??''; ?></td>
      <td><?php echo $data['R3_Marks']??''; ?></td>
     </tr>
     <?php
      $sn++;}}else{ ?>
      <tr>
        <td colspan="8">
    <?php echo $fetchData; ?>
  </td>
    <tr>
    <?php
    }?>
    </tbody>
     </table>
</table>


<?php 
/*Fourth Round*/
$tableName="student_r4";
$columns= ['S_Name','E_id','C_Name','R4_Marks'];
$fetchData = fetch_data3($db, $tableName, $columns);


function fetch_data3($db, $tableName, $columns){
  if(empty($db)){
   $msg= "Database connection error";
  }elseif (empty($columns) || !is_array($columns)) {
   $msg="columns Name must be defined in an indexed array";
  }elseif(empty($tableName)){
    $msg= "Table Name is empty";
 }else{
 
 $columnName = implode(", ", $columns);
 $query = "SELECT ".$columnName." FROM $tableName"." ORDER BY R4_Marks DESC";
 $result = $db->query($query);
 
 if($result== true){ 
  if ($result->num_rows > 0) {
     $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
     $msg= $row;
  } else {
     $msg= "No Data Found"; 
  }
 }else{
   $msg= mysqli_error($db);
 }
 }
 return $msg;
 }
?>
<h1 id='r4'>Adventors</h1>
      <table class="rwd-table" border="1">
       <thead><tr><th>S.N</th>

         <th>Name</th>
                  <th>Collage Name</th>
         <th>Marks</th>
    </thead>
    <tbody>
  <?php
      if(is_array($fetchData)){      
      $sn=1;
      foreach($fetchData as $data){
    ?>
      <tr>
      <td><?php echo $sn; ?></td>
      <td><?php echo $data['S_Name']??''; ?></td>
      
      <td><?php echo $data['C_Name']??''; ?></td>
      <td><?php echo $data['R4_Marks']??''; ?></td>
     </tr>
     <?php
      $sn++;}}else{ ?>
      <tr>
        <td colspan="8">
    <?php echo $fetchData; ?>
  </td>
    <tr>
    <?php
    }?>
    </tbody>
     </table>
</table>
</body>
</html>