/*
 Navicat Premium Data Transfer

 Source Server         : sql12.freemysqlhosting.net
 Source Server Type    : MySQL
 Source Server Version : 50558
 Source Host           : sql12.freemysqlhosting.net:3306
 Source Schema         : sql12258870

 Target Server Type    : MySQL
 Target Server Version : 50558
 File Encoding         : 65001

 Date: 28/09/2018 18:38:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ch_danhgia
-- ----------------------------
DROP TABLE IF EXISTS `ch_danhgia`;
CREATE TABLE `ch_danhgia`  (
  `id_danhgia` int(11) NOT NULL,
  `diem` int(4) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_khachhang` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_danhgia`) USING BTREE,
  INDEX `id_sanpham`(`id_sanpham`) USING BTREE,
  INDEX `id_khachhang`(`id_khachhang`) USING BTREE,
  CONSTRAINT `ch_danhgia_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_danhgia_ibfk_2` FOREIGN KEY (`id_khachhang`) REFERENCES `ch_khachhang` (`id_khachhang`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_baohanh
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_baohanh`;
CREATE TABLE `ch_dm_baohanh`  (
  `id_dm_baohanh` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_baohanh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_doitra
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_doitra`;
CREATE TABLE `ch_dm_doitra`  (
  `id_dm_doitra` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_doitra`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_giaohang
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_giaohang`;
CREATE TABLE `ch_dm_giaohang`  (
  `id_dm_giaohang` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_giaohang`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_hang_sanxuat
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_hang_sanxuat`;
CREATE TABLE `ch_dm_hang_sanxuat`  (
  `id_dm_hang_sanxuat` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `anh_logo` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_hang_sanxuat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_hinhthuc_thanhtoan
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_hinhthuc_thanhtoan`;
CREATE TABLE `ch_dm_hinhthuc_thanhtoan`  (
  `id_dm_hinhthuc_thanhtoan` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mota` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_hinhthuc_thanhtoan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_khuyenmai`;
CREATE TABLE `ch_dm_khuyenmai`  (
  `id_dm_khuyenmai` int(11) NOT NULL AUTO_INCREMENT,
  `ma` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ten` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_khuyenmai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_sanpham
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_sanpham`;
CREATE TABLE `ch_dm_sanpham`  (
  `id_dm_sanpham` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_dm_sanpham_cha` int(11) NULL DEFAULT NULL,
  `mota` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_sanpham`) USING BTREE,
  INDEX `id_dm_sanpham_cha`(`id_dm_sanpham_cha`) USING BTREE,
  CONSTRAINT `ch_dm_sanpham_ibfk_1` FOREIGN KEY (`id_dm_sanpham_cha`) REFERENCES `ch_dm_sanpham` (`id_dm_sanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_thuoctinh
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_thuoctinh`;
CREATE TABLE `ch_dm_thuoctinh`  (
  `id_dm_thuoctinh` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mo_ta` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_thuoctinh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_dm_tragop
-- ----------------------------
DROP TABLE IF EXISTS `ch_dm_tragop`;
CREATE TABLE `ch_dm_tragop`  (
  `id_dm_tragop` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mota` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_tragop`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_donhang
-- ----------------------------
DROP TABLE IF EXISTS `ch_donhang`;
CREATE TABLE `ch_donhang`  (
  `id_donhang` int(11) NOT NULL,
  `ma` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ngay_tao` date NOT NULL,
  `ngay_duyet` date NULL DEFAULT NULL,
  `ngay_giao` date NULL DEFAULT NULL,
  `ngay_nhan` date NULL DEFAULT NULL,
  `id_khachhang` int(11) NULL DEFAULT NULL,
  `ten_nguoinhan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sdt_nguoinhan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `diachi_nguoinhan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ghichu` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_hinhthuc_thanhtoan` int(11) NOT NULL,
  `id_taikhoan_duyet` int(11) NULL DEFAULT NULL,
  `id_taikhoan_giaohang` int(11) NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_donhang`) USING BTREE,
  INDEX `id_khachhang`(`id_khachhang`) USING BTREE,
  INDEX `id_hinhthuc_thanhtoan`(`id_hinhthuc_thanhtoan`) USING BTREE,
  INDEX `id_taikhoan_duyet`(`id_taikhoan_duyet`) USING BTREE,
  INDEX `id_taikhoan_giaohang`(`id_taikhoan_giaohang`) USING BTREE,
  CONSTRAINT `ch_donhang_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `ch_khachhang` (`id_khachhang`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_donhang_ibfk_2` FOREIGN KEY (`id_hinhthuc_thanhtoan`) REFERENCES `ch_dm_hinhthuc_thanhtoan` (`id_dm_hinhthuc_thanhtoan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_donhang_ibfk_3` FOREIGN KEY (`id_taikhoan_duyet`) REFERENCES `ht_taikhoan` (`id_taikhoan`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_donhang_ibfk_4` FOREIGN KEY (`id_taikhoan_giaohang`) REFERENCES `ht_taikhoan` (`id_taikhoan`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_donhang_sanpham
-- ----------------------------
DROP TABLE IF EXISTS `ch_donhang_sanpham`;
CREATE TABLE `ch_donhang_sanpham`  (
  `id_donhang_sanpham` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `soluong` int(6) NULL DEFAULT NULL,
  `dongia` float(15, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_donhang_sanpham`) USING BTREE,
  INDEX `id_sanpham`(`id_sanpham`) USING BTREE,
  INDEX `id_donhang`(`id_donhang`) USING BTREE,
  CONSTRAINT `ch_donhang_sanpham_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_donhang_sanpham_ibfk_2` FOREIGN KEY (`id_donhang`) REFERENCES `ch_donhang` (`id_donhang`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_donhang_sanpham_khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `ch_donhang_sanpham_khuyenmai`;
CREATE TABLE `ch_donhang_sanpham_khuyenmai`  (
  `id_donhang_sanpham_khuyenmai` int(11) NOT NULL,
  `id_khuyenmai` int(11) NOT NULL,
  `id_donhang_sanpham` int(11) NOT NULL,
  PRIMARY KEY (`id_donhang_sanpham_khuyenmai`) USING BTREE,
  INDEX `id_khuyenmai`(`id_khuyenmai`) USING BTREE,
  INDEX `id_donhang_sanpham`(`id_donhang_sanpham`) USING BTREE,
  CONSTRAINT `ch_donhang_sanpham_khuyenmai_ibfk_2` FOREIGN KEY (`id_donhang_sanpham`) REFERENCES `ch_donhang_sanpham` (`id_donhang_sanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_donhang_sanpham_khuyenmai_ibfk_1` FOREIGN KEY (`id_khuyenmai`) REFERENCES `ch_dm_khuyenmai` (`id_dm_khuyenmai`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_khachhang
-- ----------------------------
DROP TABLE IF EXISTS `ch_khachhang`;
CREATE TABLE `ch_khachhang`  (
  `id_khachhang` int(11) NOT NULL,
  `hoten` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sodienthoai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `matkhau` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_khachhang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_sanpham
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham`;
CREATE TABLE `ch_sanpham`  (
  `id_sanpham` int(11) NOT NULL,
  `ma` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ten` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gia_nhap` float(15, 2) NULL DEFAULT NULL,
  `gia_ban` float(15, 2) NULL DEFAULT NULL,
  `gioithieu` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `id_dm_sanpham` int(11) NULL DEFAULT NULL,
  `id_dm_baohanh` int(11) NULL DEFAULT NULL,
  `id_dm_doitra` int(11) NULL DEFAULT NULL,
  `id_dm_giaohang` int(11) NULL DEFAULT NULL,
  `id_dm_tragop` int(11) NULL DEFAULT NULL,
  `id_dm_hang_sanxuat` int(11) NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sanpham`) USING BTREE,
  INDEX `id_dm_sanpham`(`id_dm_sanpham`) USING BTREE,
  INDEX `id_dm_baohanh`(`id_dm_baohanh`) USING BTREE,
  INDEX `id_dm_doitra`(`id_dm_doitra`) USING BTREE,
  INDEX `id_dm_giaohang`(`id_dm_giaohang`) USING BTREE,
  INDEX `id_dm_tragop`(`id_dm_tragop`) USING BTREE,
  INDEX `id_dm_hang_sanxuat`(`id_dm_hang_sanxuat`) USING BTREE,
  CONSTRAINT `ch_sanpham_ibfk_1` FOREIGN KEY (`id_dm_sanpham`) REFERENCES `ch_dm_sanpham` (`id_dm_sanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_sanpham_ibfk_2` FOREIGN KEY (`id_dm_baohanh`) REFERENCES `ch_dm_baohanh` (`id_dm_baohanh`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_sanpham_ibfk_3` FOREIGN KEY (`id_dm_doitra`) REFERENCES `ch_dm_doitra` (`id_dm_doitra`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_sanpham_ibfk_4` FOREIGN KEY (`id_dm_giaohang`) REFERENCES `ch_dm_giaohang` (`id_dm_giaohang`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_sanpham_ibfk_5` FOREIGN KEY (`id_dm_tragop`) REFERENCES `ch_dm_tragop` (`id_dm_tragop`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_sanpham_ibfk_6` FOREIGN KEY (`id_dm_hang_sanxuat`) REFERENCES `ch_dm_hang_sanxuat` (`id_dm_hang_sanxuat`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_sanpham_hinhanh
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham_hinhanh`;
CREATE TABLE `ch_sanpham_hinhanh`  (
  `id_sanpham_hinhanh` int(11) NOT NULL,
  `id_sanpham` int(11) NULL DEFAULT NULL,
  `id_hinhanh` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sanpham_hinhanh`) USING BTREE,
  INDEX `id_sanpham`(`id_sanpham`) USING BTREE,
  INDEX `id_hinhanh`(`id_hinhanh`) USING BTREE,
  CONSTRAINT `ch_sanpham_hinhanh_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_sanpham_hinhanh_ibfk_2` FOREIGN KEY (`id_hinhanh`) REFERENCES `nd_hinhanh` (`id_hinhanh`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_sanpham_khuyenmai
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham_khuyenmai`;
CREATE TABLE `ch_sanpham_khuyenmai`  (
  `id_sanpham_khuyenmai` int(11) NOT NULL AUTO_INCREMENT,
  `id_sanpham` int(11) NOT NULL,
  `id_dm_khuyenmai` int(11) NOT NULL,
  PRIMARY KEY (`id_sanpham_khuyenmai`) USING BTREE,
  INDEX `id_sanpham`(`id_sanpham`) USING BTREE,
  INDEX `id_dm_khuyenmai`(`id_dm_khuyenmai`) USING BTREE,
  CONSTRAINT `ch_sanpham_khuyenmai_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_sanpham_khuyenmai_ibfk_2` FOREIGN KEY (`id_dm_khuyenmai`) REFERENCES `ch_dm_khuyenmai` (`id_dm_khuyenmai`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ch_sanpham_thuoctinh
-- ----------------------------
DROP TABLE IF EXISTS `ch_sanpham_thuoctinh`;
CREATE TABLE `ch_sanpham_thuoctinh`  (
  `id_sanpham_thuoctinh` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_thuoctinh` int(11) NOT NULL,
  `giatri` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sanpham_thuoctinh`) USING BTREE,
  INDEX `id_sanpham`(`id_sanpham`) USING BTREE,
  INDEX `id_thuoctinh`(`id_thuoctinh`) USING BTREE,
  CONSTRAINT `ch_sanpham_thuoctinh_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `ch_sanpham` (`id_sanpham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ch_sanpham_thuoctinh_ibfk_2` FOREIGN KEY (`id_thuoctinh`) REFERENCES `ch_dm_thuoctinh` (`id_dm_thuoctinh`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ht_taikhoan
-- ----------------------------
DROP TABLE IF EXISTS `ht_taikhoan`;
CREATE TABLE `ht_taikhoan`  (
  `id_taikhoan` int(11) NOT NULL AUTO_INCREMENT,
  `taikhoan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `matkhau` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hoten` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sodienthoai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_vaitro` int(11) NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_taikhoan`) USING BTREE,
  INDEX `id_vaitro`(`id_vaitro`) USING BTREE,
  CONSTRAINT `ht_taikhoan_ibfk_1` FOREIGN KEY (`id_vaitro`) REFERENCES `ht_vaitro` (`id_vaitro`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ht_thongbao
-- ----------------------------
DROP TABLE IF EXISTS `ht_thongbao`;
CREATE TABLE `ht_thongbao`  (
  `id_ht_thongbao` int(11) NOT NULL AUTO_INCREMENT,
  `ma` int(11) NOT NULL,
  `thongbao` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_ht_thongbao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ht_thongbao
-- ----------------------------
INSERT INTO `ht_thongbao` VALUES (1, 200, 'Thành công.');
INSERT INTO `ht_thongbao` VALUES (2, 201, 'Lưu thành công.');
INSERT INTO `ht_thongbao` VALUES (3, 202, 'Xóa thành công.');
INSERT INTO `ht_thongbao` VALUES (4, 203, 'Cập nhật thành công.');
INSERT INTO `ht_thongbao` VALUES (5, 500, 'Đã có lỗi xảy ra.');
INSERT INTO `ht_thongbao` VALUES (6, 501, 'Lưu thất bại.');
INSERT INTO `ht_thongbao` VALUES (7, 502, 'Xóa thất bại');
INSERT INTO `ht_thongbao` VALUES (8, 503, 'Cập nhật thất bại');
INSERT INTO `ht_thongbao` VALUES (9, 400, 'Cảnh báo có lỗi.');
INSERT INTO `ht_thongbao` VALUES (10, 401, 'Cảnh báo dữ liệu nhập vào không hợp lệ');
INSERT INTO `ht_thongbao` VALUES (11, 404, 'Cảnh báo dữ liệu trống');
INSERT INTO `ht_thongbao` VALUES (12, 405, 'Cảnh báo không tìm thấy bản ghi');

-- ----------------------------
-- Table structure for ht_vaitro
-- ----------------------------
DROP TABLE IF EXISTS `ht_vaitro`;
CREATE TABLE `ht_vaitro`  (
  `id_vaitro` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mota` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_vaitro`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nd_baiviet
-- ----------------------------
DROP TABLE IF EXISTS `nd_baiviet`;
CREATE TABLE `nd_baiviet`  (
  `id_baiviet` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trichdan` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anh_daidien` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ngay_tao` date NULL DEFAULT NULL,
  `ngay_dang` date NULL DEFAULT NULL,
  `id_taikhoan_tao` int(11) NULL DEFAULT NULL,
  `id_dm_baiviet` int(11) NULL DEFAULT NULL,
  `luotxem` int(9) NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_baiviet`) USING BTREE,
  INDEX `id_dm_baiviet`(`id_dm_baiviet`) USING BTREE,
  INDEX `id_taikhoan_tao`(`id_taikhoan_tao`) USING BTREE,
  CONSTRAINT `nd_baiviet_ibfk_1` FOREIGN KEY (`id_dm_baiviet`) REFERENCES `nd_dm_baiviet` (`id_dm_baiviet`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `nd_baiviet_ibfk_2` FOREIGN KEY (`id_taikhoan_tao`) REFERENCES `ht_taikhoan` (`id_taikhoan`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nd_dm_album
-- ----------------------------
DROP TABLE IF EXISTS `nd_dm_album`;
CREATE TABLE `nd_dm_album`  (
  `id_dm_album` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `ten` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mota` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_album`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nd_dm_baiviet
-- ----------------------------
DROP TABLE IF EXISTS `nd_dm_baiviet`;
CREATE TABLE `nd_dm_baiviet`  (
  `id_dm_baiviet` int(11) NOT NULL AUTO_INCREMENT,
  `id_dm_baiviet_cha` int(11) NULL DEFAULT NULL,
  `ten` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mota` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trangthai` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_dm_baiviet`) USING BTREE,
  INDEX `id_dm_baiviet_cha`(`id_dm_baiviet_cha`) USING BTREE,
  CONSTRAINT `nd_dm_baiviet_ibfk_1` FOREIGN KEY (`id_dm_baiviet_cha`) REFERENCES `nd_dm_baiviet` (`id_dm_baiviet`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for nd_hinhanh
-- ----------------------------
DROP TABLE IF EXISTS `nd_hinhanh`;
CREATE TABLE `nd_hinhanh`  (
  `id_hinhanh` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ten` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_dm_album` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_hinhanh`) USING BTREE,
  INDEX `id_dm_album`(`id_dm_album`) USING BTREE,
  CONSTRAINT `nd_hinhanh_ibfk_1` FOREIGN KEY (`id_dm_album`) REFERENCES `nd_dm_album` (`id_dm_album`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Procedure structure for ht_thongbao_get_all
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_thongbao_get_all`;
delimiter ;;
CREATE DEFINER=`sql12258870`@`%` PROCEDURE `ht_thongbao_get_all`()
begin
 
	select id_ht_thongbao ID, ma MA, thongbao THONG_BAO from ht_thongbao;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ht_thongbao_get_by_ma
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_thongbao_get_by_ma`;
delimiter ;;
CREATE DEFINER=`sql12258870`@`%` PROCEDURE `ht_thongbao_get_by_ma`(p_ma int)
begin
 
	select id_ht_thongbao ID, ma MA, thongbao THONG_BAO from ht_thongbao where MA= p_ma;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for test_ht_thongbao
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_ht_thongbao`;
delimiter ;;
CREATE DEFINER=`sql12258870`@`%` PROCEDURE `test_ht_thongbao`(p_giatri int)
begin

	CALL ht_thongbao_get_by_ma(p_giatri);

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for test_save
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_save`;
delimiter ;;
CREATE DEFINER=`sql12258870`@`%` PROCEDURE `test_save`(
	giatri varchar(20)
)
begin

	select giatri GIA_TRI;
	

end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
