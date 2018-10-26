<?php 
echo "<h2>Test đối tượng TEST_HOCVIEN</h2>";
require('TEST_HOCVIEN.php');

/*Khởi tạo đối tượng*/
$HocVien = new TEST_HOCVIEN();
echo "<h3>Gọi phương thức save()</h3>";
$HocVien->Id=0;
$HocVien->HoTen='Trần Văn Ích';
$rs = $HocVien->Save();
print('<pre>');
print_r($rs);
 ?>