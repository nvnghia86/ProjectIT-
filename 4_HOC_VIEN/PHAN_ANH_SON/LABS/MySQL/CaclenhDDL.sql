--1. Tạo bảng mới tb_lophoc
CREATE TABLE tb_lophoc(
id_lophoc INT(10) PRIMARY KEY,
ma_lop VARCHAR(50),
ten_lop VARCHAR(200),
ngay_khai_giang DATE
);

--2. Xóa bảng tb_lophoc
DROP TABLE tb_lophoc;

-- 3. Sửa bảng 
/* 3.1 Thêm cột*/
ALTER TABLE tb_lophoc ADD COLUMN giao_vien VARCHAR(200);

/* 3.2 Sửa cột*/

ALTER TABLE tb_lophoc MODIFY COLUMN giao_vien VARCHAR(100);

/* 3.3 Xóa cột*/
ALTER TABLE tb_lophoc DROP COLUMN giao_vien;

--1. Tạo bảng mới tb_hocvien
CREATE TABLE tb_hocvien(
id_hocvien INT(10) PRIMARY KEY,
ho_ten VARCHAR(200),
ngay_sinh DATE,
dia_chi VARCHAR(200),
id_lophoc INT(10)
);

--Tạo khóa ngoài cho cột id_lophoc của bảng tb_hocvien
ALTER TABLE tb_hocvien 
ADD CONSTRAINT fk_id_hocvien FOREIGN KEY (id_lophoc)
REFERENCES tb_lophoc(id_lophoc);