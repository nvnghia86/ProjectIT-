DROP PROCEDURE IF EXISTS `p_ch_donhang_find_key`;
CREATE  PROCEDURE `p_ch_donhang_find_key`(
	p_key varchar(100)
)
BEGIN 

	SELECT * FROM ch_donhang
	WHERE 
		UPPER(ma) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ngay_tao) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ngay_duyet) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ngay_giao) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ngay_nhan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ten_nguoinhan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(sdt_nguoinhan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(diachi_nguoinhan) LIKE CONCAT('%',UPPER(p_key),'%')
		OR UPPER(ghichu) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id_donhang DESC;

END;