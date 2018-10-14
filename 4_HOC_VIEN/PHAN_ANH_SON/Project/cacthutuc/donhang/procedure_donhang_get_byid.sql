DROP PROCEDURE IF EXISTS `p_ch_donhang_get_byid`;
CREATE  PROCEDURE `p_ch_donhang_get_byid`(
	p_id_donhang int
)
BEGIN 

	SELECT * FROM ch_donhang 
WHERE id_donhang = p_id_donhang;

END;