 <?php
 echo "<h2>Đối tượng khách hàng</h2>";
 require('KHACH_HANG.php');
 $KhachHang = new KHACH_HANG();
 
 
 echo "<h3>Gọi phương thức FindAll</h3>";
 $rs = $KhachHang->FindAll();
 print('<pre>');
 print_r($rs);
 
 echo "<h3>Gọi phương thức FindKey('ngoc')</h3>";
 $rs = $KhachHang->FindKey('ngoc');
 print('<pre>');
 print_r($rs);
 
 
  echo "<h3>Gọi phương thức Save</h3>";
	$KhachHang->Id_KhachHang = 0;
	$KhachHang->HoTen = 'Phan Anh Sơn';
	$KhachHang->Email = 'phananhson24@gmail.com';
	$KhachHang->SoDienThoai = '4124124';
	$KhachHang->MatKhau = '43242';
	$KhachHang->TrangThai = 1;
 $rs = $KhachHang->Save();
 print('<pre>');
 print_r($rs);
 
 
  echo "<h3>Gọi phương thức Del(21)</h3>";
 $KhachHang->Id_KhachHang =21;
 $rs = $KhachHang->Del();
 print('<pre>');
 print_r($rs);
 
   echo "<h3>Gọi phương thức GetById(3)</h3>";
 $KhachHang->Id_KhachHang = 3;
 $rs = $KhachHang->GetById();
 print('<pre>');
 print_r($rs);
 ?>