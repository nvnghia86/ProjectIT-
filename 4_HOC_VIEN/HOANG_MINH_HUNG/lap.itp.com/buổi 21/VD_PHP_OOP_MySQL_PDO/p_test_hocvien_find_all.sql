CREATE PROCEDURE `p_test_hocvien_find_all`()
BEGIN  

	SELECT * FROM test_hocvien
	ORDER BY id DESC;

END;
