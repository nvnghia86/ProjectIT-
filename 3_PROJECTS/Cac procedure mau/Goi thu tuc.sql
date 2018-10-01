
CALL p_dm_baohanh_save(null,'Bảo hành trọn đời','Bảo hành phần mềm',1);

CALL p_dm_baohanh_del(2);

CALL p_dm_baohanh_find_all();

CALL p_dm_baohanh_get_byid(4);

CALL p_dm_baohanh_find_key('do');
