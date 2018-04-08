<?php

$DB_HOST = 'localhost';
$DB_NAME = 'dd';
$DB_USER = 'root';
$DB_PASS = '';

$username = $_POST['username'];
$password = $_POST['password'];

// Create connection
$conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql1 = "SELECT * FROM officers WHERE user_id='$username' AND pass = '$password'";
$result = $conn->query($sql1);
if ($result->num_rows > 0) {
	header('Location: officers.html'); 
} 
else {
   	$sql2 = "SELECT * FROM offenders WHERE aadhar='$username' AND contact = '$password'";
	$result2 = $conn->query($sql2);
	if ($result2->num_rows > 0) {
		header('Location: offenders.html'); 
	} else {
		header('Location: login_error.html'); 
	}
}


$conn->close();

?>