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