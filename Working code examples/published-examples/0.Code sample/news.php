<?php include "header.php"; ?> 
	
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
$sql = "SELECT id, title, content FROM news WHERE id = $id";
$result = mysqli_query($conn, $sql);


?>

<div class="container news">

<?php
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) { ?>
	
		<img src="https://placeimg.com/750/150/any" class="img-fluid" alt="Responsive image">
	
		<div class="jumbotron">
		  <h1 class="display-4"><?php echo $row["title"] ?></h1>
		  <hr class="my-4">
		  <p><?php echo $row["content"] ?></p>
		</div>

<?php
}
} else {
echo "0 results";
}
$conn->close();
?> 
</div>	
	

<?php include "footer.php"; ?> 