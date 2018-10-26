-- Tạo bảng mới
CREATE TABLE tb_lophoc(
id_lophoc int(10) primary key,
ma_lop varchar(50),
ten_lop Varchar(200),
ngay_khai_giang date
);
-- Xosd bảng 
drop table tb_lophoc;

-- sửa bảng 
-- thêm cột 
ALTER TABLE tb_lophoc ADD COLUMN giao_vien varchar(200);
-- sửa cột
ALTER TABLE tb_lophoc MODIFY COLUMN  giao_vien varchar(100);
-- XÓA cột
ALTER TABLE tb_lophoc DROP COLUMN  giao_vien varchar;

 