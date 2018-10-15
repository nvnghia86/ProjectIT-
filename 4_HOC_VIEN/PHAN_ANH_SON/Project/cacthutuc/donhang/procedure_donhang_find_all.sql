DROP PROCEDURE IF EXISTS `p_ch_donhang_find_all`;
CREATE  PROCEDURE `p_ch_donhang_find_all`()
BEGIN 

	SELECT * FROM ch_donhang 
	ORDER BY id_donhang DESC;

END;