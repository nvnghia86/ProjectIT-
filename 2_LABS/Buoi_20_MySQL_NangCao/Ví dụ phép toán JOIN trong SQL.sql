-- Ví dụ về các phép toán JOIN
-- INNER JOIN
select
	dm.ten ten_danhmuc,
	sp.ten ten_sanpham
from
	ch_dm_sanpham dm inner join ch_sanpham sp
	on dm.id_dm_sanpham = sp.id_dm_sanpham
	
	
-- LEFT JOIN
select
	dm.ten ten_danhmuc,
	sp.ten ten_sanpham
from
	ch_dm_sanpham dm left join ch_sanpham sp
	on dm.id_dm_sanpham = sp.id_dm_sanpham
	
	
-- RIGHT JOIN
select
	dm.ten ten_danhmuc,
	sp.ten ten_sanpham
from
	ch_dm_sanpham dm right join ch_sanpham sp
	on dm.id_dm_sanpham = sp.id_dm_sanpham
	
-- FULL JOIN
select
	dm.ten ten_danhmuc,
	sp.ten ten_sanpham
from
	ch_dm_sanpham dm left join ch_sanpham sp
	on dm.id_dm_sanpham = sp.id_dm_sanpham
union
select
	dm.ten ten_danhmuc,
	sp.ten ten_sanpham
from
	ch_dm_sanpham dm right join ch_sanpham sp
	on dm.id_dm_sanpham = sp.id_dm_sanpham