<?php
	echo "<h2>Test doi tuong hoc vien</h2>";
	require('TEST_HOCVIEN.php');
	
	$HocVien = new TEST_HOCVIEN();
	echo "<h3>Gọi bằng phương thức FindAll()</h3>";
	$rs=$HocVien->FindAll();
	print('<pre>');
	print_r($rs);
	
	echo "<h3>Gọi bằng phương thức FindKey('nghi')</h3>";
	$rs = $HocVien->FindKey('nghi');
	print('<pre>');
	print_r($rs);
	
	echo "<h3>Gọi bằng phương thức Save()</h3>";
	$HocVien->Id=0;
	$HocVien->HoTen='Nguyễn Bá Cường';
	$rs = $HocVien->Save();
	print('<pre>');
	print_r($rs);
	
	echo "<h3>Gọi bằng phương thức Del()</h3>";
	$HocVien->Id=10;
	$rs = $HocVien->Del();
	print('<pre>');
	print_r($rs);
	
	echo "<h3>Gọi bằng phương thức GetById()</h3>";
	$HocVien->Id=9;
	$rs = $HocVien->GetById();
	print('<pre>');
	print_r($rs);
?>