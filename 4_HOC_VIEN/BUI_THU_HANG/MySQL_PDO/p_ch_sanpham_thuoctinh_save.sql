CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_save`(p_id_sanpham_thuoctinh int,p_id_sanpham int, p_id_thuoctinh int,
																				p_giatri varchar(400), p_trangthai int)
BEGIN
	-- Khai báo các bi?n tr? v?
	DECLARE p_ma_loi varchar(20) DEFAULT 'ERR';
	DECLARE p_thong_bao varchar(500) DEFAULT '';
	DECLARE p_ket_qua varchar(1000) DEFAULT ''; 

	-- Khai báo hành d?ng trong tru?ng h?p g?p ngo?i l?
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
				ROLLBACK;
				GET DIAGNOSTICS CONDITION 1
				p_ma_loi = RETURNED_SQLSTATE, p_thong_bao =  MESSAGE_TEXT;
				select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
		END;
		
	-- B?t d?u 1 giao d?ch
	START TRANSACTION;
	
	-- Ki?m tra xem nên t?o m?i hay s?a
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
	SET p_thong_bao = 'Luu thành công.';
	select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;
END