CREATE TABLE nd_dm_baiviet(
	id_dm_baiviet INT(11) PRIMARY KEY,
	id_dm_baiviet_cha INT(11),
	ten VARCHAR(200),
	mota VARCHAR(200),
	trangthai INT(2)
);

ALTER TABLE nd_baiviet
ADD CONSTRAINT fk_id_dm_baiviet FOREIGN KEY(id_dm_baiviet) REFERENCES nd_dm_baiviet(id_dm_baiviet)

CREATE TABLE nd_baiviet(
	id_baiviet INT(11) PRIMARY KEY,
	tieude VARCHAR(200),
	trichdan VARCHAR(300),
	anh_daidien VARCHAR(500),
	noidung text,
	ngay_tao date,
	ngay_dang date,
	id_taikhoan_tao INT(11),
	id_dm_baiviet INT(11),
	luotxem INT(9),
	trangthai INT(2)
);

ALTER TABLE nd_baiviet
ADD CONSTRAINT fk_baiviet FOREIGN KEY(id_taikhoan_tao) REFERENCES ht_taikhoan(id_taikhoan)

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

CREATE TABLE ht_vaitro(
	id_vaitro INT(11) PRIMARY KEY,
	ten VARCHAR(100),
	mota VARCHAR(200),
	trangthai INT(2)
);

ALTER TABLE ht_taikhoan
ADD CONSTRAINT fk_taikhoan FOREIGN KEY(id_vaitro) REFERENCES ht_vaitro(id_vaitro)

CREATE TABLE ch_dm_hinhthuc_thanhtoan(
	id_dm_hinhthuc_thanhtoan INT(11) PRIMARY KEY,
	ten VARCHAR(200),
	mota VARCHAR(300),
	trangthai INT(2)
);

ALTER TABLE ch_donhang
ADD CONSTRAINT fk_hinhthuc_thanhtoan FOREIGN KEY(id_hinhthuc_thanhtoan) REFERENCES ch_dm_hinhthuc_thanhtoan(id_dm_hinhthuc_thanhtoan)

CREATE TABLE ch_donhang(
	id_donhang INT(11) PRIMARY KEY,
	ma VARCHAR(100),
	ngay_tao date,
	ngay_duyet date,
	ngay_giao date,
	ngay_nhan date,
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
	
ALTER TABLE ch_donhang
ADD CONSTRAINT fk_donhang FOREIGN KEY(id_taikhoan_duyet) REFERENCES ht_taikhoan(id_taikhoan)

ALTER TABLE ch_donhang
ADD CONSTRAINT fk_taikhoan_giaohang FOREIGN KEY(id_taikhoan_giaohang) REFERENCES ht_taikhoan(id_taikhoan)

CREATE TABLE ch_donhang_sanpham(
	id_donhang_sanpham INT(11) PRIMARY KEY,
	id_sanpham INT(11),
	id_donhang INT(11),
	soluong INT(6),
	dongia FLOAT(15, 2)
);

ALTER TABLE ch_donhang_sanpham
ADD CONSTRAINT fk_donhang_sanpham FOREIGN KEY(id_donhang) REFERENCES ch_donhang(id_donhang)

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_donhang_sanpham FOREIGN KEY(id_donhang_sanpham) REFERENCES ch_donhang_sanpham(id_donhang_sanpham)

CREATE TABLE ch_danhgia(
	id_danhgia INT(11) PRIMARY KEY,
	diem INT(4),
	id_sanpham INT(11),
	id_khachhang INT(11)
);

ALTER TABLE ch_danhgia ADD CONSTRAINT fk_id_sanpham FOREIGN KEY(id_sanpham) REFERENCES ch_sanpham(id_sanpham)

CREATE TABLE ch_khachhang(
	id_khachhang INT(11) PRIMARY KEY,
	hoten VARCHAR(200),
	sodienthoai VARCHAR(20),
	email VARCHAR(200),
	matkhau VARCHAR(300),
	trangthai INT(2)
);

ALTER TABLE ch_donhang
ADD CONSTRAINT fk_ch_donhang FOREIGN KEY(id_khachhang) REFERENCES ch_khachhang(id_khachhang)

ALTER TABLE ch_danhgia
ADD CONSTRAINT fk_danhgia FOREIGN KEY(id_khachhang) REFERENCES ch_khachhang(id_khachhang)

CREATE TABLE ch_dm_sanpham(
	id_dm_sanpham INT(11) PRIMARY KEY,
	ten VARCHAR(200),
	id_dm_sanpham_cha INT(11),
	mota VARCHAR(200),
	trangthai INT(2)
);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_dm_sanpham FOREIGN KEY(id_dm_sanpham) REFERENCES ch_dm_sanpham(id_dm_sanpham)

CREATE TABLE ch_dm_thuoctinh(
	id_dm_thuoctinh INT(11) PRIMARY KEY,
	ten VARCHAR(200),
	mota VARCHAR(300),
	trangthai INT(2)
);

ALTER TABLE ch_sanpham_thuoctinh ADD CONSTRAINT fk_id_thuoctinh FOREIGN KEY(id_thuoctinh) REFERENCES ch_dm_thuoctinh(id_dm_thuoctinh)

CREATE TABLE ch_sanpham_thuoctinh(
	id_sanpham_thuoctinh INT(11) PRIMARY KEY,
	id_sanpham INT(11),
	id_thuoctinh INT(11),
	giatri VARCHAR(400),
	trangthai INT(2)
);

ALTER TABLE ch_sanpham_thuoctinh ADD CONSTRAINT fk_sanpham_thuoctinh FOREIGN KEY(id_sanpham) REFERENCES ch_sanpham(id_sanpham)

CREATE TABLE ch_dm_khuyenmai(
	id_dm_khuyenmai INT(11) PRIMARY KEY,
	ma VARCHAR(200),
	ten VARCHAR(200),
	noidung text,
	trangthai INT(2)
);

ALTER TABLE ch_sanpham_thuoctinh ADD CONSTRAINT fk_id_thuoctinh FOREIGN KEY(id_thuoctinh) REFERENCES ch_dm_thuoctinh(id_dm_thuoctinh)

CREATE TABLE ch_sanpham_khuyenmai(
	id_sanpham_khuyenmai INT(11) PRIMARY KEY,
	id_sanpham INT(11),
	id_dm_khuyenmai INT(11)
);

ALTER TABLE ch_sanpham_khuyenmai ADD CONSTRAINT fk_sanpham_khuyenmai FOREIGN KEY(id_dm_khuyenmai) REFERENCES ch_dm_khuyenmai(id_dm_khuyenmai)

ALTER TABLE ch_sanpham_khuyenmai ADD CONSTRAINT fk_sanpham FOREIGN KEY(id_sanpham) REFERENCES ch_sanpham(id_sanpham)


CREATE TABLE nd_dm_album(
	id_dm_album INT(11) PRIMARY KEY,
	ten VARCHAR(300),
	mota VARCHAR(300),
	trangthai INT(2)
);

CREATE TABLE nd_hinhanh(
	id_hinhanh INT(11) PRIMARY KEY,
	tieude VARCHAR(300),
	url VARCHAR(400),
	ten VARCHAR(200),
	id_dm_album INT(11)
);

ALTER TABLE nd_hinhanh ADD CONSTRAINT fk_hinhanh FOREIGN KEY(id_dm_album) REFERENCES nd_dm_album(id_dm_album)

CREATE TABLE ch_sanpham_hinhanh(
	id_sanpham_hinhanh INT(11) PRIMARY KEY,
	id_sanpham INT(11),
	id_hinhanh INT(11)
);

ALTER TABLE ch_sanpham_hinhanh ADD CONSTRAINT fk_sanpham_hinhanh FOREIGN KEY(id_hinhanh) REFERENCES nd_hinhanh(id_hinhanh)


ALTER TABLE ch_sanpham_hinhanh ADD CONSTRAINT fk_hang_sanpham FOREIGN KEY(id_sanpham) REFERENCES ch_sanpham(id_sanpham)

CREATE TABLE ch_dm_hang_sanxuat(
	id_dm_hang_sanxuat INT(11) PRIMARY KEY,
	ten VARCHAR(100),
	anh_logo VARCHAR(300),
	mota VARCHAR(200),
	trangthai INT(2)
);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_dm_hang_sanxuat FOREIGN KEY(id_dm_hang_sanxuat) REFERENCES ch_dm_hang_sanxuat(id_dm_hang_sanxuat)

CREATE TABLE ch_dm_tragop(
	id_dm_tragop INT(11) PRIMARY KEY,
	ten VARCHAR(100),
	mota VARCHAR(200),
	trangthai INT(2)
);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_dm_tragop FOREIGN KEY(id_dm_tragop) REFERENCES ch_dm_tragop(id_dm_tragop)

CREATE TABLE ch_sanpham(
	id_sanpham INT(11) PRIMARY KEY,
	ma VARCHAR(100),
	ten VARCHAR(300),
	gia_nhap FLOAT(15,2),
	gia_ban FLOAT(15,2),
	gioithieu text,
	id_dm_sanpham INT(11),
	id_dm_baohanh INT(11),
	id_dm_doitra INT(11),
	id_dm_giaohang INT(11),
	id_dm_tragop INT(11),
	id_dm_hang_sanxuat INT(11),
	trangthai INT(2)
);

CREATE TABLE ch_dm_doitra(
	id_dm_doitra INT(11) PRIMARY KEY,
	ten VARCHAR(100),
	mota VARCHAR(200),
	trangthai INT(2)
);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_dm_doitra FOREIGN KEY(id_dm_doitra) REFERENCES ch_dm_doitra(id_dm_doitra)

CREATE TABLE ch_dm_giaohang(
	id_dm_giaohang INT(11) PRIMARY KEY,
	ten VARCHAR(100),
	mota VARCHAR(200),
	trangthai INT(2)
);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_dm_giaohang FOREIGN KEY(id_dm_giaohang) REFERENCES ch_dm_giaohang(id_dm_giaohang)

CREATE TABLE ch_dm_baohanh(
	id_dm_baohanh INT(11) PRIMARY KEY,
	ten VARCHAR(100),
	mota VARCHAR(200),
	trangthai INT(2)
);

ALTER TABLE ch_sanpham ADD CONSTRAINT fk_ch_sanpham FOREIGN KEY(id_dm_baohanh) REFERENCES ch_dm_baohanh(id_dm_baohanh)