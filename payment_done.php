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

$sql1 = "UPDATE transactions SET status='1' WHERE challan_id='$challan_id'";
$result = $conn->query($sql1);

$conn->close();

?>