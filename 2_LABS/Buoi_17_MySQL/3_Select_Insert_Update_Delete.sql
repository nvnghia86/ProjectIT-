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
	3,
	'ANDROI0918',
	'Lớp lập trình Mobile Android',
	'2018-09-01'
);

-- 3. Sửa dữ liệu trên dòng
UPDATE tb_lophoc SET 
ma_lop='ANDROID1018', 
ngay_khai_giang='2018-10-01'
WHERE id_lophoc=3;

-- 4. Xóa dữ liệu
DELETE FROM tb_lophoc WHERE id_lophoc=3;




