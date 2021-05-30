<?php


/**PHASE-1:
Connect to database and run SQL to check users details
**/


//Change this to where your ROOT directory is. This is where you are storing these files
$HOMEURL = "http://localhost/";

//Collect post data into variables
$email = $_POST['email'];
$pwd = $_POST['password'];

//Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "login";

//Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

//SQL to insert data into database
$sql = "SELECT * FROM users where email='$email' and password='$pwd'";
//Run the query and store the results in the variable $result
$result = mysqli_query($conn, $sql);


/**PHASE-2:
Count the results from database, if 0 then user not used correct login details, if results is 1 then the user has typed the login details in correctly.
**/


//Check if data has been successfully inserted else show error (referential integrity errors or other insert annomolies).
if (mysqli_num_rows($result) > 0) {
	
    //Start a new Session
    session_start();
    //Create a new session variable so that we can check for it on the login page
    $_SESSION["login"] = "true";
    
    //Send the user to the admin page
    header("Location: $HOMEURL/admin.php");

} 
//If not typed in correct login details in send user back to the index.php page
else {
    header("Location: $HOMEURL");
}

?>