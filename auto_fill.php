<?php


$DB_HOST = 'localhost';
$DB_NAME = 'dd';
$DB_USER = 'root';
$DB_PASS = '';

// Create connection
$conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$username = $_POST['user'];
$sql1 = "SELECT * FROM officers WHERE user_id='$username'";
$result = $conn->query($sql1);
if ($result->num_rows > 0) {
	while ($row = $result->fetch_assoc()) {
        $test[] = $row; 
    }
	echo json_encode($test);
}

$conn->close();

?>