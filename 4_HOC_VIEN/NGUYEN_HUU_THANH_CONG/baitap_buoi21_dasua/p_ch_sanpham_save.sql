CREATE PROCEDURE `p_ch_sanpham_save`(
	p_id_sanpham int,
	p_ma nvarchar(100)
	p_ten nvarchar(300)
	p_gia_nhap float(15,2)
	p_gia_ban float(15,2)
	p_gioithieu text
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
IF p_id_sanpham = 0 OR p_id_sanpham is null THEN
	INSERT INTO ch_sanpham(ma)VALUES(p_ma);
ELSE
	UPDATE ch_sanpham SET ma = p_ma WHERE ma = p_ma;
END IF;

COMMIT;
SET p_ma_loi = 'SUC';
SET p_ket_qua = CONVERT(LAST_INSERT_ID(), CHAR(50));
SET p_thong_bao = 'Lưu thành công.';
select p_ma_loi MA_LOI, p_thong_bao THONG_BAO, p_ket_qua KET_QUA;

END;
