CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_find_key`(p_key VARCHAR(400))
BEGIN
	SELECT * FROM ch_sanpham_thuoctinh
	WHERE 
		UPPER(giatri
		) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_baohanh DESC;
END