<?php
//Get file by name
$file= "alex.txt";
//Get the contents of alex.txt and place in a variable
$current = file_get_contents($file);
//Add some more text to file
$current .= "this is a new line" .PHP_EOL;
file_put_contents($file, $current);
?>