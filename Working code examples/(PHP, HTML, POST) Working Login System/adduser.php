<?php

if($_SERVER['REQUEST_METHOD'] == 'POST') {
 
 	$email = $_POST["email"];
	$passwd = $_POST["passwd"];
	
    //Database configuration
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "php-simple-login";

    //Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO users (email, password)
	VALUES ('$email', '$passwd')";
    //Run the SQL Query
    $conn->query($sql);
    
?>	

	<a href="adduser.php">Add more items</a>

<?php
    exit();
    }
?>

<!doctype html>
<html lang="en">
<head>
<title>Add users</title>
</head>
<body>

    <form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
        <label for="emailAddress">Email Address</label><br>
        <input type="text" name="email" required><br>
                <label for="password">Password:</label><br>
        <input type="text" name="passwd" required>
        <input type="submit" value="Submit">
    </form>

</body>
</html>

