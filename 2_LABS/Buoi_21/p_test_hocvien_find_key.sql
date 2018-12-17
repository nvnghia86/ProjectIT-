CREATE  PROCEDURE `p_test_hocvien_find_key`(
p_key varchar(100)
)
BEGIN  
	SELECT * FROM test_hocvien
	WHERE 
		UPPER(hoten) LIKE CONCAT('%',UPPER(p_key),'%')
	ORDER BY id DESC;
END;

