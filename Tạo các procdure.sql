-- tạo proc cho nhân viên
--select
create proc SP_Select_NhanVien
as
begin
select * from NhanVien
end;--chạy
--select where
create proc SP_Select_NhanVien_Where
@manhanvien nvarchar(50)
as
begin
select * from NhanVien where MaNhanVien = @manhanvien
end;-- chạy
-- insert
Create proc SP_NhanVien_Insert
@manhanvien nvarchar(50),@tennhanvien nvarchar(50),@gioitinh nvarchar(50),@sodienthoai nvarchar(50), @machucvu nvarchar(50)
as
begin
insert into NhanVien values(@manhanvien,@tennhanvien,@gioitinh,@sodienthoai,@machucvu)
end;--chạy 
-- update
Create proc SP_NhanVien_Update
@manhanvien nvarchar(50),@tennhanvien nvarchar(50),@gioitinh nvarchar(50),@sodienthoai nvarchar(50), @machucvu nvarchar(50)
as
begin
update NhanVien set TenNhanVien = @tennhanvien,GioiTinh=@gioitinh,SoDienThoai=@sodienthoai,MaChucVu=@machucvu where MaNhanVien=@manhanvien
end;--chạy
-- delete
Create proc SP_NhanVien_Delete
@manhanvien nvarchar(50)
as
begin
Delete from NhanVien where MaNhanVien=@manhanvien
end;--chạy

-- tạo proc cho khách hàng
--select
create proc SP_Select_KhachHang
as
begin
select * from KhachHang
end;--chạy
--select where
create proc SP_Select_KhachHang_Where
@makhachang nvarchar(50)
as
begin
select * from KhachHang where MaKhachHang = @makhachang
end;-- chạy
-- insert
Create proc SP_KhachHang_Insert
@makhachang nvarchar(50),@tenkhachang nvarchar(50),@gioitinh nvarchar(50),@sodienthoai nvarchar(50)
as
begin
insert into KhachHang values(@makhachang,@tenkhachang,@gioitinh,@sodienthoai)
end;--chạy 
-- update
Create proc SP_KhachHang_Update
@makhachang nvarchar(50),@tenkhachang nvarchar(50),@gioitinh nvarchar(50),@sodienthoai nvarchar(50)
as
begin
update KhachHang set TenKhachHang = @tenkhachang,GioiTinh=@gioitinh,SoDienThoai=@sodienthoai where MaKhachHang=@makhachang
end;--chạy
-- delete
Create proc SP_KhachHang_Delete
@makhachang nvarchar(50)
as
begin
Delete from KhachHang where MaKhachHang=@makhachang
end;--chạy

-- tạo proc cho Sản phẩm
--select
create proc SP_Select_SanPham
as
begin
select * from SanPham
end;--chạy
--select where
create proc SP_Select_SanPham_Where
@masanpham nvarchar(50)
as
begin
select * from SanPham where MaSanPham = @masanpham
end;-- chạy
-- insert
Create proc SP_SanPham_Insert
@masanpham nvarchar(50),@tensanpham nvarchar(50),@donvitinh nvarchar(50),@giaban int
as
begin
insert into SanPham values(@masanpham,@tensanpham,@donvitinh,@giaban)
end;--chạy 
-- update
Create proc SP_SanPham_Update
@masanpham nvarchar(50),@tensanpham nvarchar(50),@donvitinh nvarchar(50),@giaban int
as
begin
update SanPham set TenSanPham = @tensanpham,DonViTinh=@donvitinh,GiaBan=@giaban where MaSanPham=@masanpham
end;--chạy
-- delete
Create proc SP_SanPham_Delete
@masanpham nvarchar(50)
as
begin
Delete from SanPham where MaSanPham=@masanpham
end;--chạy

-- tạo proc cho chức vụ
--select
create proc SP_Select_ChucVu
as
begin
select * from ChucVu
end;--chạy
--select where
create proc SP_Select_ChucVu_Where
@machucvu nvarchar(50)
as
begin
select * from ChucVu where MaChucVu = @machucvu
end;-- chạy
-- insert
Create proc SP_ChucVu_Insert
@machucvu nvarchar(50),@tenchucvu nvarchar(50)
as
begin
insert into ChucVu values(@machucvu,@tenchucvu)
end;--chạy 
-- update
Create proc SP_ChucVu_Update
@machucvu nvarchar(50),@tenchucvu nvarchar(50)
as
begin
update ChucVu set TenChucVu = @tenchucvu where MaChucVu=@machucvu
end;--chạy
-- delete
Create proc SP_ChucVu_Delete
@machucvu nvarchar(50)
as
begin
Delete from ChucVu where MaChucVu=@machucvu
end;--chạy

-- tạo proc cho hóa đơn
--select
create proc SP_Select_HoaDon
as
begin
select * from HoaDon
end;--chạy
--select where
create proc SP_Select_HoaDon_Where
@mahoadon nvarchar(50)
as
begin
select * from HoaDon where MaHoaDon = @mahoadon
end;-- chạy
select * from HoaDon
-- insert
Create proc SP_HoaDon_Insert
@mahoadon nvarchar(50),@tennhanvien nvarchar(50), @tenkhachhang nvarchar(50), @ngaytao datetime, @GioVao time, @giora time, @soban int, @manhanvien nvarchar(50), @makhachhang nvarchar(50)
as
begin
insert into HoaDon values(@mahoadon,@tennhanvien,@tenkhachhang,@ngaytao,@GioVao,@giora,@soban,@manhanvien,@makhachhang)
end;--chạy 
-- update
Create proc SP_HoaDon_Update
@mahoadon nvarchar(50),@tennhanvien nvarchar(50), @tenkhachhang nvarchar(50), @ngaytao datetime, @GioVao time, @giora time, @soban int, @manhanvien nvarchar(50), @makhachhang nvarchar(50)
as
begin
update HoaDon set TenNhanVien = @tennhanvien , TenKhachHang=@tenkhachhang,NgayTao = @ngaytao, GioVao=@GioVao, GioRa=@giora, SoBan=@soban, MaNhanVien=@manhanvien, MaKhachHang=@makhachhang
where MaHoaDon=@mahoadon
end;--chạy
-- delete
Create proc SP_HoaDon_Delete
@mahoadon nvarchar(50)
as
begin
Delete from HoaDon where MaHoaDon=@mahoadon
end;--chạy

-- tạo proc cho chi tiết hóa đơn
--select
create proc SP_Select_ChiTietHoaDon
as
begin
select * from ChiTietHoaDon
end;--chạy
--select where
create proc SP_Select_ChiTietHoaDon_Where
@mahoadon nvarchar(50), @masanpham nvarchar(50)
as
begin
select * from ChiTietHoaDon where MaHoaDon = @mahoadon or MaSanPham = @masanpham
end;-- chạy
-- insert
Create proc SP_ChiTietHoaDon_Insert
@machucvu nvarchar(50),@tenchucvu nvarchar(50)
as
begin
insert into ChiTietHoaDon values(@machucvu,@tenchucvu)
end;--chạy 
-- update
Create proc SP_ChiTietHoaDon_Update
@mahoadon nvarchar(50),@masanpham nvarchar(50), @tensanpham nvarchar(50), @soluong float,@thanhtien float
as
begin
update ChiTietHoaDon set TenSanPham = @tensanpham,SoLuong=@soluong,ThanhTien=@thanhtien where MaHoaDon = @mahoadon or MaSanPham = @masanpham
end;--chạy
-- delete
Create proc SP_ChiTietHoaDon_Delete
@mahoadon nvarchar(50),@masanpham nvarchar(50)
as
begin
Delete from ChiTietHoaDon where MaHoaDon = @mahoadon or MaSanPham = @masanpham
end;--chạy

