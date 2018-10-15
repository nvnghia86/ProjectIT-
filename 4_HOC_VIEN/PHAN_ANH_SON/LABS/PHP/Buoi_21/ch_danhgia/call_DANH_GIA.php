<?php
echo "<h3>Gọi các phương thức</h3>";
require('DANH_GIA.php');
$DanhGia = new DANH_GIA();

echo "Gọi phương thức FindAll()";
$rs = $DanhGia->FindAll();
print('<pre>');
print_r($rs);

echo "Gọi phương thức FindKey(9)";
$rs = $DanhGia->FindKey('d');
print('<pre>');
print_r($rs);


echo "Gọi phương thức Save()";
	$DanhGia->Id_DanhGia=0;
	$DanhGia->Diem=8;
	$DanhGia->Id_SanPham=8;
	$DanhGia->Id_KhanhHang=8;
$rs = $DanhGia->Save();
print('<pre>');
print_r($rs);

echo "Gọi phương thức Del(5)";
$DanhGia->Id_DanhGia=5;
$rs = $DanhGia->Del();
print('<pre>');
print_r($rs);

echo "Gọi phương thức GetById(7)";
$DanhGia->Id_DanhGia=7;
$rs = $DanhGia->GetById();
print('<pre>');
print_r($rs);
?>