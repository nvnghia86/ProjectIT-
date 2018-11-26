
<script>
	function check_so(){
	var a,b,c;
	
		a = document.forms["nhap_so"]["so-a"].value;
		b = document.forms["nhap_so"]["so-b"].value;
		c = document.forms["nhap_so"]["so-c"].value;
		
		if (isNaN(a)||a==""||isNaN(b)||b==""||isNaN(c)||c==""){
			
			alert("Điền đầy hoặc Nhập dữ liệu kiểu số vào");
			return false;
		}
	}
</script>
<html>
	<form name="nhap_so" action="ketqua.php" method="POST" onsubmit="return check_so()">
	<table border="solid black 1px">
		<tr>
			<td style="min-width:500px" colspan="8"> Giai pt bac 2</td>
		</tr>
			<td colspan="3">Nhập số a</td>
			<td colspan="5"><input type="text" name="so-a" size="30" placeholder="Nhập vào số a"></input></td>
		<tr>
			<td colspan="3">Nhập số b</td>
			<td colspan="5"><input type="text" name="so-b" size="30" placeholder="Nhập vào số b"></input></td>
		</tr>
		<tr>
			<td colspan="3">Nhập số c</td>
			<td colspan="5"><input type="text" name="so-c" size="30" placeholder="Nhập vào số c"></input></td>
		</tr>
		<tr>
			<td colspan="3"><input type="submit" name="tinhtoan-btn" value="Tính toán"/></td>
		</tr>	
		<tr>
	</table>
	</form>
</html>