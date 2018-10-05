-- Khởi tạo danh mục khuyến mại
call p_ch_dm_khuyenmai_find_all();
call p_ch_dm_khuyenmai_save(
	null,
	'KM001',
	'Khuyến mãi tặng bao da chống xước',
	'Khuyến mãi tặng bao da chống xước',
	2);

call p_ch_dm_khuyenmai_save(
	null,
	'KM002',
	'Khuyến mại giảm giá 10% phụ kiện',
	'',
	1);
	
call p_ch_dm_khuyenmai_save(
	null,
	'KM003',
	'Khuyến mại miếng dán màn hình',
	'',
	1);	

call p_ch_dm_khuyenmai_save(
	null,
	'KM004',
	'Khuyến mại gậy chụp ảnh tự sướng',
	'',
	1);	

call p_ch_dm_khuyenmai_save(
	null,
	'KM005',
	'Khuyến mại giảm giá 5% khi thanh toán qua thẻ Vietcombank',
	'',
	1);

	

