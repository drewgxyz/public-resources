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
$sql = "SELECT id, title, content FROM news";
$result = mysqli_query($conn, $sql);


?>

<div class="container">

<?php
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) { ?>
		
		<div class="card">
			<img src="https://via.placeholder.com/350x150" class="img-fluid" alt="Responsive image">
			<div class="card-body">
			<h5 class="card-title"><?php echo $row["title"] ?></h5>
			<a href="http://localhost/news.php?id=<?php echo $row["id"] ?>" class="btn btn-primary">Read</a>
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
	
<!---------------
Tracking System
---------------->





<?php
  $page_name = "Homepage";
?>

<?php
function visitor($record) {
	$db_host = "localhost";
	$db_username = "root"; 
	$db_password = "";
	$db_name = "cms";
	$db_table = "tracking";
	$counter_page = "access_page";
	$counter_field = "access_counter";

	$db = mysqli_connect ($db_host, $db_username, $db_password, $db_name) or die("Host or database not accessible");

	//Insert new record or update existing record
	$sql_call = "INSERT INTO ".$db_table." (".$counter_page.", ".$counter_field.") VALUES ('".$record."', 1) ON DUPLICATE KEY UPDATE ".$counter_field." = ".$counter_field." + 1"; 
	mysqli_query($db, $sql_call) or die("Error while entering");

	//Get page counter info
	$sql_call = "SELECT ".$counter_field. " FROM ".$db_table." WHERE ".$counter_page. " = '".$record. "'";
	$sql_result = mysqli_query($db, $sql_call) or die("SQL request failed ");
	$row = mysqli_fetch_assoc($sql_result);
	$x = $row[$counter_field];

	mysqli_close($db);
	return $x;
  }
?>	

<!---------------
User Stats
---------------->
<?php 
function get_browsers()
{
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
	
	//Get browser
    $browser = '';
    $ua = strtolower($_SERVER['HTTP_USER_AGENT']);
    if (preg_match('~(?:msie ?|trident.+?; ?rv: ?)(\d+)~', $ua, $matches)) $browser = 'ie ie'.$matches[1];
    elseif (preg_match('~(safari|chrome|firefox)~', $ua, $matches)) $browser = $matches[1];
	//
	//Get referer
	
	$referer = $_SERVER['HTTP_REFERER'];
	
	$sql = "INSERT INTO stats (browser, referer) VALUES ('$browser', '$referer')";
	mysqli_query($conn, $sql);
	
    return $browser;
}
echo get_browsers();

echo $_SERVER['HTTP_REFERER'];

?>

<?php
$access_number = visitor($page_name);
echo $access_number;
?>

<!---------------
End
---------------->

<?php include "footer.php"; ?>