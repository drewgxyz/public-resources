<?php
$file= "alex.txt";
$current = file_get_contents($file);
?>

<form action="process.php" method="post">
  First name:<br>
  <input type="text" name="firstname" value=""><br>
  
	<textarea rows="4" cols="50" name="comment">
	<?php echo $current ?>
	</textarea>
  <input type="submit">
</form>