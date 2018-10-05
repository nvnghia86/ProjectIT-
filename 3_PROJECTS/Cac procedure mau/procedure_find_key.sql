DROP PROCEDURE IF EXISTS `p_dm_baohanh_find_key`;
CREATE  PROCEDURE `p_dm_baohanh_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_dm_baohanh
	WHERE 
		UPPER(ten) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(mota) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_dm_baohanh DESC;

END;