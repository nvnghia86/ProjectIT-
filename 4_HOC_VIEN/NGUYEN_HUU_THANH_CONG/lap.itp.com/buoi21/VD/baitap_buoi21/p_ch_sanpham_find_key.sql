CREATE  PROCEDURE `p_ch_sanpham_find_key`(
p_key varchar(100)
)
BEGIN  
	SELECT * FROM ch_sanpham
	WHERE 
		UPPER(ma) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id DESC;
END;

