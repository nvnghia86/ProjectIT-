-- Tạo DB
CREATE DATABASE db_itp_lab CHARACTER 
SET utf8 COLLATE utf8_general_ci;

-- Tạo bảng
CREATE TABLE tb_lophoc(
id_lophoc INT(10) PRIMARY KEY,
ma_lop VARCHAR(50),
ten_lop VARCHAR(200),
ngay_khai_giang DATE
);

CREATE TABLE tb_hocvien(
id_hocvien INT(10) PRIMARY KEY,
ho_ten VARCHAR(200),
dia_chi VARCHAR(200),
id_lophoc INT(10)
);

CREATE TABLE tb_diemthi(
id_lophoc INT(10),
id_hocvien INT(10),
diem INT(10)
);

-- Kết nối khóa và khóa ngoài
ALTER TABLE tb_hocvien
ADD CONSTRAINT fk_id_lophoc FOREIGN KEY (id_lophoc)
REFERENCES tb_lophoc(id_lophoc);

ALTER TABLE tb_diemthi
ADD CONSTRAINT fk_id_lophoc1 FOREIGN KEY (id_lophoc)
REFERENCES tb_lophoc(id_lophoc);

ALTER TABLE tb_diemthi
ADD CONSTRAINT fk_id_hocvien FOREIGN KEY (id_hocvien)
REFERENCES tb_hocvien(id_hocvien);