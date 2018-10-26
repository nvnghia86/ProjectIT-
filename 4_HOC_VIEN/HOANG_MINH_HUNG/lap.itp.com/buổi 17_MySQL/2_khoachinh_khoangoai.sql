-- khóa chính (PK) và khóa ngoại (fk)
-- tạo bảng tb_hocvien
CREATE TABLE tb_hocvien(
id_họcvien int(10) primary key,
ho_ten varchar(200),
ngay_sinh date,
dia_chi varchar(200),
id_lophoc int(10)

);

-- tạo kháo ngoài
alter table tb_hocvien
ADD CONSTRAINT fk_id_hocvien FOREIGN KEY(id_lophoc)
REFERENCES tb_lophoc(id_lophoc)

