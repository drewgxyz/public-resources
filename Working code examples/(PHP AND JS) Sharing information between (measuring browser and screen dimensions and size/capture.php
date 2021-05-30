<html>
<body>

<?php 
$screenw = $_COOKIE["screen-width"];
$screenh = $_COOKIE["screen-height"];
echo "My screen width = " . $screenw . "<br>" ;
echo "My screen height = " . $screenh ;
?>

<script>
var screenw = screen.width;
var screenh = screen.height;

document.cookie = "screen-width=" + screenw;
document.cookie = "screen-height=" + screenh;
</script>



</body>
</html>