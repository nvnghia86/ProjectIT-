--Các câu lệnh DML
-- 1. Chọn dữ liệu
SELECT 
		id_lophoc,
		ma_lop,
		ten_lop,
		ngay_khai_giang
FROM tb_lophoc;

-- 2. Thêm dòng vào bảng
INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang
) VALUES(
1,
'LH001',
'Lớp PHP từ cơ bản đến nâng cao',
'2018-08-01'
);

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang
) VALUES(
2,
'LH002',
'Lớp .NET từ cơ bản đến nâng cao',
'2018-08-01'
);

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang
) VALUES(
3,
'LH003',
'Lớp PhotoShop từ cơ bản đến nâng cao',
'2018-08-01'
);

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang
) VALUES(
4,
'LH004',
'Lớp ANDROI từ cơ bản đến nâng cao',
'2018-08-01'
);

INSERT INTO tb_lophoc(
id_lophoc,
ma_lop,
ten_lop,
ngay_khai_giang
) VALUES(
5,
'LH005',
'Lớp ĐỒ HỌA từ cơ bản đến nâng cao',
'2018-08-01'
);

-- 3. Sửa dữ liệu
UPDATE tb_lophoc SET 
ma_lop ='LH00019', 
ngay_khai_giang = '2018-8-2'
WhERE id_lophoc=3;

-- 4. Xóa dữ liệu

DELETE FROM tb_lophoc WHERE id_lophoc=5;