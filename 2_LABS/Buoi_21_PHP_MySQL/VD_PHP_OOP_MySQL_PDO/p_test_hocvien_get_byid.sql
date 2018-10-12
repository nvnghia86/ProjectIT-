CREATE PROCEDURE `p_test_hocvien_get_byid`(p_id int)
BEGIN  

SELECT * FROM test_hocvien WHERE id = p_id;

END;