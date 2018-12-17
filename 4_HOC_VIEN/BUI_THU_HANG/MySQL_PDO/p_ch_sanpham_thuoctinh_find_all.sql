CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_find_all`()
BEGIN
SELECT  FROM ch_sanpham_thuoctinh 
	ORDER BY id_sanpham_thuoctinh DESC;
END