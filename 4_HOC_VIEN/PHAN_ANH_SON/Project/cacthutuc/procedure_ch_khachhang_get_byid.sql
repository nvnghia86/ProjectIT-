DROP PROCEDURE IF EXISTS `p_ch_khachhang_get_byid`;
CREATE  PROCEDURE `p_ch_khachhang_get_byid`(
	p_id_khachhang int
)
BEGIN 

	SELECT * FROM ch_khachhang 
WHERE id_khachhang = p_id_khachhang;

END;