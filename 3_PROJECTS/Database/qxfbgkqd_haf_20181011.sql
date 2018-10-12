/*
Navicat MySQL Data Transfer

Source Server         : p01.vinahost.vn-qxfbg_vnh
Source Server Version : 50626
Source Host           : p01.vinahost.vn:3306
Source Database       : qxfbgkqd_haf

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2018-10-11 23:27:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ch_danhgia
-- ----------------------------
DROP TABLE IF EXISTS `ch_danhgia`;
CREATE TABLE `ch_danhgia` (
  `id_danhgia` int(11) NOT NULL AUTO_INCREMENT,
  `diem` int(4) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_khachhang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_danhgia`) USING BTREE,
  KEY `id_sanpham` (`id_sanpham`) USING BTREE,
  KEY `id_khachhang` (`id_khachhang`) USING BTREE,
  CONSTRAINT `ch_danhgia_ibfk_2` FOREIGN KEY (`id_khachhang`) REFERENCES `ch_khachhang` (`id_khachhang`),
  CONSTRAINT `ch_danhgia_ibfk_3` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_danhgia
-- ----------------------------
INSERT INTO `ch_danhgia` VALUES ('2', '5', '13', '5');
INSERT INTO `ch_danhgia` VALUES ('3', '7', '17', '9');
INSERT INTO `ch_danhgia` VALUES ('5', '6', '20', '10');
INSERT INTO `ch_danhgia` VALUES ('6', '4', '18', '10');
INSERT INTO `ch_danhgia` VALUES ('7', '9', '31', '8');
INSERT INTO `ch_danhgia` VALUES ('8', '5', '30', '5');
INSERT INTO `ch_danhgia` VALUES ('9', '6', '30', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_baohanh
-- ----------------------------
INSERT INTO `ch_dm_baohanh` VALUES ('3', 'Bảo hành đổi trả ', 'lỗi do nhà sản xuất', '1');
INSERT INTO `ch_dm_baohanh` VALUES ('4', 'Bảo hành trọn đời', 'Bảo hành phần mềm', '1');
INSERT INTO `ch_dm_baohanh` VALUES ('5', 'Bảo hành 24 tháng', 'Bảo hành phần cứng', '1');
INSERT INTO `ch_dm_baohanh` VALUES ('6', 'Bảo hành 12 tháng', 'Bảo hàn lỗi phụ kiện', '1');

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
INSERT INTO `ch_dm_doitra` VALUES ('1', 'Bảo hành', 'Bảo hành hoặc sửa chữa có thu phí theo quy định của nhà cung cấp', '1');
INSERT INTO `ch_dm_doitra` VALUES ('2', 'Đổi mới', 'Sản phẩm lỗi do nhà cung cấp', '1');
INSERT INTO `ch_dm_doitra` VALUES ('3', 'Trả không thu phí', 'Áp dụng với một số sản phẩm không lỗi', '1');
INSERT INTO `ch_dm_doitra` VALUES ('4', 'Không hỗ trợ đổi trả', 'Áp dụng với một số sản phẩm không lỗi, hoặc sản phẩm lỗi do người sử dụng', '1');

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
INSERT INTO `ch_dm_giaohang` VALUES ('9', 'Nhận hàng tại siêu thị', 'Mua hàng trả tiền tại chỗ', '1');
INSERT INTO `ch_dm_giaohang` VALUES ('10', 'Giao hàng tại nhà', 'Shiper giao hàng tận nhà', '1');
INSERT INTO `ch_dm_giaohang` VALUES ('11', 'Giao hàng theo địa chỉ đơn hàng', 'Giao hàng theo đơn', '1');
INSERT INTO `ch_dm_giaohang` VALUES ('12', 'Ship hàng toàn quốc', 'Gửi hàng chuyển phát nhanh', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_hang_sanxuat
-- ----------------------------
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('7', 'Samsung', 'sungsung.png', 'samsung', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('8', 'Apple', 'apple.png', 'iphone', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('9', 'Oppo', 'oppo.png', 'oppo', '0');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('10', 'vivo', 'vivo.png', 'vivo', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('11', 'Xiaomi', 'xiaomi.png', 'Xiaomi', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('12', 'Lenovo', 'lenovo.png', 'Lenovo', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('13', 'Asus', 'asus.png', 'Asus', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('14', 'HTC', 'htc.png', 'HTC', '0');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('15', 'LG', 'lg.png', 'LG', '1');
INSERT INTO `ch_dm_hang_sanxuat` VALUES ('16', 'Sony', 'sony.png', 'Sony', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_hinhthuc_thanhtoan
-- ----------------------------
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('0', '', null, null);
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('1', 'Điểm thưởng', 'Thanh toán bằng điểm thưởng tích khi mua hàng', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('2', 'Thẻ', 'Thanh toán bằng thẻ ngân hàng', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('3', 'Thận', 'Thanh toán bằng thận', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('4', 'Trả góp', 'Trả góp thông qua FE CREDIT', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('5', 'Cướp', 'Đến cướp tại cửa hàng', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('6', 'Điểm thưởng', 'Thanh toán bằng điểm thưởng tích khi mua hàng', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('7', 'Đổi', 'Đổi hàng cũ lấy hàng mới', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('8', 'Trả hộ', 'Người khác thanh toán hộ', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('9', 'Thanh toán khi nhận hàng', 'Giao đến tay khách hàng rồi thanh toán', '1');
INSERT INTO `ch_dm_hinhthuc_thanhtoan` VALUES ('10', 'Thanh toán Online', 'Thanh toán thông qua thẻ Visa, Master', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_khuyenmai
-- ----------------------------
INSERT INTO `ch_dm_khuyenmai` VALUES ('14', 'KM001', 'Khuyến mãi tặng bao da chống xước', 'Khuyến mãi tặng bao da chống xước', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('15', 'KM010', 'Khuyến mại tặng sạc dự phòng', 'Khuyến mại tặng sạc dự phòng', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('16', 'KM002', 'Khuyến mại giảm giá 10% phụ kiện', 'Giảm giá chuột, bàn phím', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('17', 'KM003', 'Khuyến mại miếng dán màn hình', 'Khuyến mại tặng miếng dán màn hình', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('18', 'KM004', 'Khuyến mại gậy chụp ảnh tự sướng', 'Giảm giá 50% gậy tự sướng khi mua kèm điện thoại', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('19', 'KM005', 'Khuyến mại giảm giá 5% khi thanh toán qua thẻ Vietcombank', 'Thanh toán bằng thẻ được giảm 5%', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('20', 'KM009', 'Tặng voucher', 'Tặng thẻ mua hàng trị giá 500000 nghìn', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('21', 'KM008', 'Khuyến mại balo khi mua laptop', 'Tặng balo máy tính chính hãng', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('22', 'KM007', 'Khuyến mại sim v90', 'Tặng sim Viettel V90 với 2gb tốc độ cao một ngày', '1');
INSERT INTO `ch_dm_khuyenmai` VALUES ('23', 'KM006', 'Khuyến mại giảm giá', 'Giảm giá khi mua phụ kiện với hóa đơn trên 10 triệu', '1');

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
INSERT INTO `ch_dm_sanpham` VALUES ('3', 'Lap top', '3', 'May tinh xach tay', '1');
INSERT INTO `ch_dm_sanpham` VALUES ('4', 'Điện thoại', '4', 'Điện thoại di động', '1');
INSERT INTO `ch_dm_sanpham` VALUES ('5', 'Tivi', '5', 'tivi', '0');
INSERT INTO `ch_dm_sanpham` VALUES ('6', 'Tai nghe', '6', 'Phu kien', '1');
INSERT INTO `ch_dm_sanpham` VALUES ('7', 'Sac', '7', 'Phu kien', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_thuoctinh
-- ----------------------------
INSERT INTO `ch_dm_thuoctinh` VALUES ('1', 'Màu sắc', 'Màu đỏ', '1');
INSERT INTO `ch_dm_thuoctinh` VALUES ('2', 'Màu trắng', 'Màu trắng', '1');
INSERT INTO `ch_dm_thuoctinh` VALUES ('3', 'Màu đen', 'Màu đen', '1');
INSERT INTO `ch_dm_thuoctinh` VALUES ('4', 'Màu vàng', 'Màu vàng', '1');
INSERT INTO `ch_dm_thuoctinh` VALUES ('5', 'Màu bạc', 'Màu bạc', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_dm_tragop
-- ----------------------------
INSERT INTO `ch_dm_tragop` VALUES ('1', 'trả góp 0%', 'trả góp', '1');
INSERT INTO `ch_dm_tragop` VALUES ('2', 'trả góp 5%', 'trả góp', '1');
INSERT INTO `ch_dm_tragop` VALUES ('3', 'trả góp 10%', 'trả góp', '1');
INSERT INTO `ch_dm_tragop` VALUES ('4', 'trả góp 15%', 'trả góp', '1');
INSERT INTO `ch_dm_tragop` VALUES ('5', 'trả góp 20%', 'trả góp', '1');
INSERT INTO `ch_dm_tragop` VALUES ('6', 'trả góp 25%', 'trả góp', '1');
INSERT INTO `ch_dm_tragop` VALUES ('7', 'trả góp 30%', 'trả góp', '1');

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
INSERT INTO `ch_donhang` VALUES ('0', 'DH01', '2018-10-05', '2018-10-07', '2018-10-07', '2018-10-10', '3', 'Nguyễn Văn Long', '0918257857', 'Hà Nội', 'Điện thoại SamSung', '1', '3', '4', '1');
INSERT INTO `ch_donhang` VALUES ('1', 'HH02', '2018-10-10', '2018-10-09', '2018-10-10', '2018-10-11', '4', 'Trịnh Đình Tuấn', '098746274', 'Ninh Bình', 'Điện thoại Iphone', '2', '4', '4', '1');
INSERT INTO `ch_donhang` VALUES ('2', 'DH03', '2018-10-11', '2018-10-12', '2018-10-13', '2018-10-13', '5', 'Lê Văn Long', '0149985398', 'Nghệ An', 'Điện thoại opple', '3', '5', '5', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_donhang_sanpham
-- ----------------------------
INSERT INTO `ch_donhang_sanpham` VALUES ('13', '6', '0', '20', '14000000.00');
INSERT INTO `ch_donhang_sanpham` VALUES ('14', '7', '0', '50', '30000000.00');
INSERT INTO `ch_donhang_sanpham` VALUES ('15', '12', '0', '30', '16000000.00');
INSERT INTO `ch_donhang_sanpham` VALUES ('16', '15', '0', '100', '25000000.00');
INSERT INTO `ch_donhang_sanpham` VALUES ('17', '8', '0', '60', '36000000.00');

-- ----------------------------
-- Table structure for ch_donhang_sanpham_khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `ch_donhang_sanpham_khuyenmai`;
CREATE TABLE `ch_donhang_sanpham_khuyenmai` (
  `id_donhang_sanpham_khuyenmai` int(11) NOT NULL AUTO_INCREMENT,
  `id_khuyenmai` int(11) NOT NULL,
  `id_donhang_sanpham` int(11) NOT NULL,
  PRIMARY KEY (`id_donhang_sanpham_khuyenmai`) USING BTREE,
  KEY `id_khuyenmai` (`id_khuyenmai`) USING BTREE,
  KEY `id_donhang_sanpham` (`id_donhang_sanpham`) USING BTREE,
  CONSTRAINT `ch_donhang_sanpham_khuyenmai_ibfk_1` FOREIGN KEY (`id_khuyenmai`) REFERENCES `ch_dm_khuyenmai` (`id_dm_khuyenmai`),
  CONSTRAINT `ch_donhang_sanpham_khuyenmai_ibfk_2` FOREIGN KEY (`id_donhang_sanpham`) REFERENCES `ch_donhang_sanpham` (`id_donhang_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_donhang_sanpham_khuyenmai
-- ----------------------------
INSERT INTO `ch_donhang_sanpham_khuyenmai` VALUES ('1', '15', '15');
INSERT INTO `ch_donhang_sanpham_khuyenmai` VALUES ('2', '17', '16');
INSERT INTO `ch_donhang_sanpham_khuyenmai` VALUES ('3', '20', '15');
INSERT INTO `ch_donhang_sanpham_khuyenmai` VALUES ('4', '21', '17');
INSERT INTO `ch_donhang_sanpham_khuyenmai` VALUES ('5', '16', '13');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_khachhang
-- ----------------------------
INSERT INTO `ch_khachhang` VALUES ('3', 'Nguyễn Văn Nhân', 'nguyenvannhan@gmail.com', '0965453288', '456', '1');
INSERT INTO `ch_khachhang` VALUES ('4', 'Nguyễn Thị Trinh', 'nguyenthitrinh@gmail.com', '0965453266', '789', '1');
INSERT INTO `ch_khachhang` VALUES ('5', 'Nguyễn Thị Ngọc', 'nguyenthingoc@gmail.com', '096545456', '012', '1');
INSERT INTO `ch_khachhang` VALUES ('6', 'Lê Văn Long', 'levanlong@gmail.com', '0964553288', '458', '1');
INSERT INTO `ch_khachhang` VALUES ('7', 'Nguyễn Văn Giáp', 'nguyenvangiap@gmail.com', '0965633288', '156', '1');
INSERT INTO `ch_khachhang` VALUES ('8', 'Nguyễn Văn Đô', 'nguyenvando@gmail.com', '0965343288', '456', '1');
INSERT INTO `ch_khachhang` VALUES ('9', 'Nguyễn Đình Dương', 'nguyenddinhduong@gmail.com', '982571858', '457', '1');
INSERT INTO `ch_khachhang` VALUES ('10', 'Phạm Minh Tâm', 'phamminhtam@gmail.com', '943571858', '157', '1');
INSERT INTO `ch_khachhang` VALUES ('11', 'Cao Văn Trung', 'caovantrung@gmail.com', '943451858', '257', '1');
INSERT INTO `ch_khachhang` VALUES ('12', 'Nguyễn Tiến Dũng', 'nguyentiendung@gmail.com', '943475858', '247', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_sanpham
-- ----------------------------
INSERT INTO `ch_sanpham` VALUES ('6', 'SP010', 'Iphone 8', '15000000.00', '17000000.00', 'Iphone 8 mới', null, null, null, null, null, null, '1');
INSERT INTO `ch_sanpham` VALUES ('7', 'SP010', 'Iphone 6', '10000000.00', '11000000.00', 'Iphone 6 mới', null, null, null, null, null, null, '1');
INSERT INTO `ch_sanpham` VALUES ('8', 'SP0001', 'Iphone XRS', '15000000.00', '200000000.00', 'Điện thoại Iphone đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('12', 'SP012', 'Iphone 6s Plus', '10000000.00', '11000000.00', 'Iphone 6s Plus mới', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('13', 'SP013', 'Iphone 7 Plus', '10000000.00', '11000000.00', 'Iphone 7 Plus mới', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('14', 'SP014', 'Iphone 7s Plus', '10000000.00', '11000000.00', 'Iphone 7s Plus mới', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('15', 'SP00010', 'SamSung Xperia', '10000000.00', '250000000.00', 'Điện thoại SamSung đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('16', 'SP015', 'Iphone 7s', '10000000.00', '11000000.00', 'Iphone 7s mới', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('17', 'SP00030', 'Vivo V11', '15000000.00', '200000000.00', 'Điện thoại Vivo', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('18', 'SP01000', 'Iphone 5S', '2000000.00', '2500000.00', 'Điện thoại Iphone đời 5s', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('19', 'SP0010', 'Iphone 7', '10000000.00', '150000000.00', 'Điện thoại Iphone giá trung bình', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('20', 'SP0001', 'Iphone XRS', '15000000.00', '200000000.00', 'Điện thoại Iphone đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('21', 'SP0010', 'Sony Z1', '35000000.00', '230000000.00', 'Điện thoại Sony Z1 đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('22', 'SP0004', 'Iphone 7plus', '20000000.00', '300000000.00', 'Điện thoại Iphone 7plus phiên bản quốc tế', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('23', 'SP0002', 'Iphone X', '15000000.00', '160000000.00', 'Điện thoại Iphone tai thỏ', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('24', 'SP0005', 'Sony A5', '2000000.00', '5500000.00', 'Điện thoại Sony chống nước', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('25', 'SP00011', 'SamSung Galaxy J8', '6000000.00', '75000000.00', 'Điện thoại Samsung đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('26', 'SP0010', 'Sony Z2', '45000000.00', '250000000.00', 'Điện thoại Sony Z2 đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('27', 'SP0002', 'OPPO F9 ', '6000000.00', '7690000.00', 'Điện thoại OPPO F9  đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('28', 'SP0003', 'Bphone1', '10000000.00', '150000000.00', 'Điện thoại Iphone tai thỏ', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('29', 'SP0011', 'SamSung galaxy s8', '19000000.00', '230000000.00', 'Điện thoại SamSung màn hình tràn viền', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('30', 'SP0030', 'Điện thoại Samsung Galaxy S9+ 64GB', '9000000.00', '18000000.00', 'Điện thoại Samsung dòng A cao cấp', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('31', 'SP0030', 'SAMSUNG GALAXY S8', '9000000.00', '18000000.00', 'Điện thoại Samsung dòng S cao cấp', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('32', 'SP0030', 'SAMSUNG GALAZY NOTE8', '9000000.00', '18000000.00', 'Điện thoại Samsung dòng NOTE cao cấp', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('33', 'SP01000', 'Oppo F9', '8000000.00', '8500000.00', 'Điện thoại Oppo F9 tím tinh tú', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('34', 'SP0010', 'Nokia N8', '55000000.00', '350000000.00', 'Điện thoại Nokia N8 đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('35', 'SP00029', 'Huawei P20', '15000000.00', '200000000.00', 'Điện thoại Huawei Pro', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('36', 'SP00012', 'SamSung Galaxy S9', '15000000.00', '19500000.00', 'Điện thoại Samsung đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('37', 'SP0003', 'Bphone2', '10000000.00', '160000000.00', 'Điện thoại của người Việt', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('38', 'SP0001', 'SamSung J4', '3000000.00', '20000000.00', 'Điện thoại samsung J4 ', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('39', 'SP0003', 'Bphone 3', '10000000.00', '210000000.00', 'Điện thoại Bphone đời mới nhất', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('40', 'SP00123', 'Oppo F1', '5000000.00', '20000000.00', 'Điện thoại cameraphone', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('41', 'SP1001', 'Samsung galaxy note 9', '12000000.00', '201000000.00', 'Điện thoại samsung', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('42', 'SP00030', 'Nokia', '15000000.00', '200000000.00', 'Điện thoại Nokia', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('43', 'SP0004', 'Motorola Moto G5S Plus', '2000000.00', '4490000.00', 'Điện thoại tầm trung', '4', '3', '2', '9', '2', '8', '1');
INSERT INTO `ch_sanpham` VALUES ('44', 'SP0004', 'Motorola Moto E4 Plus', '150000.00', '2290000.00', 'Điện thoại tầm trung', '4', '3', '2', '9', '2', '8', '1');

-- ----------------------------
-- Table structure for ch_sanpham_hinhanh
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham_hinhanh`;
CREATE TABLE `ch_sanpham_hinhanh` (
  `id_sanpham_hinhanh` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) DEFAULT NULL,
  `id_hinhanh` int(11) DEFAULT NULL,
  `loai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_sanpham_hinhanh`) USING BTREE,
  KEY `id_sanpham` (`id_sanpham`) USING BTREE,
  KEY `id_hinhanh` (`id_hinhanh`) USING BTREE,
  CONSTRAINT `ch_sanpham_hinhanh_ibfk_2` FOREIGN KEY (`id_hinhanh`) REFERENCES `nd_hinhanh` (`id_hinhanh`),
  CONSTRAINT `ch_sanpham_hinhanh_ibfk_3` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_sanpham_hinhanh
-- ----------------------------
INSERT INTO `ch_sanpham_hinhanh` VALUES ('1', '22', '1', '1');
INSERT INTO `ch_sanpham_hinhanh` VALUES ('2', '23', '1', '2');
INSERT INTO `ch_sanpham_hinhanh` VALUES ('3', '24', '1', '1');
INSERT INTO `ch_sanpham_hinhanh` VALUES ('4', '25', '1', '2');
INSERT INTO `ch_sanpham_hinhanh` VALUES ('5', '26', '1', '1');
INSERT INTO `ch_sanpham_hinhanh` VALUES ('6', '27', '1', '2');
INSERT INTO `ch_sanpham_hinhanh` VALUES ('7', '30', '11', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_sanpham_khuyenmai
-- ----------------------------
INSERT INTO `ch_sanpham_khuyenmai` VALUES ('1', '8', '19');
INSERT INTO `ch_sanpham_khuyenmai` VALUES ('2', '13', '21');
INSERT INTO `ch_sanpham_khuyenmai` VALUES ('3', '13', '23');
INSERT INTO `ch_sanpham_khuyenmai` VALUES ('4', '17', '22');
INSERT INTO `ch_sanpham_khuyenmai` VALUES ('5', '27', '19');
INSERT INTO `ch_sanpham_khuyenmai` VALUES ('6', '18', '15');
INSERT INTO `ch_sanpham_khuyenmai` VALUES ('7', '30', '14');

-- ----------------------------
-- Table structure for ch_sanpham_thuoctinh
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham_thuoctinh`;
CREATE TABLE `ch_sanpham_thuoctinh` (
  `id_sanpham_thuoctinh` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `id_dm_thuoctinh` int(11) NOT NULL,
  `giatri` varchar(400) DEFAULT NULL,
  `trangthai` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_sanpham_thuoctinh`) USING BTREE,
  KEY `id_sanpham` (`id_sanpham`) USING BTREE,
  KEY `id__dm_thuoctinh` (`id_dm_thuoctinh`) USING BTREE,
  CONSTRAINT `ch_sanpham_thuoctinh_ibfk_2` FOREIGN KEY (`id_dm_thuoctinh`) REFERENCES `ch_dm_thuoctinh` (`id_dm_thuoctinh`),
  CONSTRAINT `ch_sanpham_thuoctinh_ibfk_3` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ch_sanpham_thuoctinh
-- ----------------------------
INSERT INTO `ch_sanpham_thuoctinh` VALUES ('1', '16', '1', 'Mới nhập', '1');
INSERT INTO `ch_sanpham_thuoctinh` VALUES ('2', '14', '3', 'Tồn kho', '1');
INSERT INTO `ch_sanpham_thuoctinh` VALUES ('3', '16', '4', 'Mới nhập', '1');
INSERT INTO `ch_sanpham_thuoctinh` VALUES ('4', '18', '5', 'Tồn kho', '1');
INSERT INTO `ch_sanpham_thuoctinh` VALUES ('55', '30', '2', 'Mới nhập', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nd_baiviet
-- ----------------------------
INSERT INTO `nd_baiviet` VALUES ('19', 'Hình ảnh thực tế chụp từ camera siêu rộng của Galaxy A7 (2018)', 'Hữu Tình 2 giờ trước', 'inmage1', 'Galaxy A7 (2018) là smartphone đầu tiên của Samsung được trang bị 3 camera mặt sau. Chiếc máy ảnh này có thể chụp được một hình ảnh ở góc siêu rộng mà theo Samsung là “bằng tầm mắt của người dùng quan sát được”.', '2018-09-09', '2018-08-09', '2', '1', '100', '1');
INSERT INTO `nd_baiviet` VALUES ('20', 'Thương hiệu Samsung được định giá 60 tỷ USD trên Interbrand', 'Hữu Tình 23 giờ trước', 'inmage2', 'Interbrand mới đây đã phát hành danh sách “Thương hiệu toàn cầu tốt nhất năm 2018” và Samsung đã nằm trong danh sách đó ở vị trí thứ 6 với giá trị thương hiệu ước tính đạt 60 tỷ USD. Tăng 6.5% so với mức 56.2 tỷ USD được định giá vào năm ngoái.', '2018-09-09', '2018-08-09', '2', '2', '200', '0');
INSERT INTO `nd_baiviet` VALUES ('22', 'Trên tay & đánh giá nhanh Huawei Y9 2019: 4 camera AI, GPU Turbo còn gì nữa?', 'Dương Lê 4 giờ trước', 'inmage4', 'Mới đây, mẫu SoC (system-on-a-chip - Hệ thống trên một vi mạch) hàng đầu của Qualcomm trong 2019 đã được chứng nhận bởi Bluetooth SIG, với tên gọi Snapdragon SM8150.\r\nTrang chứng nhận Bluetooth SIG cho biết, Snapdragon SM8150 sẽ hỗ trợ Wi-Fi 802.11 a/b/g/n/ac 2 × 2 MIMO cũng như Bluetooth 5.0 Low Energy.Tuy nhiên, “tên thiết kế” trên trang chứng nhận liệt kê là WCN3998-0, trong đó đề cập đến chip không dây mới nhất của Qualcomm. Được công bố vào tháng 2 năm nay, chip WCN3998 hỗ trợ chuẩn Wi-Fi 802.11ax thế hệ mới.', '2018-09-09', '2018-08-09', '2', '3', '400', '0');
INSERT INTO `nd_baiviet` VALUES ('23', '7 ứng dụng & game hấp dẫn đang FREE cho iPhone, iPad (5/10)', 'Dương Lê 5 giờ trước', 'inmage5', 'Mystery of Fortune 2 thuộc thể loại game nhập vai, hãy khám khá ngục tối cùng quân lính của bạn. Với cương vị người lãnh đạo, hãy cố gắng xây dựng đội hình chiến đấu mạnh mẽ, phòng thủ kiên cố và hiệu quả nhất để vượt qua hàng giờ chơi đầy thử thách.\r\n\r\nTải Mystery of Fortune 2 tại đây | Hỗ trợ iOS 8.0 trở lên | Dung lượng 103.8 MB.', '2018-09-09', '2018-08-09', '2', '4', '400', '0');
INSERT INTO `nd_baiviet` VALUES ('24', 'Những lý do nên chọn mua Galaxy J8, smartphone tầm trung từ Samsung', 'Nguyễn Khắc Ngọc 21 giờ trước', 'inmage3', 'Phiên bản Huawei Y9 2019 được mình cầm trên tay là Blue Swarovski. Có lẽ nhà sản xuất Huawei đã lấy cảm hứng từ viên pha lê Swarovski rực rỡ, nổi tiếng và cao cấp đến từ nước Áo xinh đẹp mộng mơ.Do mặt lưng của máy được bo cong mạnh 3D nên cảm giác cầm nắm sản phẩm khá chắc tay và có thể thay đổi màu sắc ở nhiều góc nhìn khác nhau tùy thuộc vào ánh sáng của môi trường.', '2018-09-09', '2018-08-09', '2', '5', '300', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nd_dm_album
-- ----------------------------
INSERT INTO `nd_dm_album` VALUES ('1', 'Điện thoại', 'Điện thoại di động', '1');
INSERT INTO `nd_dm_album` VALUES ('6', 'Laptop', 'Máy tính xách tay', '1');
INSERT INTO `nd_dm_album` VALUES ('7', 'Tablet', 'Máy tính bảng', '1');
INSERT INTO `nd_dm_album` VALUES ('8', 'Sạc điện thoại', 'Sạc điện thoại', '0');
INSERT INTO `nd_dm_album` VALUES ('9', 'Tai nghe', 'Tai nghe', '0');
INSERT INTO `nd_dm_album` VALUES ('10', 'Sạc dự phòng', 'Sạc dự phòng', '0');
INSERT INTO `nd_dm_album` VALUES ('11', 'Cáp sạc', 'Cáp sạc', '0');
INSERT INTO `nd_dm_album` VALUES ('12', 'Thẻ nhớ', 'Thẻ nhớ', '1');
INSERT INTO `nd_dm_album` VALUES ('13', 'Loa', 'Loa', '1');
INSERT INTO `nd_dm_album` VALUES ('14', 'Tivi', 'Tivi', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nd_dm_baiviet
-- ----------------------------
INSERT INTO `nd_dm_baiviet` VALUES ('1', '1', 'Bài viết 1', 'Bài viết 1', '1');
INSERT INTO `nd_dm_baiviet` VALUES ('2', '2', 'Bài viết 2', 'Bài viết 2', '1');
INSERT INTO `nd_dm_baiviet` VALUES ('3', '3', 'Bài viết 3', 'Bài viết 3', '1');
INSERT INTO `nd_dm_baiviet` VALUES ('4', '4', 'Bài viết 4', 'Bài viết 4', '1');
INSERT INTO `nd_dm_baiviet` VALUES ('5', '5', 'Bài viết 5', 'Bài viết 5', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nd_hinhanh
-- ----------------------------
INSERT INTO `nd_hinhanh` VALUES ('1', 'ảnh mẫu', 'abc', 'iphone8', '1');
INSERT INTO `nd_hinhanh` VALUES ('10', 'ảnh laptop dep', 'abcde', 'dell express', '6');
INSERT INTO `nd_hinhanh` VALUES ('11', 'Điện thoại Samsung Galaxy S9+ 64GB', 'abcde', 'tablet air1', '7');
INSERT INTO `nd_hinhanh` VALUES ('12', 'ảnh sạc mẫu', 'abcde', 'xạc iphone XS', '8');
INSERT INTO `nd_hinhanh` VALUES ('13', 'ảnh xạc', 'xạc mẫu đẹp', 'iphone7', '9');
INSERT INTO `nd_hinhanh` VALUES ('14', 'ảnh tivi đẹp', 'abcde', 'LG', '14');

-- ----------------------------
-- Procedure structure for p_ch_danhgia_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_danhgia_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_danhgia_del`(
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
-- Procedure structure for p_ch_dm_baohanh_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_baohanh_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_baohanh_del`(
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
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_khuyenmai_save`(p_id_dm_khuyenmai int,
	p_ma varchar(1000),
	p_ten varchar(100),
	p_noidung varchar(200),
	p_trangthai int)
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
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_sanpham_save`(p_id_dm_sanpham int,
	p_ten varchar(100),
	p_id_dm_sanpham_cha int,
	p_mota varchar(200),
	p_trangthai int)
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
-- Procedure structure for p_ch_dm_thuoctinh_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_thuoctinh_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_thuoctinh_del`(
	p_id_dm_thuoctinh int
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

SELECT @p_dem := count(*) FROM ch_dm_thuoctinh WHERE id_dm_thuoctinh=p_id_dm_thuoctinh;

IF @p_dem > 0 THEN
	DELETE FROM ch_dm_thuoctinh WHERE id_dm_thuoctinh=p_id_dm_thuoctinh;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_thuoctinh;
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
-- Procedure structure for p_ch_dm_thuoctinh_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_thuoctinh_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_thuoctinh_find_all`()
BEGIN 

	SELECT * FROM ch_dm_thuoctinh 
	ORDER BY id_dm_thuoctinh DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_thuoctinh_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_thuoctinh_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_thuoctinh_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_thuoctinh
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mo_ta) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_thuoctinh DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_dm_thuoctinh_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_dm_thuoctinh_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_dm_thuoctinh_get_byid`(
	p_id_dm_thuoctinh int
)
BEGIN 

	SELECT * FROM ch_dm_thuoctinh 
WHERE id_dm_thuoctinh = p_id_dm_thuoctinh;

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
-- Procedure structure for p_ch_donhang_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_del`(
	p_id_donhang int
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

SELECT @p_dem := count(*) FROM ch_donhang WHERE id_donhang=p_id_donhang;

IF @p_dem > 0 THEN
	DELETE FROM ch_donhang WHERE id_donhang=p_id_donhang;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_donhang;
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
-- Procedure structure for p_ch_donhang_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_find_all`()
BEGIN 

	SELECT * FROM ch_donhang 
	ORDER BY id_donhang DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_donhang
	WHERE 
		UPPER(ma) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ngay_tao) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ngay_duyet) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ngay_giao) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ngay_nhan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ten_nguoinhan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(sdt_nguoinhan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(diachi_nguoinhan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ghichu) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_donhang DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_donhang_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_get_byid`(
	p_id_donhang int
)
BEGIN 

	SELECT * FROM ch_donhang 
WHERE id_donhang = p_id_donhang;

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
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_sanpham_khuyenmai_save`(p_id_donhang_sanpham_khuyenmai int,
p_id_khuyenmai int,
p_id_donhang_sanpham int)
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
-- Procedure structure for p_ch_donhang_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_donhang_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_donhang_save`(
	p_id_donhang int,
	p_ma varchar(100),
	p_ngay_tao date,
	p_ngay_duyet date,
	p_ngay_giao date,
	p_ngay_nhan date,
	p_id_khachhang int,
	p_ten_nguoinhan varchar(200),
	p_sdt_nguoinhan varchar(20),
	p_diachi_nguoinhan varchar(200),
	p_ghichu varchar(300),
	p_id_hinhthuc_thanhtoan int,
	p_id_taikhoan_duyet int,
	p_id_taikhoan_giaohang int,
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
IF p_id_donhang=0 OR p_id_donhang is null THEN
	INSERT INTO ch_donhang(
		ma,
		ngay_tao,
		ngay_duyet,
		ngay_giao,
		ngay_nhan,
		ten_nguoinhan,
		sdt_nguoinhan,
		diachi_nguoinhan,
		ghichu,
		trangthai
	)VALUES(
		p_ma,
		p_ngay_tao,
		p_ngay_duyet,
		p_ngay_giao,
		p_ngay_nhan,
		p_ten_nguoinhan,
		p_sdt_nguoinhan,
		p_diachi_nguoinhan,
		p_ghichu,
		p_trangthai
	);
ELSE
	UPDATE ch_donhang SET
		ma = p_ma,
		ngay_tao = p_ngay_tao,
		ngay_duyet = p_ngay_duyet,
		ngay_giao = p_ngay_giao,
		ngay_nhan = p_ngay_nhan,
		ten_nguoinhan = p_ten_nguoinhan,
		sdt_nguoinhan = p_sdt_nguoinhan,
		diachi_nguoinhan = p_diachi_nguoinhan,
		ghichu = p_ghichu,
		trangthai = p_trangthai
	WHERE
		id_donhang = p_id_donhang;
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
-- Procedure structure for p_ch_sanpham_khuyenmai_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_khuyenmai_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_khuyenmai_del`(
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
-- Procedure structure for p_ch_sanpham_khuyenmai_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_khuyenmai_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_khuyenmai_find_all`()
BEGIN 

	SELECT * FROM ch_sanpham_khuyenmai 
	ORDER BY id_sanpham_khuyenmai DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ch_sanpham_khuyenmai_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_khuyenmai_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_khuyenmai_find_key`(
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
-- Procedure structure for p_ch_sanpham_khuyenmai_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ch_sanpham_khuyenmai_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_khuyenmai_get_byid`(
	p_id_dm_baohanh int
)
BEGIN 

	SELECT * FROM ch_sanpham_khuyenmai
WHERE id_sanpham_khuyenmai = p_id_sanpham_khuyenmai;

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
		khuyenmai = p_dm_khuyenmai
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
		SET id_sanpham = p_id_sanpham, id_dm_thuoctinh = p_id_thuoctinh, giatri = p_giatri, trangthai = p_trangthai
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
-- Procedure structure for p_dm_thuoctinh_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_dm_thuoctinh_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_dm_thuoctinh_save`(
	p_id_dm_thuoctinh int,
	p_ten varchar(200),
	p_mo_ta varchar(300),
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
	INSERT INTO ch_dm_thuoctinh(
		ten,
		mo_ta,
		trangthai
	)VALUES(
		p_ten,
		p_mo_ta,
		p_trangthai
	);
ELSE
	UPDATE ch_dm_thuoctinh SET
		ten = p_ten,
		mo_ta = p_mo_ta,
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
-- Procedure structure for p_ht_thongbao_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_thongbao_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_thongbao_del`(
	p_id_ht_thongbao int
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

SELECT @p_dem := count(*) FROM ht_thongbao WHERE id_ht_thongbao=p_id_ht_thongbao;

IF @p_dem > 0 THEN
	DELETE FROM ht_thongbao WHERE id_ht_thongbao=p_id_ht_thongbao;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_ht_thongbao;
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
-- Procedure structure for p_ht_thongbao_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_thongbao_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_thongbao_find_all`()
BEGIN 

	SELECT * FROM ht_thongbao 
	ORDER BY id_ht_thongbao DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_thongbao_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_thongbao_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_thongbao_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ht_thongbao
	WHERE 
		UPPER(ma) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(thongbao) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_ht_thongbao DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_thongbao_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_thongbao_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_thongbao_get_byid`(
	p_id_ht_thongbao int
)
BEGIN 

	SELECT * FROM ht_thongbao 
WHERE id_ht_thongbao = p_id_ht_thongbao;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_ht_thongbao_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ht_thongbao_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ht_thongbao_save`(
	p_id_ht_thongbao int,
	p_ma int,
	p_thongbao varchar(500)
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
IF p_id_ht_thongbao=0 OR p_id_ht_thongbao is null THEN
	INSERT INTO ht_thongbao(
		ma,
		thongbao
	)VALUES(
		p_ma,
		p_thongbao
	);
ELSE
	UPDATE ht_thongbao SET
		ma = p_ma,
		thongbao = p_thongbao
	WHERE
		id_ht_thongbao = p_id_ht_thongbao;
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
-- Procedure structure for p_nd_dm_baiviet_del
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_baiviet_del`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_baiviet_del`(
	p_id_dm_baiviet int
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

SELECT @p_dem := count(*) FROM nd_dm_baiviet WHERE id_dm_baiviet=p_id_dm_baiviet;

IF @p_dem > 0 THEN
	DELETE FROM nd_dm_baiviet WHERE id_dm_baiviet=p_id_dm_baiviet;
	SET p_ma_loi = 'SUC';
	SET p_ket_qua = p_id_dm_baiviet;
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
-- Procedure structure for p_nd_dm_baiviet_find_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_baiviet_find_all`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_baiviet_find_all`()
BEGIN 

	SELECT * FROM nd_dm_baiviet 
	ORDER BY id_dm_baiviet DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_dm_baiviet_find_key
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_baiviet_find_key`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_baiviet_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM nd_dm_baiviet
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_baiviet DESC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_dm_baiviet_get_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_baiviet_get_byid`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_baiviet_get_byid`(
	p_id_dm_baiviet int
)
BEGIN 

	SELECT * FROM nd_dm_baiviet 
WHERE id_dm_baiviet = p_id_dm_baiviet;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_nd_dm_baiviet_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_nd_dm_baiviet_save`;
DELIMITER ;;
CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_nd_dm_baiviet_save`(
	p_id_dm_baiviet int,
	p_id_dm_baiviet_cha int,
	p_ten varchar(200),
	p_mota varchar(300),
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
IF p_id_dm_baiviet=0 OR p_id_dm_baiviet is null THEN
	INSERT INTO nd_dm_baiviet(
		ten,
		mota,
		trangthai
	)VALUES(
		p_ten,
		p_mota,
		p_trangthai
	);
ELSE
	UPDATE nd_dm_baiviet SET
		ten = p_ten,
		mota = p_mota,
		trangthai = p_trangthai
	WHERE
		id_dm_baiviet = p_id_dm_baiviet;
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
