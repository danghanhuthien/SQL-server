--tạo bảng chức vụ
Create Table ChucVu(
MaChucVu nvarchar(50) Primary key,
TenChucVu nvarchar(50));
-- tạo bảng khách hàng
Create Table KhachHang(
MaKhachHang nvarchar(50) Primary key,
TenKhachHang nvarchar(50),
GioiTinh nvarchar(50),
SoDienThoai nvarchar(50));
--tạo bảng nhân viên
Create Table NhanVien(
MaNhanVien nvarchar(50) Primary key,
TenNhanVien nvarchar(50),
GioiTinh nvarchar(50),
SoDienThoai nvarchar(50),
MaChucVu nvarchar(50),
Foreign key (MaChucVu) References ChucVu(MaChucVu));
--tạo bảng sản phẩm
Create Table SanPham(
MaSanPham nvarchar(50) Primary key,
TenSanPham nvarchar(50),
DonViTinh nvarchar(50),
GiaBan int);
-- tạo bảng hóa đơn
Create Table HoaDon(
MaHoaDon nvarchar(50) Primary key,
TenNhanVien nvarchar(50),
TenKhachHang nvarchar(50),
NgayTao datetime,
GioVao time,
GioRa time,
SoBan int,
MaNhanVien nvarchar(50),
MaKhachHang nvarchar(50),
Foreign key (MaNhanVien) References NhanVien(MaNhanVien),
Foreign key (MaKhachHang) References KhachHang(MaKhachHang));
-- tạo bảng chi tiết hóa đơn
CREATE TABLE ChiTietHoaDon (
    MaHoaDon NVARCHAR(50),
    MaSanPham NVARCHAR(50),
    TenSanPham NVARCHAR(50),
    SoLuong FLOAT,
    ThanhTien FLOAT,
    PRIMARY KEY (MaHoaDon, MaSanPham),
    FOREIGN KEY (MaHoaDon) REFERENCES HoaDon(MaHoaDon),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);
