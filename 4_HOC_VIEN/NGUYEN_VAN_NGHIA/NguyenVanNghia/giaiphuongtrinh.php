<html>
<head>
	<title>Giải phương trình bậc 2</title>
	<meta charset="utf-8">
</head>
<body>
	<script  type="text/javascript" charset="utf-8" async defer>
	function kiemtra()
	{
		var text;
    	var a = document.getElementById('a').value;	
    	var b = document.getElementById('b').value;	
    	var c = document.getElementById('c').value;	
    	if (isNaN(a) || isNaN(c) || isNaN(c)) {
        	text = "Input not valid";
   		} else {
        	text = "Input OK";

    }
    document.getElementById("kiemtra").innerHTML = text;
	}
	</script>
		<form method="post" action="ketqua.php">
            <input type="text" style="width: 30px" name="a" id="a"  value=""/>x <sup>2</sup>
            +
            <input type="text" style="width: 30px" name="b" id="b" value=""/>x
            + 
            <input type="text" style="width: 30px" name="c" id="c" value=""/>
            = 0
            <br/><br/>
            <input type="submit" onclick="kiemtra()" name="tinh" value="Tính" />
        </form>
		<p id= "kiemtra"></p>
	</body>
</html>