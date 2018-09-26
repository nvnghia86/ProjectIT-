 <h2>Biến $_COOKIE</h2>
 <?php
 $taikhoan = 'ADMIN';
 $token = 'ÂFASAAASFASFASFAFASFAFAS';
 setcookie('TAI_KHOAN',$taikhoan, time()+ 60*2,'/');
 setcookie('TOKEN', $token, time()+60*2,'/');
 echo "Xin chào: ".$_COOKIE['TAI_KHOAN'].'!';
 
 ?>