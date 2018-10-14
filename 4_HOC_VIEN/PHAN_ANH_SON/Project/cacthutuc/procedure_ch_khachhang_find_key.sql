DROP PROCEDURE IF EXISTS `p_ch_khachhang_find_key`;
CREATE  PROCEDURE `p_ch_khachhang_find_key`(
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

END;