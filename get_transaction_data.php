<?php


$DB_HOST = 'localhost';
$DB_NAME = 'dd';
$DB_USER = 'root';
$DB_PASS = '';

// Create connection
$conn = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

$challan_id = $_POST['challan_id'];

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql1 = "SELECT * FROM transactions WHERE challan_id='$challan_id' AND status = '0'";
$result = $conn->query($sql1);
$rowcount=mysqli_num_rows($result);

if ($rowcount > 0) {
	while($row = mysqli_fetch_assoc($result))
    $test[] = $row; 
	echo json_encode($test);
}
else
{
	echo "success";
}

$conn->close();

?>