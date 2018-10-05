1. Lấy ra 4 sản phẩm thuộc danh mục điện thoại có tổng điểm đánh giá nhiều nhất
- Nội dung lấy: 
	+ Tên sản phẩm
	+ Mã sản phẩm
	+ Hình ảnh
	+ Giá bán
	+ Khuyến mại
	+ Tổng điểm đánh giá
	
- Phương pháp: Trả lời các câu hỏi sau:
	+ Lấy ở đâu? 
		(
		ch_sanpham,
		ch_dm_khuyenmai,
		ch_sanpham_khuyenmai,
		nd_hinhanh, ch_sanpham_hinhanh,
		ch_danhgia
		)
	+ Điều kiện lấy là gì? (
		limit 4,
		id_dm_sanpham=4,
		order by sum(diem) desc
	)
	

