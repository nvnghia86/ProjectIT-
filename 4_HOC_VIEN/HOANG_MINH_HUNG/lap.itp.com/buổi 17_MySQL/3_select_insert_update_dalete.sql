-- các câu lệnh DML
-- 1. chon dữ liệu
SELECT
	 id_lophoc,
	 ma_lop,
	 ten_lop,
	 ngay_khai_giang
FROM tb_lophoc;

-- 2.thêm giòng và bảng
INSERT INTO tb_lophoc(
	 id_lophoc,
	 ma_lop,
	 ten_lop,
	 ngay_khai_giang
)values(
	5,
	'LT008',
	'lập trình',
	'2018-07-02'
)
-- 3. sửa dữ liệu
UPDATE tb_lophoc set ma_lop='KTK550',ngay_khai_giang='2018-03-03' where id_lophoc=5;

-- 4.Xóa dữ liệu
DELETE FROM tb_lophoc WHERE id_lophoc=5;