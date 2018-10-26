<?php
echo "<h2>Test đối tượng ch_dm_tragop.php</h2>";

require('ch_dm_tragop.php');

/*Khởi tạo đối tượng Học viên*/
$Tragop = new ch_dm_tragop();
echo "<h3>Gọi phương thức FindAll()</h3>";
$rs = $Tragop->FindAll();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức FindKey()</h3>";
$rs = $Tragop->FindKey('0');
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Save()</h3>";
$Tragop->Id=0;
$Tragop->Ten='trả góp 0%';
$Tragop->Ten='trả góp 5%';
$Tragop->Ten='trả góp 10%';
$Tragop->Ten='trả góp 15%';
$Tragop->Ten='trả góp 20%';

$rs = $Tragop->Save();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức Del()</h3>";
$Tragop->Id=7;
$rs = $Tragop->Del();
print('<pre>');
print_r($rs);

echo "<h3>Gọi phương thức GetById()</h3>";
$Tragop->Id=6;
$rs = $Tragop->GetById();
print('<pre>');
print_r($rs);

?>