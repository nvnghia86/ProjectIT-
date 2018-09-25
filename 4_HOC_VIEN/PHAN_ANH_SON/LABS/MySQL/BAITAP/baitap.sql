-- 1. Tạo DB

CREATE DATABASE db_itp_lab CHARACTER SET utf8 COLLATE utf8_general_ci;

-- 2. Tạo bảng

CREATE TABLE tb_lophoc(
id_lophoc INT(10) PRIMARY KEY,
ma_lop VARCHAR(50),
ten_lop VARCHAR(200),
ngay_khai_giang DATE
);

CREATE TABLE tb_hocvien(
id_hocvien INT(10) PRIMARY KEY,
ho_ten VARCHAR(100),
dia_chi VARCHAR(200),
id_lophoc INT(10)
);

CREATE TABLE tb_diemthi(
id_lophoc INT(10),
id_hocvien INT(10),
diem INTEGER(10)
);

-- 3. Tạo khóa ngoài

ALTER TABLE tb_hocvien ADD CONSTRAINT fk_id_lophoc FOREIGN KEY (id_lophoc) REFERENCES tb_lophoc(id_lophoc);

ALTER TABLE tb_diemthi ADD CONSTRAINT fk_id_lophoc1 FOREIGN KEY (id_lophoc) REFERENCES tb_lophoc(id_lophoc);

ALTER TABLE tb_diemthi ADD CONSTRAINT fk_id_hocvien FOREIGN KEY (id_hocvien) REFERENCES tb_hocvien(id_hocvien);

-- 4. Thêm dữ liệu
-- Thêm dữ liệu bảng tb_lophoc

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang
)VALUES(
1,
'PH01',
'PHP từ cơ bản đến nâng cao',
'2018-07-01'
);

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang
)VALUES(
2,
'PH02',
'PhotoShop từ cơ bản đến nâng cao',
'2018-08-01'
);

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang)
VALUES(
3,
'PH03',
'ANDROID từ cơ bản đến nâng cao',
'2018-09-01'
);

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang)
VALUES(
4,
'PH04',
'JAV từ cơ bản đến nâng cao',
'2018-07-04'
);

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang)
VALUES(
5,
'PH05',
'.NET từ cơ bản đến nâng cao',
'2018-07-20'
);


-- Thêm dữ liệu bảng tb_hocvien
INSERT INTO tb_hocvien(
id_hocvien,
ho_ten,
dia_chi,
id_lophoc
)VALUES(
001,
'Nguyễn Văn A',
'Ninh Bình',
1
);


INSERT INTO tb_hocvien(
id_hocvien,
ho_ten,
dia_chi,
id_lophoc
)VALUES(
002,
'Nguyễn Văn B',
'Nam Định',
2
);

INSERT INTO tb_hocvien(
id_hocvien,
ho_ten,
dia_chi,
id_lophoc
)VALUES(
003,
'Nguyễn Văn C',
'Hà Nội',
3
);

INSERT INTO tb_hocvien(
id_hocvien,
ho_ten,
dia_chi,
id_lophoc
)VALUES(
004,
'Nguyễn Văn D',
'Thái Bình',
4
);

INSERT INTO tb_hocvien(
id_hocvien,
ho_ten,
dia_chi,
id_lophoc
)VALUES(
005,
'Nguyễn Văn E',
'Hòa Bình',
5
);

-- Thêm dữ liệu bảng tb_diemthi
INSERT INTO tb_diemthi(
id_lophoc,
id_hocvien,
diem
)VALUES(
1,
001,
8.3
);

INSERT INTO tb_diemthi(
id_lophoc,
id_hocvien,
diem
)VALUES(
2,
002,
8.6
);

INSERT INTO tb_diemthi(
id_lophoc,
id_hocvien,
diem
)VALUES(
3,
003,
9.5
);

INSERT INTO tb_diemthi(
id_lophoc,
id_hocvien,
diem
)VALUES(
4,
004,
8.0
);

INSERT INTO tb_diemthi(
id_lophoc,
id_hocvien,
diem
)VALUES(
5,
005,
9
);


-- 5. Lấy ra dữ liệu
SELECT * FROM  tb_lophoc; 
SELECT * FROM tb_hocvien;
SELECT * FROM tb_diemthi;

--6. Sửa dữ liệu

UPDATE tb_diemthi SET diem=6 WHERE id_hocvien = 005;

-- 7. Xóa dữ liệu

DELETE FROM tb_diemthi WHERE id_lophoc = 1;

