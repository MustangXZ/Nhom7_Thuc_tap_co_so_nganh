go
use master 
go

create database Nhom3
go

go
use Nhom3
go

create table TaiKhoan
(
	MaTaiKhoan nchar(10) not null primary key,
	DienThoai int,
	MatKhau nchar(30)
)

create table NguoiQuanTri
(
	MaTaiKhoan nchar(10) foreign key references TaiKhoan(MaTaiKhoan)
)

create table NhanVien
(
	MaNhanVien nchar(10) not null primary key,
	MaTaiKhoan nchar(10) foreign key references TaiKhoan(MaTaiKhoan)
)

create table KhachHang
(
	MaKhachHang nchar(10) not null primary key,
	HoTen nvarchar(30),
	SinhNhat date,
	DiemTichLuy float,
	DiaChi nvarchar(30),
	Email nchar(20),
	SoDienThoai int,
	MaTaiKhoan nchar(10) foreign key references TaiKhoan(MaTaiKhoan)
)

create table SanPham
(	
	MaSanPham nchar(10) not null primary key,
	DonGia money,
	MoTaSanPham nvarchar(100)
)

create table DonHang
(
	MaDonHang nchar(10) not null,
	MaKhachHang nchar(10) not null foreign key references KhachHang(MaKhachHang) ,
	MaSanPham nchar(10) not null foreign key references SanPham(MaSanPham),
	HoTen nvarchar(30),
	SoDienThoai int,
	DiaChi nvarchar(30),
	MauSac nvarchar(20),
	Size nchar(10),
	SoLuong int,
	GhiChu nvarchar(20),
	GiaTien money,
	primary key(MaDonHang, MaKhachHang, MaSanPham),
	
)


