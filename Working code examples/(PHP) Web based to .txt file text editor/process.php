<?php

$name = $_POST['firstname'];
$comment = $_POST['comment'];

$file= "alex.txt";
file_put_contents($file, $comment);

?>