--- tạo bảng trigger của SanPham
SELECT * 
INTO TG_SanPham
FROM SanPham
ALTER TABLE TG_SanPham
ADD HinhThuc nvarchar(50),
    NgayGio  datetime;
-- kiểm tra --
select * from TG_SanPham
-- trigger Xóa
create trigger TG_SanPham_Delete
On SanPham
For DELETE
AS
Insert Into TG_SanPham select *, N'Xóa', getdate() From Deleted
-- trigger thêm
create trigger TG_SanPham_Insert
On SanPham
For INSERT
AS
Insert Into TG_SanPham select *, N'Thêm', getdate() From Inserted
-- trigger sửa
create trigger TG_SanPham_Update
On SanPham
For UPDATE
AS
Insert Into TG_SanPham select *, N'Sửa', getdate() From Inserted
-- tạo bảng trigger của nhân viên
SELECT * 
INTO TG_NhanVien
FROM NhanVien
ALTER TABLE TG_NhanVien
ADD HinhThuc nvarchar(50),
    NgayGio  datetime;
-- kiểm tra --
select * from TG_NhanVien
-- trigger Xóa
create trigger TG_NhanVien_Delete
On NhanVien
For DELETE
AS
Insert Into TG_NhanVien select *, N'Xóa', getdate() From Deleted
-- trigger thêm
create trigger TG_NhanVien_Insert
On NhanVien
For INSERT
AS
Insert Into TG_NhanVien select *, N'Thêm', getdate() From Inserted
-- trigger sửa
create trigger TG_NhanVien_Update
On NhanVien
For UPDATE
AS
Insert Into TG_NhanVien select *, N'Sửa', getdate() From Inserted

-- tạo bảng trigger của khách hàng
SELECT * 
INTO TG_KhachHang
FROM KhachHang
ALTER TABLE TG_KhachHang
ADD HinhThuc nvarchar(50),
    NgayGio  datetime;
-- kiểm tra --
select * from TG_KhachHang
-- trigger Xóa
create trigger TG_KhachHang_Delete
On KhachHang
For DELETE
AS
Insert Into TG_KhachHang select *, N'Xóa', getdate() From Deleted
-- trigger thêm
create trigger TG_KhachHang_Insert
On KhachHang
For INSERT
AS
Insert Into TG_KhachHang select *, N'Thêm', getdate() From Inserted
-- trigger sửa
create trigger TG_KhachHang_Update
On KhachHang
For UPDATE
AS
Insert Into TG_KhachHang select *, N'Sửa', getdate() From Inserted

-- tạo bảng trigger của chức vụ
SELECT * 
INTO TG_ChucVu
FROM ChucVu
ALTER TABLE TG_ChucVu
ADD HinhThuc nvarchar(50),
    NgayGio  datetime;
-- kiểm tra --
select * from TG_ChucVu
-- trigger Xóa
create trigger TG_ChucVu_Delete
On ChucVu
For DELETE
AS
Insert Into TG_ChucVu select *, N'Xóa', getdate() From Deleted
-- trigger thêm
create trigger TG_ChucVu_Insert
On ChucVu
For INSERT
AS
Insert Into TG_ChucVu select *, N'Thêm', getdate() From Inserted
-- trigger sửa
create trigger TG_ChucVu_Update
On ChucVu
For UPDATE
AS
Insert Into TG_ChucVu select *, N'Sửa', getdate() From Inserted

-- tạo bảng trigger của hóa đơn
SELECT * 
INTO TG_HoaDon
FROM HoaDon
ALTER TABLE TG_HoaDon
ADD HinhThuc nvarchar(50),
    NgayGio  datetime;
-- kiểm tra --
select * from TG_HoaDon
-- trigger Xóa
create trigger TG_HoaDon_Delete
On HoaDon
For DELETE
AS
Insert Into TG_HoaDon select *, N'Xóa', getdate() From Deleted
-- trigger thêm
create trigger TG_HoaDon_Insert
On HoaDon
For INSERT
AS
Insert Into TG_HoaDon select *, N'Thêm', getdate() From Inserted
-- trigger sửa
create trigger TG_HoaDon_Update
On HoaDon
For UPDATE
AS
Insert Into TG_HoaDon select *, N'Sửa', getdate() From Inserted

-- tạo bảng trigger của chức vụ
SELECT * 
INTO TG_ChiTietHoaDon
FROM ChiTietHoaDon
ALTER TABLE TG_ChiTietHoaDon
ADD HinhThuc nvarchar(50),
    NgayGio  datetime;
-- kiểm tra --
select * from TG_ChiTietHoaDon
-- trigger Xóa
create trigger TG_ChiTietHoaDon_Delete
On ChiTietHoaDon
For DELETE
AS
Insert Into TG_ChiTietHoaDon select *, N'Xóa', getdate() From Deleted
-- trigger thêm
create trigger TG_ChiTietHoaDon_Insert
On ChiTietHoaDon
For INSERT
AS
Insert Into TG_ChiTietHoaDon select *, N'Thêm', getdate() From Inserted
-- trigger sửa
create trigger TG_ChiTietHoaDon_Update
On ChiTietHoaDon
For UPDATE
AS
Insert Into TG_ChiTietHoaDon select *, N'Sửa', getdate() From Inserted