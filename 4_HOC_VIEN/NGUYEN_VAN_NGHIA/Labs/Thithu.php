
<html>
<head>
	<title>Giải phương trình bậc hai</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<?php 
	function Tinh($SoDien){
		if($SoDien<0)
		{
			$tien = "Số điện nhập vào phải dương và không được bỏ trống!!!";
		}
		else if($SoDien < 100)
		{
			$tien = $SoDien * 2500;
		}
		else if($SoDien<200)
		{
			$tien = 100*2500 + ($SoDien-100)*3500;
		}
		else if($SoDien<500)
		{
			$tien = 100*2500 + 100*3500 + ($SoDien-200)*5500;
		}
		else{
			$tien = 100*2500 + 100*3500 + 300*5500 + ($SoDien-500)*11000;
		}
		return $tien;
	}
	if(isset($_POST["SoDien"]))
	{
		$SoDien = $_POST["SoDien"];
		$kq = Tinh($SoDien);
	}
	?>

	<form action="Thithu.php" id="form" method="POST">
		<table border="1">
			<tr>
				<td>Nhập số KW điện: </td>
				<td><input type="text"><? echo $_POST["SoDien"]; ?></td>
			</tr>
			<tr>
				<td>0KW - 100KW</td>
				<td>2.500đ/KW</td>
			</tr>
			<tr>
				<td>101KW - 200KW</td>
				<td>100KW giá 2.500đ/KW<br>
					còn lại giá 3.500đ/KW
				</td>
			</tr>
			<tr>
				<td>201KW - 500KW</td>
				<td></td>
			</tr>
			<tr>
				<td>Trên 500KW</td>
				<td></td>
			</tr>
			<tr>
				<td><input type="submit" name="SoDien" value="Tính" /></td>
				<td><input type="text" ><? echo $tinh; ?></td>
			</tr>
		</table>
	</form>
</body>
</html>