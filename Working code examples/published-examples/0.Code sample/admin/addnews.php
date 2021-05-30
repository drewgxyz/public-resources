<?php include "../header.php"; ?>

<?php

if($_SERVER['REQUEST_METHOD'] == 'POST') {
 
 	$title = $_POST["title"];
	$content = $_POST["content"];
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "cms";

    $conn = mysqli_connect($servername, $username, $password, $dbname);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO news (title, content)
	VALUES ('$title', '$content')";
    $conn->query($sql);
    
?>	

	<a href="addnews.php">Add more news</a><br>
	<a href="index.php">Home</a>
	
<?php
    exit();
    }
?>

    <form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
        <label for="Title">Title</label><br>
        <input type="text" name="title" required><br>
        <label for="content">Content:</label><br>
		<textarea rows="4" cols="50" name="content" required></textarea>
        <input type="submit" value="Submit">
    </form>
	
	<br>

<?php include "../footer.php"; ?>

