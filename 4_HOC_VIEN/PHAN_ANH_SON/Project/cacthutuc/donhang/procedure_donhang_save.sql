DROP PROCEDURE IF EXISTS `p_ch_donhang_save`;
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