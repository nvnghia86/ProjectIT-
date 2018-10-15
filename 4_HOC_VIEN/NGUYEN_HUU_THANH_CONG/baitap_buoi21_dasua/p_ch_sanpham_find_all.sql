CREATE PROCEDURE `p_ch_sanpham_find_all`()
BEGIN  

	SELECT * FROM ch_sanpham
	ORDER BY id DESC;

END;
