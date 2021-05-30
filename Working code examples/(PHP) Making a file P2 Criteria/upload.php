<?php
$myfile = fopen("alex.txt", "w") or die("Unable to open file!");
$txt = "hello";
fwrite($myfile, $txt);
fclose($myfile);
?>