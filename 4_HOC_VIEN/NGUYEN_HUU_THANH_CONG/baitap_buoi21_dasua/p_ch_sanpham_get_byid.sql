CREATE PROCEDURE `p_ch_sanpham_get_byid`(p_id int)
BEGIN  

SELECT * FROM ch_sanpham WHERE id = p_id;

END;