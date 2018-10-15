<?php
echo "<h2>Test đối tượng TEST_ch_sanpham</h2>";

require('TEST_ch_sanpham.php');

/*Khởi tạo đối tượng Học viên*/
$sanpham = new TEST_CH_SANPHAM();
echo "<h3>Gọi phương thức FindAll()</h3>";
$rs = $sanpham->FindAll();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức FindKey('S')</h3>";
$rs = $sanpham->FindKey('nghi');
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Save()</h3>";
$sanpham->Id=0;
$sanpham->ma='Motorola X';
$rs = $sanpham->Save();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Del()</h3>";
$sanpham->Id=10;
$rs = $sanpham->Del();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức GetById()</h3>";
$sanpham->Id=9;
$rs = $sanpham->GetById();
print('<pre>');
print_r($rs);

?>