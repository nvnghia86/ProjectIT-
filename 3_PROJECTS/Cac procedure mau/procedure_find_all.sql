DROP PROCEDURE IF EXISTS `p_dm_baohanh_find_all`;
CREATE  PROCEDURE `p_dm_baohanh_find_all`()
BEGIN 

	SELECT * FROM ch_dm_baohanh 
	ORDER BY id_dm_baohanh DESC;

END;