select
	sp.ten ten_sp,
	dmbh.ten ten_baohanh
from
	ch_sanpham sp inner join ch_dm_baohanh dmbh on sp.id_dm_baohanh = dmbh.id_dm_baohanh

select
	sp.ten ten_sp,
	dmbh.ten ten_baohanh
from
	ch_sanpham sp left join ch_dm_baohanh dmbh on sp.id_dm_baohanh = dmbh.id_dm_baohanh

select
	sp.ten ten_sp,
	dmbh.ten ten_baohanh
from
	ch_sanpham sp right join ch_dm_baohanh dmbh on sp.id_dm_baohanh = dmbh.id_dm_baohanh
	

	
select
	sp.ten ten_sp,
	dmbh.ten ten_baohanh
from
	ch_sanpham sp left join ch_dm_baohanh dmbh on sp.id_dm_baohanh = dmbh.id_dm_baohanh
union
select
	sp.ten ten_sp,
	dmbh.ten ten_baohanh
from
	ch_sanpham sp right join ch_dm_baohanh dmbh on sp.id_dm_baohanh = dmbh.id_dm_baohanh
