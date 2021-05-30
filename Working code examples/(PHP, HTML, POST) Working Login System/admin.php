<?php
//Start a new session so that we can access the session variables and check if the user has logged in
session_start();
//Check to see if the session login variable exists and holds the value true. Else, just send the user back to the login page
if ($_SESSION["login"] === "true")
	
	{
		echo "You are now logged in, nice one! <br>";

	} else {
		
        //You need to change this to your own home direction
		header("Location: http://localhost/");
		
	}
	
?>

<a href="logout.php">Logout</a>