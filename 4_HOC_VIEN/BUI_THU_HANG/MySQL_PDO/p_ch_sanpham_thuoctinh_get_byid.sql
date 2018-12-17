CREATE DEFINER=`qxfbg_vnh`@`%` PROCEDURE `p_ch_sanpham_thuoctinh_get_byid`( p_id_sanpham_thuoctinh int)
BEGIN
	SELECT * FROM ch_sanpham_thuoctinh WHERE id_sanpham_thuoctinh = p_id_sanpham_thuoctinh;
END