---tao database
CREATE DATABASE db_itp_lap  character set utf8 collate utf8_general_ci;
---Xoa database
DROP DATABASE db_itp_lap
----Tạo bảng
CREATE TABLE tb_lophoc(
id_lophoc  int(10) PRIMARY KEY,
ma_lop VARCHAR(50),
ten_lop VARCHAR(200),
ngay_khai_giang date
);
CREATE TABLE tb_hocvien(
id_hocvien  int(10) PRIMARY KEY,
ho_ten VARCHAR(50),
dia_chi VARCHAR(200)
);
CREATE TABLE tb_diemthi(
id_lophoc  int(10) PRIMARY KEY,
id_hocvien  int(10) PRIMARY KEY,
diem int(10)
);
---xoa bang
DROP TABLE tb_lophoc
---sua bang
ALTER TABLE tb_lophoc MODIFY COLUMN giao_vien VARCHAR(100);
---Them cot
ALTER TABLE tb_lophoc ADD COLUMN
giao_vien VARCHAR(200);
---XOA COT
ALTER TABLE tb_lophoc DROP COLUMN giao_vien;
 
 ----Tao khao ngoai 
 ALTER  TABLE tb_hocvien
 ADD CONSTRAINT fk_id_lophoc FOREIGN KEY(id_lophoc)
 REFERENCES tb_lophoc(id_lophoc)
 ---CAc cau lenh  DML
--- LAY du lieu 
SELECT
 id,
 ma_lop,
 ten_lop,
 ngay_khai_giang
 FROM tb_lophoc;
 ----Them
 Insert INTO tb_lophoc(
 id,
 ma_lop,
 ten_lop,
 ngay_khai_giang
 )VALUES(
 3,
 'DOHOA0718E',
 'Lop Do Hoa tu co ban den nang cao',
 '2018-09-12'
 );
 
 ----Sua du lieu tren dong
 UPDATE tb_lophoc SET ma_lop ='JAVA1018F',
 ngay_khai_giang='2018-10-06'
 WHERE id=3;
 
 ---XOA
 
DELETE FROM tb_lophoc WHERE id=2;