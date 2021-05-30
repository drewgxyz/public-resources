<!doctype html>
<html>
<body>
	<div id="wrap">
		<div class="browser">
			</div>
			<div class="window">
				<a id="width" href="javascript:;" ></a>
				<a id="height" href="javascript:;"></a>
			</div>
		</div>

	<script>function browser(){var a=Math.max(document.documentElement.clientWidth,window.innerWidth||0)+"px",b=Math.max(document.documentElement.clientHeight,window.innerHeight||0)+"px",c=document.getElementById("width"),d=document.getElementById("height");c.innerHTML=a,d.innerHTML=b}document.addEventListener("DOMContentLoaded",function(){browser()}),window.onresize=function(){browser()};function browser(){var e=Math.max(document.documentElement.clientWidth,window.innerWidth||0)+"px",n=Math.max(document.documentElement.clientHeight,window.innerHeight||0)+"px",t=document.getElementById("width"),o=document.getElementById("height");t.innerHTML=e,o.innerHTML=n}function selectText(e){var n,t,o=document,d=o.getElementById(e);o.body.createTextRange?(n=o.body.createTextRange(),n.moveToElementText(d),n.select()):window.getSelection&&(t=window.getSelection(),n=o.createRange(),n.selectNodeContents(d),t.removeAllRanges(),t.addRange(n))}document.addEventListener("DOMContentLoaded",function(){browser()}),window.onresize=function(){browser()};</script>
	<script>
</body>
</html>
