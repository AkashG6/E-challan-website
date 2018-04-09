<?php


$DB_HOST = 'localhost';
$DB_NAME = 'dd';
$DB_USER = 'root';
$DB_PASS = '';

// Create connection
$conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

$name = $_POST['name'];
$user_id = $_POST['user_id'];
$division = $_POST['division'];
$challan_id = $_POST['challan_id'];
$aadhar = $_POST['aadhar'];
$contact = $_POST['contact'];
$age = $_POST['age'];
$offense = $_POST['offense'];
$lno = $_POST['lno'];
$vno = $_POST['vno'];
$loc = $_POST['loc'];
$fine = $_POST['fine'];

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql1 = "INSERT INTO offenders (aadhar,age,contact,challan_id,license_no,vehicle_no,offense_location) VALUES ('$aadhar',$age,$contact,$challan_id,$lno,$vno,$loc)";
$result = $conn->query($sql1);


$sql2 = "INSERT INTO transactions (challan_id,issued_by,amount,license_no,status)  VALUES ($challan_id,$user_id,$fine,$lno,0)";
$result = $conn->query($sql2);


$conn->close();

?>