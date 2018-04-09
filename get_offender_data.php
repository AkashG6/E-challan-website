<?php


$DB_HOST = 'localhost';
$DB_NAME = 'dd';
$DB_USER = 'root';
$DB_PASS = '';

// Create connection
$conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

$user = $_POST['user'];

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql1 = "SELECT * FROM offenders WHERE aadhar='$user'";
$result = $conn->query($sql1);

while($row = mysqli_fetch_assoc($result))
    $test[] = $row; 
echo json_encode($test);

$conn->close();

?>