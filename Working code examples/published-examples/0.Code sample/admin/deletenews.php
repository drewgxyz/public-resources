<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cms";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$id = intval($_GET['id']);
$sql = "DELETE FROM news WHERE id = $id";
$result = mysqli_query($conn, $sql);
header("Location: http://localhost/admin");
?>
