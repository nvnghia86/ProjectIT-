DROP PROCEDURE IF EXISTS `p_dm_baohanh_get_byid`;
CREATE  PROCEDURE `p_dm_baohanh_get_byid`(
	p_id_dm_baohanh int
)
BEGIN 

	SELECT * FROM ch_dm_baohanh 
WHERE id_dm_baohanh = p_id_dm_baohanh;

END;