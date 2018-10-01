DROP PROCEDURE IF EXISTS `p_dm_baohanh_save`;

CREATE  PROCEDURE `p_dm_baohanh_save`(
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

END;