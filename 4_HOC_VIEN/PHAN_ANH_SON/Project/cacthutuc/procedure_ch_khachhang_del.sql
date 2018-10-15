CREATE PROCEDURE `p_ch_khachhang_del`(
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