/*
Navicat MySQL Data Transfer

Source Server         : p01.vinahost.vn-qxfbg_vnh
Source Server Version : 50626
Source Host           : p01.vinahost.vn:3306
Source Database       : qxfbgkqd_haf

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-10-02 12:05:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ch_danhgia
-- ----------------------------
DROP TABLE IF EXISTS `ch_danhgia`;
CREATE TABLE `ch_danhgia` (
  `id_danhgia` int(11) NOT NULL,
  `diem` int(4) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_khachhang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_danhgia`) USING BTREE,
  KEY `id_sanpham` (`id_sanpham`) USING BTREE,
  KEY `id_khachhang` (`id_khachhang`) USING BTREE,
  CONSTRAINT `ch_danhgia_ibfk_2` FOREIGN KEY (`id_khachhang`) REFERENCES `ch_khachhang` (`id_khachhang`),
  CONSTRAINT `ch_danhgia_ibfk_3` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_danhgia
-- ----------------------------

-- ----------------------------
-- Table structure for ch_dm_baohanh
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_baohanh`;
CREATE TABLE `ch_dm_baohanh` (
  `id_dm_baohanh` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) DEFAULT NULL,
  `mota` varchar(200) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_baohanh`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_baohanh
-- ----------------------------
INSERT INTO `ch_dm_baohanh` VALUES ('3', 'bảo hành đổi trả ', 'lỗi do nhà sản xuất', '1');
INSERT INTO `ch_dm_baohanh` VALUES ('4', 'Bảo hành trọn đời', 'Bảo hành phần mềm', '1');

-- ----------------------------
-- Table structure for ch_dm_doitra
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_doitra`;
CREATE TABLE `ch_dm_doitra` (
  `id_dm_doitra` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) DEFAULT NULL,
  `mota` varchar(200) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_doitra`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_doitra
-- ----------------------------
INSERT INTO `ch_dm_doitra` VALUES ('1', 'Đổi mới', 'Trả không thu phí', '1');
INSERT INTO `ch_dm_doitra` VALUES ('2', 'Bảo hành', 'Trả không thu phí', '1');
INSERT INTO `ch_dm_doitra` VALUES ('3', 'Không áp dụng đổi trả', 'Không áp dụng đổi trả', '1');

-- ----------------------------
-- Table structure for ch_dm_giaohang
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_giaohang`;
CREATE TABLE `ch_dm_giaohang` (
  `id_dm_giaohang` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) DEFAULT NULL,
  `mota` varchar(200) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_giaohang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_giaohang
-- ----------------------------
INSERT INTO `ch_dm_giaohang` VALUES ('9', 'ha noi', 'giao hang dien thoai', '1');
INSERT INTO `ch_dm_giaohang` VALUES ('10', 'nam dinh', 'giao hang laptop', '2');
INSERT INTO `ch_dm_giaohang` VALUES ('11', 'thai binh', 'giao hang the sim', '3');
INSERT INTO `ch_dm_giaohang` VALUES ('12', 'hai phong', 'giao hang laptop', '4');

-- ----------------------------
-- Table structure for ch_dm_hang_sanxuat
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_hang_sanxuat`;
CREATE TABLE `ch_dm_hang_sanxuat` (
  `id_dm_hang_sanxuat` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) DEFAULT NULL,
  `anh_logo` varchar(300) DEFAULT NULL,
  `mota` varchar(200) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_hang_sanxuat`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_hang_sanxuat
-- ----------------------------
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('1', 'Bảo hành trọn đời', null, 'Bảo hành phần mềm', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('3', 'Bảo hành phần tư đời', null, 'Bảo hành phần x', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('4', 'Bảo hành 1 tháng', null, 'Bảo hành phần cứng', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('5', 'Bảo hành 6 tháng', null, 'Bảo hành phần cứng', '0');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('6', 'Bảo hành nửa đời', null, 'Bảo hành phần cứng', '0');

-- ----------------------------
-- Table structure for ch_dm_hinhthuc_thanhtoan
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_hinhthuc_thanhtoan`;
CREATE TABLE `ch_dm_hinhthuc_thanhtoan` (
  `id_dm_hinhthuc_thanhtoan` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(200) NOT NULL,
  `mota` varchar(300) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_hinhthuc_thanhtoan`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_hinhthuc_thanhtoan
-- ----------------------------
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('1', 'Tiền mặt', 'Thanh toán bằng tiền mặt', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('2', 'Thẻ', 'Thanh toán bằng thẻ ngân hàng', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('3', 'Thận', 'Thanh toán bằng thận', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('4', 'Trả góp', 'Trả góp thông qua FE CREDIT', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('5', 'Cướp', 'Đến cướp tại cửa hàng', '1');

-- ----------------------------
-- Table structure for ch_dm_khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_khuyenmai`;
CREATE TABLE `ch_dm_khuyenmai` (
  `id_dm_khuyenmai` int(11) NOT NULL AUTO_INCREMENT,
  `ma` varchar(100) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `noidung` text,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_khuyenmai`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_khuyenmai
-- ----------------------------
INSERT INTO `ch_dm_khuyenmai` VALUES ('1', '007', 'Rau Má', 'Mua 1 cái rổ được tặng 1kg rau má', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('2', '49', 'Rau Diếp Cá', 'Mua 1 con cá được tặng 1kg rau diep ca', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('3', '53', 'Rau Cần', 'Mua 1 cái điếu cày được tặng 1kg rau cần', '0');
INSERT INTO `ch_dm_khuyenmai` VALUES ('4', '677', 'Ốp lưng Huawei', 'Mua 1 điện thoại Iphone được tặng 1 ốp lưng Huawei', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('5', '766', 'Bom', 'Mua Bphone được tặng 10 quả lựu đạn', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('6', '1508', 'Nộp phạt 500k', 'Mua Iphone X được nộp phạt 500k', '0');

-- ----------------------------
-- Table structure for ch_dm_sanpham
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_sanpham`;
CREATE TABLE `ch_dm_sanpham` (
  `id_dm_sanpham` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(200) DEFAULT NULL,
  `id_dm_sanpham_cha` int(11) DEFAULT NULL,
  `mota` varchar(200) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_sanpham`) USING BTREE,
  KEY `id_dm_sanpham_cha` (`id_dm_sanpham_cha`) USING BTREE,
  CONSTRAINT `ch_dm_sanpham_ibfk_1` FOREIGN KEY (`id_dm_sanpham_cha`) REFERENCES `ch_dm_sanpham` (`id_dm_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_sanpham
-- ----------------------------
INSERT INTO `ch_dm_sanpham` VALUES ('3', 'Lap top', null, 'May tinh xach tay', '1');
INSERT INTO `ch_dm_sanpham` VALUES ('4', 'Dien thoai', null, 'dien thoai di dong', '1');
INSERT INTO `ch_dm_sanpham` VALUES ('5', 'Tivi', null, 'tivi', '0');
INSERT INTO `ch_dm_sanpham` VALUES ('6', 'Tai nghe', null, 'Phu kien', '1');
INSERT INTO `ch_dm_sanpham` VALUES ('7', 'Sac', null, 'Phu kien', '0');

-- ----------------------------
-- Table structure for ch_dm_thuoctinh
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_thuoctinh`;
CREATE TABLE `ch_dm_thuoctinh` (
  `id_dm_thuoctinh` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(200) NOT NULL,
  `mo_ta` varchar(300) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_thuoctinh`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_thuoctinh
-- ----------------------------

-- ----------------------------
-- Table structure for ch_dm_tragop
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_tragop`;
CREATE TABLE `ch_dm_tragop` (
  `id_dm_tragop` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) DEFAULT NULL,
  `mota` varchar(200) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_tragop`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_tragop
-- ----------------------------
INSERT INTO `ch_dm_tragop` VALUES ('1', 'trả góp 5 %', 'trả góp ', '0');
INSERT INTO `ch_dm_tragop` VALUES ('2', 'trả góp 10 %', 'trả góp ', '0');
INSERT INTO `ch_dm_tragop` VALUES ('3', 'trả góp 20 %', 'trả góp ', '0');
INSERT INTO `ch_dm_tragop` VALUES ('4', 'trả góp 30 %', 'trả góp ', '0');
INSERT INTO `ch_dm_tragop` VALUES ('5', 'trả góp 40 %', 'trả góp ', '0');
INSERT INTO `ch_dm_tragop` VALUES ('6', 'trả góp 50 %', 'trả góp ', '0');

-- ----------------------------
-- Table structure for ch_donhang
-- ----------------------------
DROP TABLE IF EXISTS `ch_donhang`;
CREATE TABLE `ch_donhang` (
  `id_donhang` int(11) NOT NULL,
  `ma` varchar(100) NOT NULL,
  `ngay_tao` date NOT NULL,
  `ngay_duyet` date DEFAULT NULL,
  `ngay_giao` date DEFAULT NULL,
  `ngay_nhan` date DEFAULT NULL,
  `id_khachhang` int(11) DEFAULT NULL,
  `ten_nguoinhan` varchar(200) DEFAULT NULL,
  `sdt_nguoinhan` varchar(20) DEFAULT NULL,
  `diachi_nguoinhan` varchar(200) DEFAULT NULL,
  `ghichu` varchar(300) DEFAULT NULL,
  `id_hinhthuc_thanhtoan` int(11) NOT NULL,
  `id_taikhoan_duyet` int(11) DEFAULT NULL,
  `id_taikhoan_giaohang` int(11) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_donhang`) USING BTREE,
  KEY `id_khachhang` (`id_khachhang`) USING BTREE,
  KEY `id_hinhthuc_thanhtoan` (`id_hinhthuc_thanhtoan`) USING BTREE,
  KEY `id_taikhoan_duyet` (`id_taikhoan_duyet`) USING BTREE,
  KEY `id_taikhoan_giaohang` (`id_taikhoan_giaohang`) USING BTREE,
  CONSTRAINT `ch_donhang_ibfk_2` FOREIGN KEY (`id_hinhthuc_thanhtoan`) REFERENCES `ch_dm_hinhthuc_thanhtoan` (`id_dm_hinhthuc_thanhtoan`),
  CONSTRAINT `ch_donhang_ibfk_3` FOREIGN KEY (`id_taikhoan_duyet`) REFERENCES `ht_taikhoan` (`id_taikhoan`),
  CONSTRAINT `ch_donhang_ibfk_4` FOREIGN KEY (`id_taikhoan_giaohang`) REFERENCES `ht_taikhoan` (`id_taikhoan`),
  CONSTRAINT `ch_donhang_ibfk_5` FOREIGN KEY (`id_khachhang`) REFERENCES `ch_khachhang` (`id_khachhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_donhang
-- ----------------------------

-- ----------------------------
-- Table structure for ch_donhang_sanpham
-- ----------------------------
DROP TABLE IF EXISTS `ch_donhang_sanpham`;
CREATE TABLE `ch_donhang_sanpham` (
  `id_donhang_sanpham` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `soluong` int(6) DEFAULT NULL,
  `dongia` float(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_donhang_sanpham`) USING BTREE,
  KEY `id_sanpham` (`id_sanpham`) USING BTREE,
  KEY `id_donhang` (`id_donhang`) USING BTREE,
  CONSTRAINT `ch_donhang_sanpham_ibfk_2` FOREIGN KEY (`id_donhang`) REFERENCES `ch_donhang` (`id_donhang`),
  CONSTRAINT `ch_donhang_sanpham_ibfk_3` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_donhang_sanpham
-- ----------------------------

-- ----------------------------
-- Table structure for ch_donhang_sanpham_khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `ch_donhang_sanpham_khuyenmai`;
CREATE TABLE `ch_donhang_sanpham_khuyenmai` (
  `id_donhang_sanpham_khuyenmai` int(11) NOT NULL,
  `id_khuyenmai` int(11) NOT NULL,
  `id_donhang_sanpham` int(11) NOT NULL,
  PRIMARY KEY (`id_donhang_sanpham_khuyenmai`) USING BTREE,
  KEY `id_khuyenmai` (`id_khuyenmai`) USING BTREE,
  KEY `id_donhang_sanpham` (`id_donhang_sanpham`) USING BTREE,
  CONSTRAINT `ch_donhang_sanpham_khuyenmai_ibfk_1` FOREIGN KEY (`id_khuyenmai`) REFERENCES `ch_dm_khuyenmai` (`id_dm_khuyenmai`),
  CONSTRAINT `ch_donhang_sanpham_khuyenmai_ibfk_2` FOREIGN KEY (`id_donhang_sanpham`) REFERENCES `ch_donhang_sanpham` (`id_donhang_sanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_donhang_sanpham_khuyenmai
-- ----------------------------

-- ----------------------------
-- Table structure for ch_khachhang
-- ----------------------------
DROP TABLE IF EXISTS `ch_khachhang`;
CREATE TABLE `ch_khachhang` (
  `id_khachhang` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sodienthoai` varchar(20) NOT NULL,
  `matkhau` varchar(300) NOT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_khachhang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_khachhang
-- ----------------------------
INSERT INTO `ch_khachhang` VALUES ('3', 'Nguyễn Văn Nhân', 'nguyenvannhan@gmail.com', '0965453288', '456', '1');
INSERT INTO `ch_khachhang` VALUES ('4', 'Nguyễn Thị Trinh', 'nguyenthitrinh@gmail.com', '0965453266', '789', '1');
INSERT INTO `ch_khachhang` VALUES ('5', 'Nguyễn Thị Ngọc', 'nguyenthingoc@gmail.com', '096545456', '012', '1');
INSERT INTO `ch_khachhang` VALUES ('6', 'Lê Văn Long', 'levanlong@gmail.com', '0964553288', '458', '1');
INSERT INTO `ch_khachhang` VALUES ('7', 'Nguyễn Văn Giáp', 'nguyenvangiap@gmail.com', '0965633288', '156', '1');
INSERT INTO `ch_khachhang` VALUES ('8', 'Nguyễn Văn Đô', 'nguyenvando@gmail.com', '0965343288', '456', '1');

-- ----------------------------
-- Table structure for ch_sanpham
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham`;
CREATE TABLE `ch_sanpham` (
  `id_sanpham` int(11) NOT NULL AUTO_INCREMENT,
  `ma` varchar(100) DEFAULT NULL,
  `ten` varchar(300) DEFAULT NULL,
  `gia_nhap` float(15,2) DEFAULT NULL,
  `gia_ban` float(15,2) DEFAULT NULL,
  `gioithieu` text,
  `id_dm_sanpham` int(11) DEFAULT NULL,
  `id_dm_baohanh` int(11) DEFAULT NULL,
  `id_dm_doitra` int(11) DEFAULT NULL,
  `id_dm_giaohang` int(11) DEFAULT NULL,
  `id_dm_tragop` int(11) DEFAULT NULL,
  `id_dm_hang_sanxuat` int(11) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_sanpham`) USING BTREE,
  KEY `id_dm_sanpham` (`id_dm_sanpham`) USING BTREE,
  KEY `id_dm_baohanh` (`id_dm_baohanh`) USING BTREE,
  KEY `id_dm_doitra` (`id_dm_doitra`) USING BTREE,
  KEY `id_dm_giaohang` (`id_dm_giaohang`) USING BTREE,
  KEY `id_dm_tragop` (`id_dm_tragop`) USING BTREE,
  KEY `id_dm_hang_sanxuat` (`id_dm_hang_sanxuat`) USING BTREE,
  CONSTRAINT `ch_sanpham_ibfk_1` FOREIGN KEY (`id_dm_sanpham`) REFERENCES `ch_dm_sanpham` (`id_dm_sanpham`),
  CONSTRAINT `ch_sanpham_ibfk_2` FOREIGN KEY (`id_dm_baohanh`) REFERENCES `ch_dm_baohanh` (`id_dm_baohanh`),
  CONSTRAINT `ch_sanpham_ibfk_3` FOREIGN KEY (`id_dm_doitra`) REFERENCES `ch_dm_doitra` (`id_dm_doitra`),
  CONSTRAINT `ch_sanpham_ibfk_4` FOREIGN KEY (`id_dm_giaohang`) REFERENCES `ch_dm_giaohang` (`id_dm_giaohang`),
  CONSTRAINT `ch_sanpham_ibfk_5` FOREIGN KEY (`id_dm_tragop`) REFERENCES `ch_dm_tragop` (`id_dm_tragop`),
  CONSTRAINT `ch_sanpham_ibfk_6` FOREIGN KEY (`id_dm_hang_sanxuat`) REFERENCES `ch_dm_hang_sanxuat` (`id_dm_hang_sanxuat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_sanpham
-- ----------------------------

-- ----------------------------
-- Table structure for ch_sanpham_hinhanh
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham_hinhanh`;
CREATE TABLE `ch_sanpham_hinhanh` (
  `id_sanpham_hinhanh` int(11) NOT NULL,
  `id_sanpham` int(11) DEFAULT NULL,
  `id_hinhanh` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sanpham_hinhanh`) USING BTREE,
  KEY `id_sanpham` (`id_sanpham`) USING BTREE,
  KEY `id_hinhanh` (`id_hinhanh`) USING BTREE,
  CONSTRAINT `ch_sanpham_hinhanh_ibfk_2` FOREIGN KEY (`id_hinhanh`) REFERENCES `nd_hinhanh` (`id_hinhanh`),
  CONSTRAINT `ch_sanpham_hinhanh_ibfk_3` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_sanpham_hinhanh
-- ----------------------------

-- ----------------------------
-- Table structure for ch_sanpham_khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham_khuyenmai`;
CREATE TABLE `ch_sanpham_khuyenmai` (
  `id_sanpham_khuyenmai` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `id_dm_khuyenmai` int(11) NOT NULL,
  PRIMARY KEY (`id_sanpham_khuyenmai`) USING BTREE,
  KEY `id_sanpham` (`id_sanpham`) USING BTREE,
  KEY `id_dm_khuyenmai` (`id_dm_khuyenmai`) USING BTREE,
  CONSTRAINT `ch_sanpham_khuyenmai_ibfk_2` FOREIGN KEY (`id_dm_khuyenmai`) REFERENCES `ch_dm_khuyenmai` (`id_dm_khuyenmai`),
  CONSTRAINT `ch_sanpham_khuyenmai_ibfk_3` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_sanpham_khuyenmai
-- ----------------------------

-- ----------------------------
-- Table structure for ch_sanpham_thuoctinh
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham_thuoctinh`;
CREATE TABLE `ch_sanpham_thuoctinh` (
  `id_sanpham_thuoctinh` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `id_thuoctinh` int(11) NOT NULL,
  `giatri` varchar(400) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_sanpham_thuoctinh`) USING BTREE,
  KEY `id_sanpham` (`id_sanpham`) USING BTREE,
  KEY `id_thuoctinh` (`id_thuoctinh`) USING BTREE,
  CONSTRAINT `ch_sanpham_thuoctinh_ibfk_2` FOREIGN KEY (`id_thuoctinh`) REFERENCES `ch_dm_thuoctinh` (`id_dm_thuoctinh`),
  CONSTRAINT `ch_sanpham_thuoctinh_ibfk_3` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_sanpham_thuoctinh
-- ----------------------------

-- ----------------------------
-- Table structure for ht_taikhoan
-- ----------------------------
DROP TABLE IF EXISTS `ht_taikhoan`;
CREATE TABLE `ht_taikhoan` (
  `id_taikhoan` int(11) NOT NULL AUTO_INCREMENT,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `sodienthoai` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `id_vaitro` int(11) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_taikhoan`) USING BTREE,
  KEY `id_vaitro` (`id_vaitro`) USING BTREE,
  CONSTRAINT `ht_taikhoan_ibfk_1` FOREIGN KEY (`id_vaitro`) REFERENCES `ht_vaitro` (`id_vaitro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ht_taikhoan
-- ----------------------------
INSERT INTO `ht_taikhoan` VALUES ('2', 'nguyenthuy', '123', 'nguyen thuy', '016789872', 'thuy@gmail.com', '1', '1');
INSERT INTO `ht_taikhoan` VALUES ('3', 'nguyenlong', '123', 'nguyen long', '016789456', 'thuy@gmail.com', '1', '1');
INSERT INTO `ht_taikhoan` VALUES ('4', 'nguyenhang', '123', 'nguyen hang', '016789456', 'hang@gmail.com', '2', '1');
INSERT INTO `ht_taikhoan` VALUES ('5', 'nguyenminh', '123', 'nguyen minh', '016789234', 'minh@gmail.com', '3', '1');
INSERT INTO `ht_taikhoan` VALUES ('6', 'phamhoa', '123', 'pham hoa', '016789234', 'hoa@gmail.com', '2', '1');

-- ----------------------------
-- Table structure for ht_thongbao
-- ----------------------------
DROP TABLE IF EXISTS `ht_thongbao`;
CREATE TABLE `ht_thongbao` (
  `id_ht_thongbao` int(11) NOT NULL AUTO_INCREMENT,
  `ma` int(11) NOT NULL,
  `thongbao` varchar(500) NOT NULL,
  PRIMARY KEY (`id_ht_thongbao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ht_thongbao
-- ----------------------------
INSERT INTO `ht_thongbao` VALUES ('1', '200', 'Thành công.');
INSERT INTO `ht_thongbao` VALUES ('2', '201', 'Lưu thành công.');
INSERT INTO `ht_thongbao` VALUES ('3', '202', 'Xóa thành công.');
INSERT INTO `ht_thongbao` VALUES ('4', '203', 'Cập nhật thành công.');
INSERT INTO `ht_thongbao` VALUES ('5', '500', 'Đã có lỗi xảy ra.');
INSERT INTO `ht_thongbao` VALUES ('6', '501', 'Lưu thất bại.');
INSERT INTO `ht_thongbao` VALUES ('7', '502', 'Xóa thất bại');
INSERT INTO `ht_thongbao` VALUES ('8', '503', 'Cập nhật thất bại');
INSERT INTO `ht_thongbao` VALUES ('9', '400', 'Cảnh báo có lỗi.');
INSERT INTO `ht_thongbao` VALUES ('10', '401', 'Cảnh báo dữ liệu nhập vào không hợp lệ');
INSERT INTO `ht_thongbao` VALUES ('11', '404', 'Cảnh báo dữ liệu trống');
INSERT INTO `ht_thongbao` VALUES ('12', '405', 'Cảnh báo không tìm thấy bản ghi');

-- ----------------------------
-- Table structure for ht_vaitro
-- ----------------------------
DROP TABLE IF EXISTS `ht_vaitro`;
CREATE TABLE `ht_vaitro` (
  `id_vaitro` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) NOT NULL,
  `mota` varchar(200) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_vaitro`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ht_vaitro
-- ----------------------------
INSERT INTO `ht_vaitro` VALUES ('1', 'Quản trị hệ thống', '', '1');
INSERT INTO `ht_vaitro` VALUES ('2', 'lap top', 'Thích thì đổi', '1');
INSERT INTO `ht_vaitro` VALUES ('3', 'tablet', 'Thích thì đổi', '1');
INSERT INTO `ht_vaitro` VALUES ('4', 'op dt', 'Thích thì đổi', '1');
INSERT INTO `ht_vaitro` VALUES ('5', 'may giat', 'Thích thì đổi', '1');

-- ----------------------------
-- Table structure for nd_baiviet
-- ----------------------------
DROP TABLE IF EXISTS `nd_baiviet`;
CREATE TABLE `nd_baiviet` (
  `id_baiviet` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(200) NOT NULL,
  `trichdan` varchar(300) NOT NULL,
  `anh_daidien` varchar(500) NOT NULL,
  `noidung` text,
  `ngay_tao` date DEFAULT NULL,
  `ngay_dang` date DEFAULT NULL,
  `id_taikhoan_tao` int(11) DEFAULT NULL,
  `id_dm_baiviet` int(11) DEFAULT NULL,
  `luotxem` int(9) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_baiviet`) USING BTREE,
  KEY `id_dm_baiviet` (`id_dm_baiviet`) USING BTREE,
  KEY `id_taikhoan_tao` (`id_taikhoan_tao`) USING BTREE,
  CONSTRAINT `nd_baiviet_ibfk_1` FOREIGN KEY (`id_dm_baiviet`) REFERENCES `nd_dm_baiviet` (`id_dm_baiviet`),
  CONSTRAINT `nd_baiviet_ibfk_2` FOREIGN KEY (`id_taikhoan_tao`) REFERENCES `ht_taikhoan` (`id_taikhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nd_baiviet
-- ----------------------------

-- ----------------------------
-- Table structure for nd_dm_album
-- ----------------------------
DROP TABLE IF EXISTS `nd_dm_album`;
CREATE TABLE `nd_dm_album` (
  `id_dm_album` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `ten` varchar(300) NOT NULL,
  `mota` varchar(300) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_album`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nd_dm_album
-- ----------------------------
INSERT INTO `nd_dm_album` VALUES ('1', 'dienthoai', 'dien thoai di dong', '1');
INSERT INTO `nd_dm_album` VALUES ('2', 'laptop', 'may tinh', '0');
INSERT INTO `nd_dm_album` VALUES ('3', 'tablet', 'may tinh bang', '1');
INSERT INTO `nd_dm_album` VALUES ('4', 'phukien', 'phu kien', '1');
INSERT INTO `nd_dm_album` VALUES ('5', 'iphone', 'dien thoai di dong', '1');

-- ----------------------------
-- Table structure for nd_dm_baiviet
-- ----------------------------
DROP TABLE IF EXISTS `nd_dm_baiviet`;
CREATE TABLE `nd_dm_baiviet` (
  `id_dm_baiviet` int(11) NOT NULL AUTO_INCREMENT,
  `id_dm_baiviet_cha` int(11) DEFAULT NULL,
  `ten` varchar(200) NOT NULL,
  `mota` varchar(300) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_dm_baiviet`) USING BTREE,
  KEY `id_dm_baiviet_cha` (`id_dm_baiviet_cha`) USING BTREE,
  CONSTRAINT `nd_dm_baiviet_ibfk_1` FOREIGN KEY (`id_dm_baiviet_cha`) REFERENCES `nd_dm_baiviet` (`id_dm_baiviet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nd_dm_baiviet
-- ----------------------------

-- ----------------------------
-- Table structure for nd_hinhanh
-- ----------------------------
DROP TABLE IF EXISTS `nd_hinhanh`;
CREATE TABLE `nd_hinhanh` (
  `id_hinhanh` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(300) DEFAULT NULL,
  `url` varchar(400) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `id_dm_album` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_hinhanh`) USING BTREE,
  KEY `id_dm_album` (`id_dm_album`) USING BTREE,
  CONSTRAINT `nd_hinhanh_ibfk_1` FOREIGN KEY (`id_dm_album`) REFERENCES `nd_dm_album` (`id_dm_album`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nd_hinhanh
-- ----------------------------

-- ----------------------------
-- Procedure structure for ch_danhgia_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `ch_danhgia_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `ch_danhgia_del`(
	p_id_danhgia int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_danhgia WHERE id_danhgia=p_id_danhgia;

IF @p_dem > 0 THEN
	DELETE FROM ch_danhgia WHERE id_danhgia=p_id_danhgia;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_hinhthuc_thanhtoan;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ch_sanpham_khuyenmai
-- ----------------------------
DROP PROCEDURE IF EXISTS `ch_sanpham_khuyenmai`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `ch_sanpham_khuyenmai`(
	p_id_sanpham_khuyenmai int,
	p_id_sanpham int,
	p_id_dm_khuyenmai	int
)
BEGIN
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_sanpham_khuyenmai=0 OR p_id_sanpham_khuyenmai is NULL THEN
			INSERT INTO ch_sanpham_khuyenmai(
						sanpham,
						dm_khuyenmai
			)VALUES(
						p_sanpham,
						p_dm_khuyenmai
			);
ELSE
	UPDATE ch_sanpham_khuyenmai SET
		sanpham = p_sanpham,
		dm_khuyenmai = p_dm_khuyenmai
	WHERE
		id_sanpham_khuyenmai = p_id_sanpham_khuyenmai;
END IF;
COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_danhgia_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_danhgia_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_danhgia_find_all`()
BEGIN 

	SELECT * FROM ch_danhgia
	ORDER BY id_danhgia DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_danhgia_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_danhgia_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_danhgia_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_danhgia
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_danhgia DESC;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_danhgia_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_danhgia_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_danhgia_get_byid`(
	p_id_danhgia int
)
BEGIN 

	SELECT * FROM ch_danhgia
WHERE id_danhgia = p_id_danhgia;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_danhgia_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_danhgia_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_danhgia_save`(
	p_id_danhgia int,
	p_diem int,
	p_id_sanpham int,
	p_id_khachhang int
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_danhgia = 0 OR p_id_danhgia is null THEN
	INSERT INTO ch_danhgia(
		id_danhgia,
		diem,
		id_sanpham,
		id_khachhang
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_danhgia SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		p_id_danhgia = p_id_danhgia;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_baiviet_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_baiviet_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_baiviet_save`(
	p_id_dm_baiviet int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_baivieth=0 OR p_id_dm_baiviet is null THEN
	INSERT INTO ch_dm_baiviet(
	id_dm_baiviet_cha,
		ten,
		mota,
		trangthai
	)VALUES(
	id_dm_baiviet_cha,
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_baiviet SET
	id_dm_baiviet_cha=id_dm_baiviet_cha,
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_baohanh = p_id_dm_baiviet_cha;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_baohanh_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_baohanh_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_baohanh_find_all`()
BEGIN 

	SELECT * FROM ch_dm_baohanh 
	ORDER BY id_dm_baohanh DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_baohanh_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_baohanh_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_baohanh_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_baohanh
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_baohanh DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_baohanh_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_baohanh_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_baohanh_get_byid`(
	p_id_dm_baohanh int
)
BEGIN 

	SELECT * FROM ch_dm_baohanh 
WHERE id_dm_baohanh = p_id_dm_baohanh;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_baohanh_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_baohanh_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_baohanh_save`(
	p_id_dm_baohanh int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_baohanh=0 OR p_id_dm_baohanh is null THEN
	INSERT INTO ch_dm_baohanh(
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_baohanh SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_baohanh = p_id_dm_baohanh;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_doitra_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_doitra_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_doitra_del`(
	p_id_ch_dm_doitra int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_doitra WHERE id_dm_doitra=p_id_ch_dm_doitra;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_doitra WHERE id_dm_doitra=p_id_ch_dm_doitra;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_ch_dm_doitra;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_doitra_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_doitra_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_doitra_find_all`()
BEGIN 

	SELECT * FROM ch_dm_doitra 
	ORDER BY id_dm_doitra DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_doitra_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_doitra_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_doitra_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_doitra
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_doitra DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_doitra_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_doitra_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_doitra_get_byid`(
	p_id_dm_doitra int
)
BEGIN 

	SELECT * FROM ch_dm_doitra
WHERE id_dm_doitra = p_id_dm_doitra;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_doitra_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_doitra_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_doitra_save`(
	p_id_dm_doitra int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_doitra=0 OR p_id_dm_doitra is null THEN
	INSERT INTO ch_dm_doitra(
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_doitra SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_doitra = p_id_dm_doitrah;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_giaohang_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_giaohang_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_giaohang_del`(
	p_id_ch_dm_giaohang int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_giaohang WHERE id_dm_giaohang=p_id_ch_dm_giaohang;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_giaohang WHERE id_dm_giaohang=p_id_ch_dm_giaohang;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_ch_dm_giaohang;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_giaohang_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_giaohang_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_giaohang_find_all`()
BEGIN 

	SELECT * FROM ch_dm_giaohang 
	ORDER BY id_dm_giaohang DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_giaohang_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_giaohang_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_giaohang_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_giaohang
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_giaohang DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_giaohang_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_giaohang_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_giaohang_get_byid`(
	p_id_dm_giaohang int
)
BEGIN 

	SELECT * FROM ch_dm_giaohang 
WHERE id_dm_giaohang = p_id_dm_giaohang;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_giaohang_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_giaohang_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_giaohang_save`(
	p_id_ch_dm_giaohang int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
	
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_ch_dm_giaohang=0 OR p_id_ch_dm_giaohang is null THEN
	INSERT INTO ch_dm_giaohang(
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_giaohang SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_ch_dm_giaohang = p_id_ch_dm_giaohang;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hang_sanxuat_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hang_sanxuat_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hang_sanxuat_del`(
	p_id_dm_hang_sanxuat int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_hang_sanxuat WHERE id_dm_hang_sanxuat=p_id_dm_hang_sanxuat;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_hang_sanxuat WHERE id_dm_hang_sanxuat=p_id_dm_hang_sanxuat;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_hang_sanxuat;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hang_sanxuat_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hang_sanxuat_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hang_sanxuat_find_all`()
BEGIN 

	SELECT * FROM ch_dm_hang_sanxuat 
	ORDER BY id_dm_hang_sanxuat DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hang_sanxuat_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hang_sanxuat_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hang_sanxuat_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_hang_sanxuat
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_hang_sanxuat DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hang_sanxuat_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hang_sanxuat_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hang_sanxuat_get_byid`(
	p_id_dm_hang_sanxuat int
)
BEGIN 

	SELECT * FROM ch_dm_hang_sanxuat 
WHERE id_dm_hang_sanxuat = p_id_dm_hang_sanxuat;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hang_sanxuat_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hang_sanxuat_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hang_sanxuat_save`(
	p_id_dm_hang_sanxuat int,
	
	p_ten varchar(100),
	p_anh_logo VARCHAR(300),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_hang_sanxuat=0 OR p_id_dm_hang_sanxuat is null THEN
	INSERT INTO ch_dm_hang_sanxuat(
		ten,
		anh_logo,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_anh_logo,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_hang_sanxuat SET
		ten = p_ten,
		anh_logo=p_anh_logo,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_hang_sanxuat = p_id_dm_hang_sanxuat;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hinhthuc_thanhtoan_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hinhthuc_thanhtoan_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hinhthuc_thanhtoan_del`(
	p_id_dm_hinhthuc_thanhtoan int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_hinhthuc_thanhtoan WHERE id_dm_hinhthuc_thanhtoan=p_id_dm_hinhthuc_thanhtoan;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_hinhthuc_thanhtoan WHERE id_dm_hinhthuc_thanhtoan=p_id_dm_hinhthuc_thanhtoan;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_hinhthuc_thanhtoan;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hinhthuc_thanhtoan_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hinhthuc_thanhtoan_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hinhthuc_thanhtoan_find_all`()
BEGIN 

	SELECT * FROM ch_dm_hinhthuc_thanhtoan
	ORDER BY id_dm_hinhthuc_thanhtoan DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hinhthuc_thanhtoan_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hinhthuc_thanhtoan_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hinhthuc_thanhtoan_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_hinhthuc_thanhtoan
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_hinhthuc_thanhtoan DESC;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hinhthuc_thanhtoan_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hinhthuc_thanhtoan_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hinhthuc_thanhtoan_get_byid`(
	p_id_dm_hinhthuc_thanhtoan int
)
BEGIN 

	SELECT * FROM ch_dm_hinhthuc_thanhtoan
WHERE id_dm_hinhthuc_thanhtoan = p_id_dm_hinhthuc_thanhtoan;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_hinhthuc_thanhtoan_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_hinhthuc_thanhtoan_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_hinhthuc_thanhtoan_save`(
	p_id_dm_hinhthuc_thanhtoan int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_hinhthuc_thanhtoan = 0 OR p_id_dm_hinhthuc_thanhtoan is null THEN
	INSERT INTO ch_dm_hinhthuc_thanhtoan(
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_hinhthuc_thanhtoan SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_hinhthuc_thanhtoan = p_id_dm_hinhthuc_thanhtoan;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_khuyenmai_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_khuyenmai_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_khuyenmai_del`(
	p_id_dm_khuyenmai int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_khuyenmai WHERE id_dm_khuyenmai=p_id_dm_khuyenmai;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_khuyenmai WHERE id_dm_khuyenmai=p_id_dm_khuyenmai;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_khuyenmai;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_khuyenmai_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_khuyenmai_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_khuyenmai_find_all`()
BEGIN 

	SELECT * FROM ch_dm_khuyenmai 
	ORDER BY id_dm_khuyenmai DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_khuyenmai_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_khuyenmai_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_khuyenmai_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_khuyenmai
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(noidung) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_khuyenmai DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_khuyenmai_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_khuyenmai_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_khuyenmai_get_byid`(
	p_id_dm_khuyenmai int
)
BEGIN 

	SELECT * FROM ch_dm_khuyenmai 
WHERE id_dm_khuyenmai = p_id_dm_khuyenmai;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_khuyenmai_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_khuyenmai_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_khuyenmai_save`(
	p_id_dm_khuyenmai int,
	p_ma int(20),
	p_ten varchar(100),
	p_noidung varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_khuyenmai=0 OR p_id_dm_khuyenmai is null THEN
	INSERT INTO ch_dm_khuyenmai(
		ma,
		ten,
		noidung,
		trangthai
	)VALUES(
		p_ma,
		p_ten,
		p_noidung,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_khuyenmai SET
		ma=p_ma,
		ten=p_ten,
		noidung=p_noidung,
		trangthai=p_trangthai
	WHERE
		id_dm_khuyenmai = p_id_dm_khuyenmai;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_sanpham_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_sanpham_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_sanpham_del`(
	p_id_dm_sanpham int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
	select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_sanpham WHERE id_dm_sanpham=p_id_dm_sanpham;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_sanpham WHERE id_dm_sanpham=p_id_dm_sanpham;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_sanpham;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_sanpham_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_sanpham_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_sanpham_find_all`()
BEGIN 

	SELECT * FROM ch_dm_sanpham 
	ORDER BY id_dm_sanpham DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_sanpham_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_sanpham_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_sanpham_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_sanpham
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(id_dm_sanpham_cha) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_sanpham DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_sanpham_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_sanpham_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_sanpham_get_byid`(
	p_id_dm_sanpham int
)
BEGIN 

	SELECT * FROM ch_dm_sanpham
	WHERE id_dm_sanpham = p_id_dm_sanpham;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_sanpham_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_sanpham_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_sanpham_save`(
	p_id_dm_sanpham int,
	p_ten varchar(100),
	p_id_dm_sanpham_cha int,
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_sanpham=0 OR p_id_dm_sanpham is null THEN
	INSERT INTO ch_dm_sanpham(
		ten,
		id_dm_sanpham_cha,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_id_dm_sanpham_cha,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_sanpham SET
		ten = p_ten,
		id_dm_sanpham_cha=p_id_dm_sanpham_cha,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_sanpham = p_id_dm_sanpham;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';

select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_thuoctinh_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_thuoctinh_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_thuoctinh_save`(
	p_id_dm_thuoctinh int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_thuoctinh=0 OR p_id_dm_thuoctinh is null THEN
	INSERT INTO ch_dm_thuoctinh (
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_thuoctinh SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_thuoctinh = p_id_dm_thuoctinh;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_tragop_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_tragop_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_tragop_del`(
p_id_dm_tragop int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_tragop WHERE id_dm_tragop=p_id_dm_tragop;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_tragop WHERE id_dm_tragop=p_id_dm_tragop;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_tragop;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_tragop_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_tragop_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_tragop_find_all`()
BEGIN 

	SELECT * FROM ch_dm_tragop 
	ORDER BY id_dm_tragop DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_tragop_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_tragop_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_tragop_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_tragop
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_tragop DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_tragop_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_tragop_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_tragop_get_byid`(
	p_id_dm_tragop int
)
BEGIN 

	SELECT * FROM ch_dm_tragop
WHERE id_dm_tragop = p_id_dm_tragop;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_tragop_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_tragop_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_tragop_save`(
p_id_dm_tragop int,
p_ten VARCHAR(100),
p_mota VARCHAR(200),
p_trangthai int
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END;
-- bắt đầu một gia dịch 
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_tragop=0 OR p_id_dm_tragop is null THEN
INSERT INTO ch_dm_tragop(
	ten,
	mota,
	trangthai
)VALUES(
	p_ten,
	p_mota,
	p_trangthai
);
ELSE
	UPDATE ch_dm_tragop SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
	id_dm_tragop = p_id_dm_tragop;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_del`(
	p_id_donhang_sanpham int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_donhang_sanpham WHERE id_donhang_sanpham=p_id_donhang_sanpham;

IF p_dem > 0 THEN
	DELETE FROM ch_donhang_sanpham WHERE id_donhang_sanpham=p_id_donhang_sanpham;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_baohanh;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_id_dm_baohanh;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_find_all`()
BEGIN 

	SELECT * FROM ch_donhang_sanpham 
	ORDER BY id_donhang_sanpham DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_donhang_sanpham
	WHERE 
		UPPER(dongia) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_donhang_sanpham DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_get_byid`(
	p_id_donhang_sanpham int
)
BEGIN 

	SELECT * FROM ch_donhang_sanpham
	WHERE id_donhang_sanpham = p_id_donhang_sanpham;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_khuyenmaifind_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_khuyenmaifind_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_khuyenmaifind_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_donhang_sanpham_khuyenmai
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_donhang_sanpham_khuyenmai DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_khuyenmai_DEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_khuyenmai_DEL`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_khuyenmai_DEL`(
	p_id_donhang_sanpham_khuyenmai int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;
START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_donhang_sanpham_khuyenmai WHERE id_donhang_sanpham_khuyenmai=p_id_donhang_sanpham_khuyenmai;
IF @p_dem > 0 THEN
DELETE FROM ch_donhang_sanpham_khuyenmai WHERE id_donhang_sanpham_khuyenmai=p_id_donhang_sanpham_khuyenmai;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_donhang_sanpham_khuyenmai;
	SET p_thong_bao = 'Xóa thành công.';
	ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;
COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_khuyenmai_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_khuyenmai_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_khuyenmai_find_all`()
BEGIN 

	SELECT * FROM ch_donhang_sanpham_khuyenmai 
	ORDER BY id_donhang_sanpham_khuyenmai DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_khuyenmai_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_khuyenmai_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_khuyenmai_get_byid`(
	p_id_donhang_sanpham_khuyenmai int
)
BEGIN 

	SELECT * FROM ch_donhang_sanpham_khuyenmai
WHERE id_donhang_sanpham_khuyenmai = p_id_donhang_sanpham_khuyenmai;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_khuyenmai_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_khuyenmai_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_khuyenmai_save`(
p_id_donhang_sanpham_khuyenmai int,
p_id_khuyenmai int,
p_id_donhang_sanpham int

)
BEGIN
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
ROLLBACK;
GET DIAGNOSTICS CONDITION 1
p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_donhang_sanpham_khuyenmai=0 OR p_id_donhang_sanpham_khuyenmai is null THEN
INSERT INTO  ch_donhang_sanpham_khuyenmai (
id_khuyenmai,
id_donhang_sanpham
)
VALUES 
(
p_id_khuyenmai,
p_id_donhang_sanpham
);
ELSE
UPDATE ch_donhang_sanpham_khuyenmai SET
id_khuyenmai= p_id_khuyenmai,
id_donhang_sanpham = p_id_donhang_sanpham
WHERE
id_donhang_sanpham_khuyenmai = p_id_donhang_sanpham_khuyenmai;
END IF;
COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_sanpham_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_sanpham_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_save`(
	p_id_donhang_sanpham int,
	p_id_sanpham int,
	p_id_donhang int,
	p_soluong int,
	p_dongia float
	
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;


if p_id_donhang_sanpham =0 OR p_id_donhang_sanpham is null THEN

	INSERT INTO ch_donhang_sanpham(
		id_sanpham,
		id_donhang,
		soluong,
		dongia
	)VALUES(
	p_id_sanpham,
	p_id_donhang,
	p_soluong,
	p_dongia
	);
	
	
	ELSE
	UPDATE ch_donhang_sanpham SET
		id_sanpham =p_id_sanpham ,
		id_donhang=p_id_donhang,
		soluong=p_soluong,
		dongia=p_dongia
	WHERE
		id_donhang_sanpham = p_id_donhang_sanpham;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_khachhang_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_khachhang_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_khachhang_del`(
	p_id_khachhang int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_khachhang WHERE id_khachhang=p_id_khachhang;

IF @p_dem > 0 THEN
	DELETE FROM ch_khachhang WHERE id_khachhang=p_id_khachhang;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_khachhang;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_khachhang_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_khachhang_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_khachhang_find_all`()
BEGIN 

	SELECT * FROM ch_khachhang 
	ORDER BY id_khachhang DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_khachhang_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_khachhang_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_khachhang_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_khachhang
	WHERE 
		UPPER(hoten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(email) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(sodienthoai) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(matkhau) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_khachhang DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_khachhang_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_khachhang_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_khachhang_get_byid`(
	p_id_khachhang int
)
BEGIN 

	SELECT * FROM ch_khachhang 
WHERE id_khachhang = p_id_khachhang;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_khachhang_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_khachhang_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_khachhang_save`(
	p_id_khachhang int,
	p_hoten varchar(200),
	p_email varchar(200),
	p_sodienthoai varchar(20),
	p_matkhau varchar(300),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_khachhang=0 OR p_id_khachhang is null THEN
	INSERT INTO ch_khachhang(
		hoten,
		email,
		sodienthoai,
		matkhau,
		trangthai
	)VALUES(
		p_hoten,
		p_email,
		p_sodienthoai,
		p_matkhau,
		p_trangthai
	);
ELSE
	UPDATE ch_khachhang SET
		hoten = p_hoten,
		email = p_email,
		sodienthoai = p_sodienthoai,
		matkhau = p_matkhau,
		trangthai = p_trangthai
	WHERE
		id_khachhang = p_id_khachhang;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_del`(
	p_ch_sanpham int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_sanpham WHERE id_sanpham=p_id_sanpham;

IF @p_dem > 0 THEN
	DELETE FROM ch_sanpham WHERE id_sanpham=p_id_sanpham;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_ch_sanpham;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_find_all`()
BEGIN 

	SELECT * FROM ch_sanpham 
	ORDER BY id_sanpham DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_sanpham
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ma) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_sanpham DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_get_byid`(
	p_id_ch_sanpham int
)
BEGIN 

	SELECT * FROM ch_sanpham
WHERE id_sanpham = p_id_ch_sanpham;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_hinhanh_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_hinhanh_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_hinhanh_del`(
	p_id_sanpham_hinhanh int(11)
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_sanpham_hinhanh WHERE id_sanpham_hinhanh=p_id_sanpham_hinhanh;

IF @p_dem > 0 THEN
	DELETE FROM ch_sanpham_hinhanh WHERE id_sanpham_hinhanh=p_id_sanpham_hinhanh;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_sanpham_hinhanh;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_hinhanh_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_hinhanh_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_hinhanh_find_all`()
BEGIN 

	SELECT * FROM ch_sanpham_hinhanh 
	ORDER BY id_sanpham_hinhanh DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_hinhanh_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_hinhanh_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_hinhanh_get_byid`(
	p_id_sanpham_hinhanh int(11)
)
BEGIN 

	SELECT * FROM ch_sanpham_hinhanh 
WHERE id_sanpham_hinhanh = p_id_sanpham_hinhanh;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_hinhanh_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_hinhanh_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_hinhanh_save`(
p_id_sanpham_hinhanh	int(11),
p_id_sanpham	int(11),		
p_id_hinhanh	int(11)	
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_sanpham_hinhanh	=0 OR p_id_sanpham_hinhanh is null THEN
	INSERT INTO ch_sanpham_hinhanh(
		id_sanpham,
		id_hinhanh
	)VALUES(
		p_id_sanpham,
		p_id_hinhanh
	);
ELSE
	UPDATE ch_dm_baohanh SET
		id_sanpham = p_id_sanpham,
		id_hinhanh = p_id_hinhanh
	WHERE
		id_sanpham_hinhanh	 = p_id_sanpham_hinhanh	;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_khuyenmai
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_khuyenmai`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_khuyenmai`(
	p_id_sanpham_khuyenmai int,
	p_id_sanpham int,
	p_id_dm_khuyenmai	int
)
BEGIN
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_sanpham_khuyenmai=0 OR p_id_sanpham_khuyenmai is NULL THEN
			INSERT INTO ch_sanpham_khuyenmai(
						sanpham,
						dm_khuyenmai
			)VALUES(
						p_sanpham,
						p_dm_khuyenmai
			);
ELSE
	UPDATE ch_sanpham_khuyenmai SET
		sanpham = p_sanpham,
		dm_khuyenmai = p_dm_khuyenmai
	WHERE
		id_sanpham_khuyenmai = p_id_sanpham_khuyenmai;
END IF;
COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_khuyenmai_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_khuyenmai_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_khuyenmai_save`(
	p_id_sanpham_khuyenmai int,
	p_id_sanpham int,
	p_id_dm_khuyenmai	int
)
BEGIN
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_sanpham_khuyenmai=0 OR p_id_sanpham_khuyenmai is NULL THEN
			INSERT INTO ch_sanpham_khuyenmai(
						sanpham,
						dm_khuyenmai
			)VALUES(
						p_sanpham,
						p_dm_khuyenmai
			);
ELSE
	UPDATE ch_sanpham_khuyenmai SET
		sanpham = p_sanpham,
		dm_khuyenmai = p_dm_khuyenmai
	WHERE
		id_sanpham_khuyenmai = p_id_sanpham_khuyenmai;
END IF;
COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_save`(
	p_id_sanpham int,
	p_ma varchar(100),
	p_ten varchar(300),
	p_gia_nhap float(15,0),
	p_gia_ban float(15,0),
	p_gioithieu text,
	p_id_dm_sanpham int,
	p_id_dm_baohanh int,
	p_id_dm_doitra int,
	p_id_dm_giaohang int,
	p_id_dm_tragop int,
	p_id_dm_hang_sanxuat int,
	p_trangthai int		
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_sanpham=0 OR p_id_sanpham is null THEN
	INSERT INTO ch_sanpham(
		ma,
		ten,
		gia_nhap,
		gia_ban,
		gioithieu,
		id_dm_sanpham,
		id_dm_baohanh,
		id_dm_doitra,
		id_dm_giaohang,
		id_dm_tragop,
		id_dm_hang_sanxuat,
		trangthai
	)VALUES(
		p_ma,
		p_ten,
		p_gia_nhap,
		p_gia_ban,
		p_gioithieu,
		p_id_dm_sanpham,
		p_id_dm_baohanh,
		p_id_dm_doitra,
		p_id_dm_giaohang,
		p_id_dm_tragop,
		p_id_dm_hang_sanxuat,
		p_trangthai
	);
ELSE
	UPDATE ch_sanpham SET
		ma = p_ma,
		ten = p_ten,
		gia_nhap = p_gia_nhap,
		gia_ban = p_gia_ban,
		gioithieu = p_gioithieu,
		id_dm_sanpham = p_id_dm_sanpham,
		id_dm_baohanh = p_id_dm_baohanh,
		id_dm_doitra = p_id_dm_doitra,
		id_dm_giaohang = p_id_dm_giaohang,
		id_dm_tragop = p_id_dm_tragop,
		id_dm_hang_sanxuat = p_id_dm_hang_sanxuat,
		trangthai = p_trangthai
	WHERE
		ch_sanpham = p_ch_sanpham;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_thuoctinh_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_thuoctinh_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_del`(p_id_sanpham_thuoctinh int)
BEGIN

	DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
	DECLARE p_thong_bao varchar(500) DEFAULT '';
	DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
	
	-- Khai báo biến đếm
	DECLARE p_dem int;

	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
			ROLLBACK;
			GET DIAGNOSTICS CONDITION 1
			p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
	END;

	START TRANSACTION;
	SELECT @p_dem := COUNT(*) from ch_sanpham_thuoctinh WHERE id_sanpham_thuoctinh = p_id_sanpham_thuoctinh;
	if @p_dem >0 
		THEN
			DELETE FROM ch_sanpham_thuoctinh WHERE id_sanpham_thuoctinh = p_id_sanpham_thuoctinh;
			SET p_ma_loi = 'SUC';
			SET p_ket_qua = p_id_dm_baohanh;
			SET p_thong_bao = 'Xóa thành công.';
	ELSE 
		SET p_ma_loi = 'ERR';
		SET p_ket_qua = p_dem;
		SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
	END IF;
	COMMIT;
	SELECT p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_thuoctinh_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_thuoctinh_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_find_all`()
BEGIN
SELECT * FROM ch_sanpham_thuoctinh 
	ORDER BY id_sanpham_thuoctinh DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_thuoctinh_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_thuoctinh_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_find_key`(p_key VARCHAR(400))
BEGIN
	SELECT * FROM ch_sanpham_thuoctinh
	WHERE 
		UPPER(giatri
		) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_baohanh DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_thuoctinh_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_thuoctinh_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_get_byid`( p_id_sanpham_thuoctinh int)
BEGIN
	SELECT * FROM ch_sanpham_thuoctinh WHERE id_sanpham_thuoctinh = p_id_sanpham_thuoctinh;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_thuoctinh_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_thuoctinh_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_save`(p_id_sanpham_thuoctinh int,p_id_sanpham int, p_id_thuoctinh int,
																				p_giatri varchar(400), p_trangthai int)
BEGIN
	-- Khai báo các biến trả về
	DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
	DECLARE p_thong_bao varchar(500) DEFAULT '';
	DECLARE p_ket_qua varchar(1000) DEFAULT ''; 

	-- Khai báo hành động trong trường hợp gặp ngoại lệ
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
				ROLLBACK;
				GET DIAGNOSTICS CONDITION 1
				p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
				select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
		END;
		
	-- Bắt đầu 1 giao dịch
	START TRANSACTION;
	
	-- Kiểm tra xem nên tạo mới hay sửa
	IF p_id_sanpham_thuoctinh=0 OR p_id_sanpham_thuoctinh is null THEN
		INSERT INTO ch_sanpham_thuoctinh(id_sanpham, id_thuoctinh, giatri, trangthai)
		VALUES(p_id_sanpham, p_id_thuoctinh, p_giatri, p_trangthai);
	ELSE
		UPDATE ch_sanpham_thuoctinh 
		SET id_sanpham = p_id_sanpham, id_thuoctinh = p_id_thuoctinh, giatri = p_giatri, trangthai = p_trangthai
		WHERE
			id_sanpham_thuoctinh = p_id_sanpham_thuoctinh;
	END IF;

	COMMIT;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
	SET p_thong_bao = 'Lưu thành công.';
	select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_baiviet_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_baiviet_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_baiviet_save`(
	p_id_dm_baiviet int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_baivieth=0 OR p_id_dm_baiviet is null THEN
	INSERT INTO ch_dm_baiviet(
	id_dm_baiviet_cha,
		ten,
		mota,
		trangthai
	)VALUES(
	id_dm_baiviet_cha,
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_baiviet SET
	id_dm_baiviet_cha=id_dm_baiviet_cha,
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_baohanh = p_id_dm_baiviet_cha;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_baohanh_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_baohanh_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_baohanh_del`(
	p_id_dm_baohanh int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_baohanh WHERE id_dm_baohanh=p_id_dm_baohanh;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_baohanh WHERE id_dm_baohanh=p_id_dm_baohanh;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_baohanh;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_baohanh_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_baohanh_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_baohanh_save`(
	p_id_dm_baohanh int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_baohanh=0 OR p_id_dm_baohanh is null THEN
	INSERT INTO ch_dm_baohanh(
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_baohanh SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_baohanh = p_id_dm_baohanh;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_hinhthuc_thanhtoan
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_hinhthuc_thanhtoan`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_hinhthuc_thanhtoan`(
	p_id_dm_hinhthuc_thanhtoan int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_hinhthuc_thanhtoan = 0 OR p_id_dm_hinhthuc_thanhtoan is null THEN
	INSERT INTO ch_dm_hinhthuc_thanhtoan(
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_hinhthuc_thanhtoan SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_hinhthuc_thanhtoan = p_id_dm_hinhthuc_thanhtoan;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_sanpham_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_sanpham_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_sanpham_del`(
	p_id_dm_sanpham int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
	select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_dm_sanpham WHERE id_dm_sanpham=p_id_dm_sanpham;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_sanpham WHERE id_dm_sanpham=p_id_dm_sanpham;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_sanpham;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_sanpham_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_sanpham_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_sanpham_find_all`()
BEGIN 

	SELECT * FROM ch_dm_sanpham 
	ORDER BY id_dm_sanpham DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_sanpham_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_sanpham_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_sanpham_save`(
	p_id_dm_sanpham int,
	p_ten varchar(100),
	p_id_dm_sanpham_cha int,
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_sanpham=0 OR p_id_dm_sanpham is null THEN
	INSERT INTO ch_dm_sanpham(
		ten,
		id_dm_sanpham_cha,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_id_dm_sanpham_cha,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_sanpham SET
		ten = p_ten,
		id_dm_sanpham_cha=p_id_dm_sanpham_cha,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_sanpham = p_id_dm_sanpham;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';

select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_tragop_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_tragop_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_tragop_find_all`()
BEGIN 

	SELECT * FROM ch_dm_tragop 
	ORDER BY id_dm_tragop DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_tragop_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_tragop_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_tragop_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_tragop
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_tragop DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_dm_tragop_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_tragop_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_tragop_save`(
p_id_dm_tragop int,
p_ten VARCHAR(100),
p_mota VARCHAR(200),
p_trangthai int
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END;
-- bắt đầu một gia dịch 
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_dm_tragop=0 OR p_id_dm_tragop is null THEN
INSERT INTO ch_dm_tragop(
	ten,
	mota,
	trangthai
)VALUES(
	p_ten,
	p_mota,
	p_trangthai
);
ELSE
	UPDATE ch_dm_tragop SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
	id_dm_tragop = p_id_dm_tragop;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_taikhoan_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_taikhoan_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_taikhoan_del`(
	p_id_taikhoan int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem = count(*) FROM ht_taikhoan_del WHERE id_taikhoan=p_id_taikhoan;

IF @p_dem > 0 THEN
	DELETE FROM ht_taikhoan_del WHERE id_taikhoan=p_id_taikhoan;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_taikhoan;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_id_taikhoan;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_taikhoan_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_taikhoan_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_taikhoan_find_all`()
BEGIN 

	SELECT * FROM ht_taikhoan 
	ORDER BY id_taikhoan DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_taikhoan_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_taikhoan_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_taikhoan_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_ht_taikhoan
	WHERE 
		UPPER(taikhoan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(sodienthoai) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_ht_taikhoan DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_taikhoan_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_taikhoan_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_taikhoan_get_byid`(
	p_id_taikhoan int
)
BEGIN 

	SELECT * FROM ch_ht_taikhoan 
WHERE id_ht_taikhoan = p_id_ht_taikhoan;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_taikhoan_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_taikhoan_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_taikhoan_save`(
	p_id_taikhoan INT,
	p_taikhoan VARCHAR(100),
	p_matkhau VARCHAR(50),
	p_hoten VARCHAR(200),
	p_sodienthoai VARCHAR(20),
	p_email VARCHAR(200),
	p_id_vaitro INT,
	p_trangthai INT
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

IF p_id_taikhoan=0 OR p_id_taikhoan is null THEN
	INSERT INTO ht_taikhoan(
		taikhoan ,
	    matkhau ,
	    hoten,
	    sodienthoai,
	    email,
	    id_vaitro,
	    trangthai
	)VALUES(
		p_taikhoan,
		p_matkhau,
		p_hoten,
		p_sodienthoai,
		p_email,
		p_id_vaitro,
		p_trangthai
	);
ELSE
	UPDATE ht_taikhoan SET
        taikhoan = p_taikhoan,
		matkhau = p_matkhau,
		hoten = p_hoten,
		sodienthoai=p_sodienthoai,
		email=p_email,
		id_vaitro=p_id_vaitro,
		trangthai=p_trangthai
	WHERE
		id_taikhoan = p_id_taikhoan;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_vaitro_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_vaitro_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_vaitro_del`(
	p_id_vaitro int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ht_vaitro WHERE id_vaitro=p_id_vairo;

IF @p_dem > 0 THEN
	DELETE FROM ht_vaitro WHERE id_vaitro=p_id_vaitro;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_vaitro;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_vaitro_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_vaitro_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_vaitro_find_all`()
BEGIN 

	SELECT * FROM ht_vaitro 
	ORDER BY id_vaitro DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_vaitro_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_vaitro_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_vaitro_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ht_vaitro
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_vaitro DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_vaitro_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_vaitro_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_vaitro_get_byid`(
	p_id_dm_baohanh int
)
BEGIN 

	SELECT * FROM ht_vaitro 
WHERE id_vaitro = p_id_vaitro;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_vaitro_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_vaitro_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_vaitro_save`(
	p_id_vaitro int,
	p_ten varchar(100),
	p_mota varchar(200),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_vaitro=0 OR p_id_vaitro is null THEN
	INSERT INTO ht_vaitro(
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE ht_vaitro SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_vaitro = p_id_vaitro;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_khachhang_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_khachhang_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_khachhang_save`(
	p_id_khachhang int,
	p_hoten varchar(200),
	p_email varchar(200),
	p_sodienthoai varchar(20),
	p_matkhau varchar(300),
	p_trangthai int 
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_khachhang=0 OR p_id_khachhang is null THEN
	INSERT INTO ch_khachhang(
		hoten,
		email,
		sodienthoai,
		matkhau,
		trangthai
	)VALUES(
		p_hoten,
		p_email,
		p_sodienthoai,
		p_matkhau,
		p_trangthai
	);
ELSE
	UPDATE ch_khachhang SET
		hoten = p_hoten,
		email = p_email,
		sodienthoai = p_sodienthoai,
		matkhau = p_matkhau,
		trangthai = p_trangthai
	WHERE
		id_khachhang = p_id_khachhang;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_baiviet_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_baiviet_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_baiviet_del`(
	p_id_baiviet int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai bĂ¡o biáº¿n Ä‘áº¿m
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM nd_baiviet WHERE id_baiviet=p_id_baiviet;

IF @p_dem > 0 THEN
	DELETE FROM nd_baiviet WHERE id_baiviet=p_id_baiviet;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_baiviet;
	SET p_thong_bao = 'Xoa thanh cong.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Khong tim thay . that bai.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_baiviet_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_baiviet_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_baiviet_find_all`()
BEGIN 

	SELECT * FROM nd_baiviet 
	ORDER BY id_baiviet DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_baiviet_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_baiviet_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_baiviet_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM nd_baiviet
	WHERE 
		UPPER(tieude) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(trichdan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(noidung) LIKE CONCAT('%',UPPER(p_key),'%')

		
	ORDER BY id_baiviet DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_baiviet_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_baiviet_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_baiviet_get_byid`(
	p_id_baiviet int
)
BEGIN 

	SELECT * FROM nd_baiviet 
WHERE id_baiviet = p_id_baiviet;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_baiviet_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_baiviet_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_baiviet_save`(
	p_id_baiviet int(11),
	p_tieude varchar(200),
	p_trichdan varchar(300),
	p_anh_daidien varchar (400),
	p_noidung text,
	p_ngay_tao date,
	p_ngay_dang date,
	p_id_taikhoan_tao int,
	p_id_dm_baiviet int,
	p_luotxem int,
	p_trangthai int
	
	
	
)
begin
DECLARE p_ma_loi VARCHAR(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT  '';
DECLARE p_ket_qua varchar(50) DEFAULT '';

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;
IF p_id_baiviet =0 or p_id_baiviet is null THEN
INSERT INTO nd_baiviet(
	id_baiviet,
	tieude,
	trichdan,
	anh_daidien,
	noidung,
	ngay_tao,
	ngay_dang,
	id_taikhoan_tao,
	id_dm_baiviet,
	luotxem,
	trangthai
)VALUES(
			p_id_baiviet,
			p_tieude,
			p_trichdan,
			p_anh_daidien,
			p_noidung,
			p_ngay_tao,
			p_ngay_dang,
			p_id_taikhoan_tao,
			p_id_dm_baiviet,
			p_luotxem,
			p_trangthai
	);


ELSE
	UPDATE nd_baiviet SET
		id_baiviet = p_id_baiviet,
	tieude = p_tieude,
	trichdan=p_trichdan,
	anh_daidien=p_anh_daidien,
	noidung=p_noidung,
	ngay_tao=p_ngay_tao,
	ngay_dang=p_ngay_dang,
	id_taikhoan_tao=p_id_taikhoan_tao,
	id_dm_baiviet=p_id_dm_baiviet,
	luotxem=p_luotxem,
	trangthai = p_trangthai
	WHERE
		id_dm_baohanh = p_id_dm_baohanh;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Luu Thanh Cong';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_dm_album_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_album_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_album_del`(
 p_id_dm_album int
)
BEGIN
DECLARE p_ma_loi VARCHAR(20) DEFAULT 'ERR';
DECLARE p_thong_bao VARCHAR (500) DEFAULT '';
DECLARE p_ket_qua VARCHAR(1000) DEFAULT '';
 DECLARE p_dem int;
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN 
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE , p_thong_bao = MESSAGE_TEXT;
		SELECT p_ma_loi MA_LOI,p_ket_qua KET_QUA,p_thong_bao THONG_BAO;

END;

START TRANSACTION;
SELECT @p_dem := COUNT(*) FROM nd_dm_album WHERE id_dm_album = p_id_dm_album;
IF @p_dem > 0 THEN
		DELETE FROM  nd_dm_album WHERE id_dm_album = p_id_dm_album;
		SET p_ma_loi = 'SUC';
		SET p_thong_bao = 'Xoa thanh cong';
		SET p_ket_qua = p_id_dm_album;
ELSE
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_id_dm_album;
	SET p_thong_bao = 'Xoa that bai';
	
END IF;
COMMIT;
SELECT p_ma_loi MA_LOI,p_ket_qua KET_QUA,p_thong_bao THONG_BAO;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_dm_album_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_album_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_album_find_all`()
BEGIN
	SELECT * FROM nd_dm_album
	ORDER BY id_dm_album DESC;
	end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_dm_album_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_album_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_album_find_key`(
	p_key VARCHAR(100)
)
BEGIN
	SELECT * FROM nd_dm_album
	WHERE
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR 		UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%');

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_dm_album_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_album_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_album_get_byid`(
	p_id_dm_album int
)
BEGIN 

	SELECT * FROM nd_dm_album
WHERE id_dm_album = p_id_dm_album;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_dm_album_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_album_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_album_save`(
	p_id_dm_album int,
	p_ten VARCHAR(300),
	p_mota VARCHAR(300),
	p_trangthai int
)
BEGIN
DECLARE p_ma_loi VARCHAR(20) DEFAULT 'ERR';
DECLARE p_thong_bao VARCHAR (500) DEFAULT '';
DECLARE p_ket_qua VARCHAR(1000) DEFAULT '';
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN 
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao = MESSAGE_TEXT;
END;
START TRANSACTION;
IF p_id_dm_album=0 OR p_id_dm_album is NULL THEN
	INSERT INTO nd_dm_album
	(
	ten,
	mota,
	trangthai
	)VALUES(
	p_ten,
	p_mota,
	p_trangthai
	);
ELSE
	UPDATE nd_dm_album SET
	ten = p_ten,
	mota = p_mota,
	trangthai = p_trangthai
	WHERE 
	id_dm_album = p_id_dm_album;
END IF;
COMMIT;
SET p_ma_loi = 'SUC';
SET p_thong_bao = 'Luu thanh cong';
SET p_ket_qua = CONVERT (LAST_INSERT_ID(),CHAR (50));
SELECT p_ma_loi MA_LOI,p_thong_bao THONG_BAO,p_ket_qua KET_QUA;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_hinhanh_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_hinhanh_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_hinhanh_del`(
	p_id_hinhanh int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM nd_hinhanh WHERE id_hinhanh=p_id_hinhanh;

IF @p_dem > 0 THEN
	DELETE FROM nd_hinhanh WHERE id_hinhanh=p_id_hinhanh;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_hinhanh;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_hinhanh_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_hinhanh_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_hinhanh_find_all`()
BEGIN 

	SELECT * FROM nd_hinhanh 
	ORDER BY id_nd_hinhanh DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_hinhanh_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_hinhanh_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_hinhanh_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM nd_hinhanh
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(tieude) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_ DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_hinhanh_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_hinhanh_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_hinhanh_get_byid`(
	p_id_hinhanh int
)
BEGIN 

	SELECT * FROM nd_hinhanh 
WHERE id_hinhanh = p_id_hinhanh;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_hinhanh_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_hinhanh_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_hinhanh_save`(
	p_id_hinhanh int,
	p_tieude varchar(100),
	p_url varchar(400),
	p_ten varchar(200),
	p_id_dm_album int
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_hinhanh=0 OR p_id_hinhanh is null THEN
	INSERT INTO nd_hinhanh(
		tieude,
		url,
		ten,
		id_dm_album
	)VALUES(
		p_tieude,
		p_url,
		p_ten,
		p_id_dm_album
	);
ELSE
	UPDATE nd_hinhanh SET
		tieude = p_tieude,
		url = p_url,
		ten = p_ten,
		id_dm_album = p_id_dm_album
	WHERE
		id_dm_album = p_id_dm_album;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_sanpham_hinhanh_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sanpham_hinhanh_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_sanpham_hinhanh_del`(
	p_id_sanpham_hinhanh int(11)
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_sanpham_hinhanh WHERE id_sanpham_hinhanh=p_id_sanpham_hinhanh;

IF @p_dem > 0 THEN
	DELETE FROM ch_sanpham_hinhanh WHERE id_sanpham_hinhanh=p_id_sanpham_hinhanh;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_sanpham_hinhanh;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_sanpham_hinhanh_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sanpham_hinhanh_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_sanpham_hinhanh_get_byid`(
	p_id_sanpham_hinhanh int
)
BEGIN 

	SELECT * FROM ch_sanpham_hinhanh 
WHERE id_sanpham_hinhanh = p_id_sanpham_hinhanh;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_sanpham_hinhanh_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sanpham_hinhanh_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_sanpham_hinhanh_save`(
p_id_sanpham_hinhanh	int(11),
p_id_sanpham	int(11),		
p_id_hinhanh	int(11)	
)
BEGIN 
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp gặp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_sanpham_hinhanh	=0 OR p_id_sanpham_hinhanh is null THEN
	INSERT INTO ch_sanpham_hinhanh(
		id_sanpham,
		id_hinhanh
	)VALUES(
		p_id_sanpham,
		p_id_hinhanh
	);
ELSE
	UPDATE ch_dm_baohanh SET
		id_sanpham = p_id_sanpham,
		id_hinhanh = p_id_hinhanh
	WHERE
		id_sanpham_hinhanh	 = p_id_sanpham_hinhanh	;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_sanpham_khuyenmai_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sanpham_khuyenmai_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_sanpham_khuyenmai_del`(
	p_id_sanpham_khuyenmai int
)
BEGIN 
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo biến đếm
DECLARE p_dem int;

DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;

START TRANSACTION;

SELECT @p_dem := count(*) FROM ch_sanpham_khuyenmai WHERE id_sanpham_khuyenmai=p_id_sanpham_khuyenmai;

IF @p_dem > 0 THEN
	DELETE FROM ch_sanpham_khuyenmai WHERE id_sanpham_khuyenmai=p_id_sanpham_khuyenmai;
	SET p_ket_qua = p_id_sanpham_khuyenmai;
	SET p_thong_bao = 'Xóa thành công.';
ELSE 
	SET p_ma_loi = 'ERR';
	SET p_ket_qua = p_dem;
	SET p_thong_bao = 'Không tìm thấy. Xóa thất bại.';
END IF;

COMMIT;
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_sanpham_khuyenmai_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sanpham_khuyenmai_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_sanpham_khuyenmai_find_all`()
BEGIN 

	SELECT * FROM ch_sanpham_khuyenmai 
	ORDER BY id_sanpham_khuyenmai DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_sanpham_khuyenmai_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sanpham_khuyenmai_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_sanpham_khuyenmai_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_sanpham_khuyenmai
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_baohanh DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_sanpham_khuyenmai_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sanpham_khuyenmai_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_sanpham_khuyenmai_get_byid`(
	p_id_dm_baohanh int
)
BEGIN 

	SELECT * FROM ch_sanpham_khuyenmai
WHERE id_sanpham_khuyenmai = p_id_sanpham_khuyenmai;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_sanpham_khuyenmai_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sanpham_khuyenmai_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_sanpham_khuyenmai_save`(
	p_id_sanpham_khuyenmai int,
	p_id_sanpham int,
	p_id_dm_khuyenmai	int
)
BEGIN
-- Khai báo các biến trả về
DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
DECLARE p_thong_bao varchar(500) DEFAULT '';
DECLARE p_ket_qua varchar(1000) DEFAULT ''; 
-- Khai báo hành động trong trường hợp ngoại lệ
DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
		ROLLBACK;
		GET DIAGNOSTICS CONDITION 1
		p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
		select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END;
-- Bắt đầu 1 giao dịch
START TRANSACTION;
-- Kiểm tra xem nên tạo mới hay sửa
IF p_id_sanpham_khuyenmai=0 OR p_id_sanpham_khuyenmai is NULL THEN
			INSERT INTO ch_sanpham_khuyenmai(
						sanpham,
						dm_khuyenmai
			)VALUES(
						p_sanpham,
						p_dm_khuyenmai
			);
ELSE
	UPDATE ch_sanpham_khuyenmai SET
		sanpham = id_sanpham,
		dm_khuyenmai = id_dm_khuyenmai_d
	WHERE
		id_sanpham_khuyenmai = p_id_sanpham_khuyenmai;
END IF;
COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END
;;
DELIMITER ;
