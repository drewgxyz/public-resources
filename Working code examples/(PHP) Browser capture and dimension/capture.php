<html>
<body>
<script>
var screenw = screen.width;
var screenh = screen.height;
var windoww = window.innerWidth;
var windowh = window.innerHeight;

document.cookie = "screen-width=" + screenw;
document.cookie = "screen-height=" + screenh;
document.cookie = "window-width=" + windoww;
document.cookie = "window-height=" + windowh;
  
  
// Firefox 1.0+
var isFirefox = typeof InstallTrigger !== 'undefined';

// Safari 3.0+ "[object HTMLElementConstructor]" 
var isSafari = /constructor/i.test(window.HTMLElement) || (function (p) { return p.toString() === "[object SafariRemoteNotification]"; })(!window['safari'] || safari.pushNotification);

// Internet Explorer 6-11
var isIE = /*@cc_on!@*/false || !!document.documentMode;

// Edge 20+
 var isEdge = !isIE && !!window.StyleMedia;

// Chrome 1+
var isChrome = !!window.chrome && !!window.chrome.webstore;

// Blink engine detection
var isBlink = (isChrome || isOpera) && !!window.CSS;

if (isChrome === true) {
    document.cookie = "browser=Chrome";
}
  
</script>

  
  
  

<?php   
$screenw = $_COOKIE["screen-width"];
$screenh = $_COOKIE["screen-height"];
$windoww = $_COOKIE["window-width"];
$windowh = $_COOKIE["window-height"];
$browser = $_COOKIE["browser"];

echo "My screen width = " . $screenw . "<br>" ;
echo "My screen height = " . $screenh . "<br>";

echo "My window width = " . $windoww . "<br>" ;
echo "My window height = " . $windowh . "<br>";

echo "Browser = " . $browser . "<br>";

?>

</body>
</html>