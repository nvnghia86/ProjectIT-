-- 1. Tạo DB
CREATE DATABASE db_itp_project CHARACTER SET utf8 COLLATE utf8_general_ci;
-- 2. Tạo bảng

-- 2.1 Tạo bảng nd_dm_baiviet
CREATE TABLE nd_dm_baiviet(
id_dm_baiviet INT(11) PRIMARY KEY,
id_dm_baiviet_cha INT(11),
ten VARCHAR(200),
mota VARCHAR(300),
trangthai INT(2)
);
-- 2.2 Tạo bảng
CREATE TABLE nd_baiviet(
id_baiviet INT(11) PRIMARY KEY,
tieude VARCHAR(200),
trichdan VARCHAR(300),
anh_daidien VARCHAR(500),
noidung TEXT,
ngay_tao DATE,
ngay_dang DATE,
id_taikhoan_tao INT(11),
id_dm_baiviet INT(11),
luotxem INT(9),
trangthai INT(2)
);
-- 2.3 Tạo bảng
CREATE TABLE ch_dm_hinhthuc_thanhtoan(
id_dm_hinhthuc_thanhtoan INT(11) PRIMARY KEY,
ten VARCHAR(200),
mota VARCHAR(300),
trangthai INT(2)
);

-- 2.4 Tạo bảng
CREATE TABLE ch_danhgia(
id_danhgia INT(11) PRIMARY KEY,
diem INT(4),
id_sanpham INT(11),
id_khachhang INT(11)
);
-- 2.5 Tạo bảng
CREATE TABLE ch_khachhang(
id_khachhang INT(11) PRIMARY KEY,
hoten VARCHAR(200),
email VARCHAR(200),
sodienthoai VARCHAR(20),
matkhau VARCHAR(300),
trangthai INT(2)
);
-- 2.6 Tạo bảng
CREATE TABLE ch_donhang(
id_donhang INT(11) PRIMARY KEY,
ma VARCHAR(100),
ngay_tao DATE,
ngay_duyet DATE,
ngay_giao DATE,
ngay_nhan DATE,
id_khachhang INT(11),
ten_nguoinhan VARCHAR(200),
sdt_nguoinhan VARCHAR(20),
diachi_nguoinhan VARCHAR(200),
ghichu VARCHAR(300),
id_hinhthuc_thanhtoan INT(11),
id_taikhoan_duyet INT(11),
id_taikhoan_giaohang INT(11),
trangthai INT(2)
);
-- 2.7 Tạo bảng
CREATE TABLE ht_taikhoan(
id_taikhoan INT(11) PRIMARY KEY,
taikhoan VARCHAR(100),
matkhau VARCHAR(50),
hoten VARCHAR(200),
sodienthoai VARCHAR(20),
email VARCHAR(200),
id_vaitro INT(11),
trangthai INT(2)
);
-- 2.8 Tạo bảng
CREATE TABLE ht_vaitro(
id_vaitro INT(11) PRIMARY KEY,
ten VARCHAR(100),
moto VARCHAR(200),
trangthai INT(2)
);
-- 2.9 Tạo bảng
CREATE TABLE ch_dm_sanpham(
id_dm_sanpham INT(11) PRIMARY KEY,
ten VARCHAR(200),
id_dm_sanpham_cha INT(11),
mota VARCHAR(200),
trangthai INT(2)
);
-- 2.10 Tạo bảng
CREATE TABLE ch_donhang_sanpham(
id_donhang_sanpham INT(11) PRIMARY KEY,
id_sanpham INT(11),
id_donhang INT(11),
soluong INT(6),
dongia FLOAT(15,2)
);
-- 2.11 Tạo bảng
CREATE TABLE ch_dm_thuoctinh(
id_dm_thuoctinh INT(11) PRIMARY KEY,
ten VARCHAR(200),
mo_ta VARCHAR(300),
trangthai INT(2)
);
-- 2.12 Tạo bảng
CREATE TABLE ch_sanpham_thuoctinh(
id_sanpham_thuoctinh INT(11) PRIMARY KEY,
id_sanpham INT(11),
id_thuoctinh INT(11),
giatri VARCHAR(400),
trangthai INT(2)
);
-- 2.13 Tạo bảng
CREATE TABLE ch_dm_khuyenmai(
id_dm_khuyenmai INT(11) PRIMARY KEY,
ma VARCHAR(100),
ten VARCHAR(200),
noidung TEXT,
trangthai INT(2)
);
-- 2.14 Tạo bảng
CREATE TABLE ch_sanpham_khuyenmai(
id_sanpham_khuyenmai INT(11) PRIMARY KEY,
id_sanpham INT(11),
id_dm_khuyenmai INT(11)
);
-- 2.15 Tạo bảng
CREATE TABLE nd_dm_album(
id_dm_album INT(11) PRIMARY KEY,
ten VARCHAR(300),
mota VARCHAR(300),
trangthai INT(2)
);
-- 2.16 Tạo bảng
CREATE TABLE nd_hinhanh(
id_hinhanh INT(11) PRIMARY KEY,
tieude VARCHAR(300),
url VARCHAR(400),
ten VARCHAR(200),
id_dm_album INT(11)
);

-- 2.17 Tạo bảng
CREATE TABLE ch_sanpham_hinhanh(
id_sanpham_hinhanh INT(11) PRIMARY KEY,
id_sanpham INT(11),
id_hinhanh INT(11)
);
-- 2.18 Tạo bảng
CREATE TABLE ch_dm_hang_sanxuat(
id_dm_hang_sanxuat INT(11) PRIMARY KEY,
ten VARCHAR(100),
anh_logo VARCHAR(300),
mota VARCHAR(200),
trangthai INT(2)
);
-- 2.19 Tạo bảng
CREATE TABLE ch_dm_tragop(
id_dm_tragop INT(11) PRIMARY KEY,
ten VARCHAR(100),
mota VARCHAR(200),
trangthai INT(2)
);
-- 2.20 Tạo bảng
CREATE TABLE ch_dm_baohanh(
id_dm_baohanh INT(11) PRIMARY KEY,
ten VARCHAR(100),
mota VARCHAR(200),
trangthai INT(2)
);
-- 2.21 Tạo bảng
CREATE TABLE ch_sanpham(
id_sanpham INT(11) PRIMARY KEY,
ma VARCHAR(100),
ten VARCHAR(300),
gia_nhap FLOAT(15,2),
gia_ban FLOAT(15,2),
gioithieu TEXT,
id_dm_sanpham INT(11),
id_dm_baohanh INT(11),
id_dm_doitra INT(11),
id_dm_giaohang INT(11),
id_tragop INT(11),
id_dm_hang_sanxuat INT(11),
trangthai INT(2)
);

-- 2.22 Tạo bảng
CREATE TABLE ch_dm_giaohang(
id_dm_giaohang INT(11) PRIMARY KEY,
ten VARCHAR(100),
mota VARCHAR(200),
trangthai INT(2)
);
-- 2.23 Tạo bảng
CREATE TABLE ch_dm_doitra(
id_dm_doitra INT(11) PRIMARY KEY,
ten VARCHAR(100),
mota VARCHAR(200),
trangthai INT(2)
);
-- 3. Kết nối bảng
ALTER TABLE nd_dm_baiviet ADD CONSTRAINT fk_id_dm_baiviet_cha FOREIGN KEY (id_dm_baiviet_cha) REFERENCES nd_dm_baiviet(id_dm_baiviet);

ALTER TABLE nd_baiviet ADD CONSTRAINT fk_id_dm_baiviet FOREIGN KEY (id_dm_baiviet) REFERENCES nd_dm_baiviet(id_dm_baiviet);

ALTER TABLE nd_baiviet ADD CONSTRAINT fk_id_taikhoan_tao FOREIGN KEY (id_taikhoan_tao) REFERENCES ht_taikhoan(id_taikhoan);

ALTER TABLE ch_donhang ADD CONSTRAINT fk_id_hinhthuc_thanhtoan FOREIGN KEY (id_hinhthuc_thanhtoan) REFERENCES ch_dm_hinhthuc_thanhtoan(id_dm_hinhthuc_thanhtoan);

ALTER TABLE ch_donhang ADD CONSTRAINT fk_id_khachhang FOREIGN KEY (id_khachhang) REFERENCES ch_khachhang(id_khachhang);

ALTER TABLE ch_donhang ADD CONSTRAINT fk_id_taikhoan_duyet FOREIGN KEY (id_taikhoan_duyet) REFERENCES ht_taikhoan(id_taikhoan);

ALTER TABLE ht_taikhoan ADD CONSTRAINT fk_id_vaitro FOREIGN KEY (id_vaitro) REFERENCES ht_vaitro(id_vaitro);

ALTER TABLE ch_donhang ADD CONSTRAINT fk_id_taikhoan_giaohang FOREIGN KEY (id_taikhoan_giaohang) REFERENCES ht_taikhoan(id_taikhoan);

ALTER TABLE ch_danhgia ADD CONSTRAINT fk_id_sanpham FOREIGN KEY (id_sanpham) REFERENCES ch_sanpham(id_sanpham);

ALTER TABLE ch_danhgia ADD CONSTRAINT fk_id_khachhang1 FOREIGN KEY (id_khachhang) REFERENCES ch_khachhang(id_khachhang);

ALTER TABLE ch_dm_sanpham ADD CONSTRAINT fk_id_dm_sanpham_cha FOREIGN KEY (id_dm_sanpham_cha) REFERENCES ch_dm_sanpham(id_dm_sanpham);

ALTER TABLE ch_donhang_sanpham ADD CONSTRAINT fk_id_sanpham1 FOREIGN KEY (id_sanpham) REFERENCES ch_sanpham(id_sanpham);

ALTER TABLE ch_donhang_sanpham ADD CONSTRAINT fk_id_donhang FOREIGN KEY (id_donhang) REFERENCES ch_donhang(id_donhang);

ALTER TABLE ch_sanpham_thuoctinh ADD CONSTRAINT fk_id_sanpham2 FOREIGN KEY (id_sanpham) REFERENCES ch_sanpham(id_sanpham);

ALTER TABLE ch_sanpham_thuoctinh ADD CONSTRAINT fk_id_thuoctinh FOREIGN KEY (id_thuoctinh) REFERENCES ch_dm_thuoctinh(id_dm_thuoctinh);

ALTER TABLE ch_sanpham_khuyenmai ADD CONSTRAINT fk_id_sanpham3 FOREIGN KEY (id_sanpham) REFERENCES ch_sanpham(id_sanpham);

ALTER TABLE ch_sanpham_khuyenmai ADD CONSTRAINT fk_id_dm_khuyenmai FOREIGN KEY (id_dm_khuyenmai) REFERENCES ch_dm_khuyenmai(id_dm_khuyenmai);

ALTER TABLE nd_hinhanh ADD CONSTRAINT fk_id_dm_album FOREIGN KEY (id_dm_album) REFERENCES nd_dm_album(id_dm_album);

ALTER TABLE ch_sanpham_hinhanh ADD CONSTRAINT fk_id_sanpham4 FOREIGN KEY (id_sanpham) REFERENCES ch_sanpham(id_sanpham);

ALTER TABLE ch_sanpham_hinhanh ADD CONSTRAINT fk_id_hinhanh FOREIGN KEY (id_hinhanh) REFERENCES nd_hinhanh(id_hinhanh);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_id_dm_hang_sanxuat FOREIGN KEY (id_dm_hang_sanxuat) REFERENCES ch_dm_hang_sanxuat(id_dm_hang_sanxuat);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_id_dm_tragop FOREIGN KEY (id_tragop) REFERENCES ch_dm_tragop(id_dm_tragop);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_id_dm_giaohang FOREIGN KEY (id_dm_giaohang) REFERENCES ch_dm_giaohang(id_dm_giaohang);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_id_dm_doitra FOREIGN KEY (id_dm_doitra) REFERENCES ch_dm_doitra(id_dm_doitra);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_id_dm_baohanh FOREIGN KEY (id_dm_baohanh) REFERENCES ch_dm_baohanh(id_dm_baohanh);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_id_dm_sanpham FOREIGN KEY (id_dm_sanpham) REFERENCES ch_dm_sanpham(id_dm_sanpham);

