DROP PROCEDURE IF EXISTS `p_ch_khachhang_find_all`;
CREATE  PROCEDURE `p_ch_khachhang_find_all`()
BEGIN 

	SELECT * FROM ch_khachhang 
	ORDER BY id_khachhang DESC;

END;