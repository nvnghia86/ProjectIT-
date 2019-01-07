<html>
<head>
	<title> Đăng nhập  </title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript">
    function check() {
        var tk = document.getElementById('username').value;
        var mk = document.getElementById('password').value;
        if(tk==''){
            alert("Không được bỏ trống");
            return false;
        }
        if(mk ==''){
            alert("Không được bỏ trống");
            return false;
        }
    }

</script>
</head>
<body>
	<table >
	<form action="login.php" method="POST">
		
			
			<tr>
				<th colspan="3"> Login </th>
			</tr>

			
			
			<tr>
				<td> Username: </td>
				<td> <input type="text" name="username" id="username"> </td>
			</tr>
			<tr>
				<td> Password : </td>
				<td> <input type="password" name="password" id="password"> </td>
			</tr>

			<tr>
				<td><input type="submit" name="dangnhap" value="Login" onclick="return check();"> </td>
				<td> <input type="submit" name="nhaplai" value="Reset"> </td>
			</tr>
		
	</form>
	</table>


</body>
</html>

 <?php
        if(isset($_POST['dangnhap'])) {
            $username = $_POST['username'];
            $password = $_POST['passwordd'];
            if ($username == 'admin' && $password == 'admin') {
                if (isset($_SESSION['name'])) {
                    echo '"Xin chào,Admin"' . "<br>";
                    echo "Tên đăng nhập là :" . $_SESSION['name'];
                    if (isset($_POST['remember'])) {
                        setcookie('user', $username, time() + 7200, "/", '', 0, 0);
                        setcookie('pass', $password, time() + 7200, "/", '', 0, 0);
                    }
                }
            }else{
                echo "Đăng nhập không thành công";
            }
    }
    ?>

    <?php session_start();
    if(isset($_POST['submit'])){
        $_SESSION['name'] = $_POST['dangnhap'];
    }
?>
