-- Khóa chính và khóa ngoại
-- Tạo bảng tb_hocvien
CREATE TABLE tb_hocvien(
	id_hocvien INT(10),
	ho_ten VARCHAR(200),
	ngay_sinh DATE,
	dia_chi VARCHAR(300),
	id_lophoc INT
);

-- Tạo khóa ngoài
ALTER TABLE tb_hocvien
ADD CONSTRAINT fk_hocvien FOREIGN KEY(id_lophoc) REFERENCES tb_lophoc(id_lophoc)