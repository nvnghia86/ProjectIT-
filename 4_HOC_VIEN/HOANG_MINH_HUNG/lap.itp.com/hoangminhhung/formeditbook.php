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
				<th colspan="3"> Form edit book </th>
			</tr>

			
			
			<tr>
				<td> ID: </td>
				<td> <input type="text" name="id" id="id"> </td>
			</tr>
			<tr>
			<tr>
				<td> Title: </td>
				<td> <input type="text" name="title" id="title"> </td>
			</tr>
				<td> Price: </td>
				<td> <input type="text" name="price" id="price"> </td>
			</tr>
			<tr>
				<td> Author: </td>
				<td> <input type="text" name="author" id="author"> </td>
			</tr>
			

			<tr>
				<td><input type="submit" name="dangnhap" value="Updatate book" onclick="return check();"> </td>
				<td> <input type="submit" name="nhaplai" value="Reset"> </td>
			</tr>
		
	</form>
	</table>


</body>
</html>

 <?php
        if(isset($_POST['dangnhap'])) {
            $id = $_POST['id'];
            $title = $_POST['title'];
			$price = $_POST['price'];
			$author = $_POST['author'];
            if ($id == 'admin' && $password == 'admin') {
                if (isset($_SESSION['name'])) {
                    echo '"Xin chào,Admin"' . "<br>";
                    echo "Tên đăng nhập là :" . $_SESSION['name'];
                    if (isset($_POST['remember'])) {
                        setcookie('id', $id, time() + 7200, "/", '', 0, 0);
						setcookie('title', $title, time() + 7200, "/", '', 0, 0);
						setcookie('price', $price, time() + 7200, "/", '', 0, 0);
						setcookie('author', $author, time() + 7200, "/", '', 0, 0);
                        
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
