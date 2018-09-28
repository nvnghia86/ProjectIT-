-- Tạo bảng mới
CREATE TABLE tb_lophoc(
	id_lophoc INT(10) PRIMARY KEY,
	ma_lop VARCHAR(50),
	ten_lop	VARCHAR(200),
	ngay_khai_giang DATE
);

-- Xóa bảng
DROP TABLE tb_lophoc;

-- Sửa bảng
-- Thêm cột
ALTER TABLE tb_lophoc ADD COLUMN giao_vien VARCHAR(200);

-- Sửa cột
ALTER TABLE tb_lophoc MODIFY COLUMN giao_vien VARCHAR(100);

-- Xóa cột
ALTER TABLE tb_lophoc DROP COLUMN giao_vien;




