
<!DOCTYPE html>
<html>
    <head>
        <title>Đăng nhập</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <script>
        function kiemtra ( )
            {
                if ( document.flogin.taikhoan.value=="")
            {
                alert( "Tài khoản không được để trống");
                document.flogin.taikhoan.focus();
                return false;
            }
                if ( document.flogin.matkhau.value=="")
            {
                alert( "Mật khẩu không được để trống");
                document.flogin.matkhau.focus();
                return false;
            }
               return true;
            }
        function clear()
        {

            taikhoan.clear();
            matkhau.clear();
        }
        </script>
        <h1>Đăng nhập</h1>
        <form method="post" name="flogin" action="Login.php?goto="onsubmit="return kiemtra()">
            <table border="1">
                <tr>
                   <td align="center" width="800" colspan="3">Thông tin đăng nhập của khách hàng</td> 
                </tr>
                <tr >
                    <td rowspan="4">
                        <img src="20170701_162151000_iOS.jpg" width="200"  alt="">
                    </td>
                    <td>Tài khoản:</td>
                    <td><input type="text" name="taikhoan" id="taikhoan"></td>
    
                </tr>
                <tr>
                    <td>Mật khẩu:</td>
                    <td><input type="password" name="matkhau" id="matkhau"></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="checkbox" name="remember" >Ghi nhớ</td>
                </tr>
                 <tr>
                  
                    <td><input type="submit" value="Đăng nhập"></td>
                    <td><input type="reset" value="Nhập lại"></td>
                </tr>
            </table>
        </form>
    </body>
</html>