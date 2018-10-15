<?php
echo "<h2>Test đối tượng TEST_ch_sanpham</h2>";

require('SAN_PHAM.php');

/*Khởi tạo đối tượng Học viên*/
$SanPham = new SAN_PHAM();
echo "<h3>Gọi phương thức FindAll()</h3>";
$rs = $SanPham->FindAll();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức FindKey('sp')</h3>";
$rs = $SanPham->FindKey('sp');
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Save()</h3>";
	$SanPham->Id_SanPham=0;
	$SanPham->Ma=124;
	$SanPham->Ten='đasadadd';
	$SanPham->Gia_Ban=43.43;
	$SanPham->Gia_Nhap=4324.4;
	$SanPham->GioiThieu = 'đâsdasdasd';
	$SanPham->Id_Dm_SanPham=4;
	$SanPham->Id_Dm_BaoHanh=4;
	$SanPham->Id_Dm_DoiTra=4;
	$SanPham->Id_Dm_GiaoHang=9;
	$SanPham->Id_Dm_TraGop=4;
	$SanPham->Id_Dm_HangSanXuat=9;
	$SanPham->TrangThai=1;
$rs = $SanPham->Save();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Del(60)</h3>";
$SanPham->Id_SanPham=60;
$rs = $SanPham->Del();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức GetById(35)</h3>";
$SanPham->Id_SanPham=35;
$rs = $SanPham->GetById();
print('<pre>');
print_r($rs);

?>