<?php
echo "<h2>Test đối tượng TEST_HOCVIEN</h2>";

require('TEST_HOCVIEN.php');

/*Khởi tạo đối tượng Học viên*/
$HocVien = new TEST_HOCVIEN();
echo "<h3>Gọi phương thức FindAll()</h3>";
$rs = $HocVien->FindAll();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức FindKey('nghi')</h3>";
$rs = $HocVien->FindKey('nghi');
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Save()</h3>";
$HocVien->Id=0;
$HocVien->HoTen='Trần Quốc Tuấn';
$rs = $HocVien->Save();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Del()</h3>";
$HocVien->Id=10;
$rs = $HocVien->Del();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức GetById()</h3>";
$HocVien->Id=9;
$rs = $HocVien->GetById();
print('<pre>');
print_r($rs);

?>