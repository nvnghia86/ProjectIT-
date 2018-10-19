-- Các câu lệnh DML
-- 1. Chọn dữ liệu
SELECT
	id_lophoc,
	ma_lop,
	ten_lop,
	ngay_khai_giang
	FROM tb_lophoc;
	
	-- 2. Thêm dòng vào bảng
	INSERT INTO tb_lophoc(
		id_lophoc,
		ma_lop,
		ten_lop,
		ngay_khai_giang
	)VALUES(
	1,
	'PHP0718E',
	'Lớp PHP Cơ bản - Nâng cao',
	'2018-07-01'
	)
	
		INSERT INTO tb_lophoc(
		id_lophoc,
		ma_lop,
		ten_lop,
		ngay_khai_giang
	)VALUES(
	2,
	'ASP0818E',
	'Lập trình ASP.NET Cơ bản - Nâng cao',
	'2018-08-01'
	)
	
		INSERT INTO tb_lophoc(
		id_lophoc,
		ma_lop,
		ten_lop,
		ngay_khai_giang
	)VALUES(
	3,
	'ANDROID0918E',
	'Lớp Android Cơ bản - Nâng cao',
	'2018-09-01'
	)
	
		INSERT INTO tb_lophoc(
		id_lophoc,
		ma_lop,
		ten_lop,
		ngay_khai_giang
	)VALUES(
	4,
	'JAVA1018E',
	'Lớp JAVA Cơ bản - Nâng cao',
	'2018-10-01'
	)
	
		INSERT INTO tb_lophoc(
		id_lophoc,
		ma_lop,
		ten_lop,
		ngay_khai_giang
	)VALUES(
	5,
	'C++1118E',
	'Lớp C++ Cơ bản - Nâng cao',
	'2018-11-01'
	)
	
	-- 3. Sửa dữ liệu trên dòng
	UPDATE tb_lophoc SET ma_lop='ANDROID0918', ngay_khai_giang='2018-09-01' WHERE id_lophoc=3;
	
	-- 4. Xóa dữ liệu
	DELETE FROM tb_lophoc WHERE id_lophoc=3;