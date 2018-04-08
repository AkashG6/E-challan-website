<?php
$DB_HOST = 'localhost';
$DB_NAME = 'dd';
$DB_USER = 'root';
$DB_PASS = '';
$conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql1 = "SELECT * FROM penalties";
$result = $conn->query($sql1);
while($row = mysqli_fetch_assoc($result))
    $test[] = $row; 
echo json_encode($test);
$conn->close();

?>