<?php
echo "<h2>Gọi các phương thức</h2>";
require('DOI_TRA.php');
$DoiTra = new DOI_TRA();

echo "Gọi phương thức FindAll()";
$rs = $DoiTra->FindAll();
print('<pre>');
print_r($rs);

echo "Gọi phương thức FindKey('loi')";
$rs = $DoiTra->FindKey('loi');
print('<pre>');
print_r($rs);

echo "Gọi phương thức GetById(4)";
$DoiTra->Id_Dm_DoiTra = 4;
$rs = $DoiTra->GetById();
print('<pre>');
print_r($rs);

echo "Gọi phương thức Save()";
$DoiTra->Id_Dm_DoiTra = 0;
$DoiTra->Ten = 'Đổi hàng lỗi';
$DoiTra->MoTa = '1 đổi 1';
$DoiTra->TrangThai = 1;
$rs = $DoiTra->Save();
print('<pre>');
print_r($rs);

echo "Gọi phương thức Del()";
$DoiTra->Id_Dm_DoiTra = 5;
$rs = $DoiTra->Del();
print('<pre>');
print_r($rs);
?>