CREATE TABLE `bai_thi` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tieu_de` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`mo_ta` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`id_tai_khoan` int(11) NULL DEFAULT NULL,
`hinh_anh` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`ma_pin` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`trang_thai` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`id`) ,
INDEX `id_tai_khoan` (`id_tai_khoan` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Compact;

CREATE TABLE `cau_hoi` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`tieu_de` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`mo_ta` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`hinh_anh` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`video` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`dap_an_1` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`dap_an_2` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`dap_an_3` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`dap_an_4` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`dap_an_dung` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`thoi_gian` int(3) NULL DEFAULT NULL,
`id_bai_thi` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`id`) ,
INDEX `id_bai_thi` (`id_bai_thi` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Compact;

CREATE TABLE `ket_qua` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`id_nguoi_choi` int(11) NULL DEFAULT NULL,
`dap_an` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`thoi_gian` int(3) NULL DEFAULT NULL,
`diem` int(4) NULL DEFAULT NULL,
`id_cau_hoi` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`id`) ,
INDEX `id_nguoi_choi` (`id_nguoi_choi` ASC) USING BTREE,
INDEX `id_cau_hoi` (`id_cau_hoi` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Compact;

CREATE TABLE `nguoi_choi` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`bi_danh` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`id_bai_thi` int(11) NULL DEFAULT NULL,
PRIMARY KEY (`id`) ,
INDEX `id_bai_thi` (`id_bai_thi` ASC) USING BTREE
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Compact;

CREATE TABLE `tai_khoan` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`ho_ten` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`mat_khau` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
`trang_thai` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
PRIMARY KEY (`id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 1
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Compact;


ALTER TABLE `bai_thi` ADD CONSTRAINT `bai_thi_ibfk_1` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `cau_hoi` ADD CONSTRAINT `cau_hoi_ibfk_1` FOREIGN KEY (`id_bai_thi`) REFERENCES `bai_thi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `ket_qua` ADD CONSTRAINT `ket_qua_ibfk_1` FOREIGN KEY (`id_nguoi_choi`) REFERENCES `nguoi_choi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `ket_qua` ADD CONSTRAINT `ket_qua_ibfk_2` FOREIGN KEY (`id_cau_hoi`) REFERENCES `cau_hoi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `nguoi_choi` ADD CONSTRAINT `nguoi_choi_ibfk_1` FOREIGN KEY (`id_bai_thi`) REFERENCES `bai_thi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

