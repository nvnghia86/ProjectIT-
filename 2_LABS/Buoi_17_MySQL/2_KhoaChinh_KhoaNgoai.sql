-- Khóa chính (PK) và khóa ngoại (FK)
-- Tạo bảng tb_hocvien
CREATE TABLE tb_hocvien(
	id_hocvien INT(10) PRIMARY KEY,
	ho_ten VARCHAR(200),
	ngay_sinh DATE,
	dia_chi VARCHAR(300),
	id_lophoc INT(10)
);

-- Tạo khóa ngoài
ALTER TABLE tb_hocvien
ADD CONSTRAINT fk_id_hocvien FOREIGN KEY(id_lophoc)
REFERENCES tb_lophoc(id_lophoc)










