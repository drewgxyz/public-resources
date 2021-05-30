<?php include "../header.php"; ?>

	<a href="addnews.php">Add News</a>
	
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
$sql = "SELECT id, title, content FROM news";
$result = mysqli_query($conn, $sql);


?>

<div class="container">

<?php
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) { ?>
		
		<div class="card">
			<div class="card-body">
			<h5 class="card-title"><?php echo $row["title"] ?></h5>
			<a href="deletenews.php?id=<?php echo $row["id"] ?>" class="btn btn-primary">Delete</a>
			</div>
		</div>

<?php
}
} else {
echo "0 results";
}
$conn->close();
?> 
</div>	
	
	
	
	
	
<?php include "../footer.php"; ?>

