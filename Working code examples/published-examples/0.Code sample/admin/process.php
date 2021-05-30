<?php

$HOMEURL = "http://localhost";

$email = $_POST['email'];
$pwd = $_POST['password'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "php-simple-login";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM users where email='$email' and password='$pwd'";

$result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) {
		
		session_start();
		$_SESSION["login"] = "true";
		
		header("Location: $HOMEURL/addnews.php");

	} 

else {
    header("Location: $HOMEURL");
}

?>