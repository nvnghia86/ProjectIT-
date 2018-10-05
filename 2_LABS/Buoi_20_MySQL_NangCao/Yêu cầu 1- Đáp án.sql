select
	sp.id_sanpham,
	sp.ma,
	sp.ten as ten_sanpham,
	dmsp.ten as ten_dm_sanpham,
	sp.gia_ban,
	ha.tieude as tieude_hinhanh,
	km.ten as ten_khuyenmai,
	sum(dg.diem) as tong_diem_danhgia
from 
	ch_sanpham as sp left join ch_dm_sanpham dmsp on sp.id_dm_sanpham=dmsp.id_dm_sanpham
	left join ch_sanpham_hinhanh as  spha on sp.id_sanpham = spha.id_sanpham
	left join nd_hinhanh as ha on spha.id_hinhanh = ha.id_hinhanh
	left join ch_sanpham_khuyenmai as spkm on spkm.id_sanpham = sp.id_sanpham
	left join ch_dm_khuyenmai as km on spkm.id_dm_khuyenmai = km.id_dm_khuyenmai
	left join ch_danhgia as dg on dg.id_sanpham = sp.id_sanpham
where
	dmsp.id_dm_sanpham=4	
group by
	sp.id_sanpham,
	sp.ma,
	sp.ten,
	dmsp.ten,
	sp.gia_ban,
	ha.tieude
order by
	tong_diem_danhgia desc
limit 4;





