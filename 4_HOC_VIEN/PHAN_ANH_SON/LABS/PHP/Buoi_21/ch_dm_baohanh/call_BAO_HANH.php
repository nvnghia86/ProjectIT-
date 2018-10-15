<?php
echo "<h2>Gọi các phương thức</h2>";
require('BAO_HANH.php');
$BaoHanh = new BAO_HANH();

echo "<h3>Gọi phương thức FindAll()</h3>";
$rs = $BaoHanh->FindAll();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức FindKey('12 thang')</h3>";
$rs = $BaoHanh->FindKey('12 thang');
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức GetById(4)</h3>";
$BaoHanh->Id_Dm_BaoHanh=4;
$rs = $BaoHanh->GetById();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Save()</h3>";
	$BaoHanh->Id_Dm_BaoHanh = 0;
	$BaoHanh->Ten = 'Bảo hành hàng mới';
	$BaoHanh->MoTa = 'Bảo hành 1 đổi 1';
	$BaoHanh->TrangThai=1;
$rs = $BaoHanh->Save();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Del(3)</h3>";
$BaoHanh->Id_Dm_BaoHanh=3;
$rs = $BaoHanh->Del();
print('<pre>');
print_r($rs);
?>