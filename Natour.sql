CREATE DATABASE [Natour]
drop DATABASE [Natour]
GO
USE [Natour]
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](255) NULL,
	[TenKH] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[Email] [varchar](50) NULL,
	[MK] [nvarchar](50)
) ON [PRIMARY]
GO
select * from [KhachHangActive]
select * from KhachHangActive
DELETE FROM KhachHangActive
delete from KhachHangActive where SoDienThoai = '1'
SELECT * FROM KhachHang WHERE SoDienThoai='1' AND MK='1'
CREATE TABLE [dbo].[KhachHangActive](
	[SoDienThoai] [nvarchar](20) NULL,
	[MK] [nvarchar](50)
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Tour](
	[MaTour] [varchar](20) NOT NULL,
	[TenTour] [nvarchar](255) NULL,
	[DiaDiem] [nvarchar](255) NULL,
	[Gia] [varchar](50) NULL,
	[HinhAnh] [varchar](50) NULL,
    [TuNgay] [datetime] NULL,
    [DenNgay] [datetime] NULL,
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[BangDat](
	[MaDat] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
    [MaTour] [varchar](20) NOT NULL,
	[SoLuongNguoi] [int] NULL,
	[NgayDangKy] [datetime] NULL,
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[KhachHang]
ADD CONSTRAINT PK_KhachHang PRIMARY KEY (MaKH)
ALTER TABLE [dbo].[Tour]
ADD CONSTRAINT PK_Tour PRIMARY KEY (MaTour)
ALTER TABLE [dbo].[BangDat]
ADD CONSTRAINT PK_BangDat PRIMARY KEY (MaDat)
ALTER TABLE BangDat
ADD CONSTRAINT FK_BangDat_KhachHang FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
ALTER TABLE BangDat
ADD CONSTRAINT FK_BangDat_Tour FOREIGN KEY (MaTour) REFERENCES Tour(MaTour)
GO

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (1, N'Nguyễn Văn Nam', N'Hà Nội', '05630302321', 'nvnam@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (2, N'Nguyễn Phương Thảo', N'Hà Nội', '05630302321', 'npthao@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (3, N'Dương Thắng Mạnh', N'Hà Nội', '09080302321', 'dtmanh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (4, N'Lê Cẩm Nhung', N'Hải Dương', '04534342321', 'lcnhung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (5, N'Lưu Ngọc Linh', N'Hải Dương', '05673402321', 'lnlinh@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (6, N'Đỗ Tiến Quý', N'Hải Dương', '0875602321', 'dtquy@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (7, N'Đồng An Nhi', N'Hải Phòng', '0234324321', 'danhi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (8, N'Bùi Ngọc Dương', N'Hải Phòng', '012343252321', 'bnduong@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (9, N'Đặng Thiên Dương', N'Hải Phòng', '01234102321', 'dtduong@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SoDienThoai], [Email]) VALUES (10, N'Phạm Thế Duy', N'Bắc Ninh', '075676502321', 'ptduy@gmail.com')

INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('DN01', N'Tour du lịch Đà Nẵng 5 ngày 4 đêm', N'Đà Nẵng', '5.000.000đ', NULL, CAST(N'2024-07-10T00:00:00.000' AS DateTime), CAST(N'2024-07-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('TD01', N'Tour du lịch Tam Đảo 3 ngày 2 đêm', N'Vĩnh Phúc', '1.300.000đ', NULL, CAST(N'2024-07-12T00:00:00.000' AS DateTime), CAST(N'2024-07-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('H01', N'Tour du lịch Huế 2 ngày 1 đêm', N'Huế', '900.000đ', NULL, CAST(N'2024-06-05T00:00:00.000' AS DateTime), CAST(N'2024-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('DN02', N'Tour du lịch Đà Nẵng 3 ngày 2 đêm', N'Đà Nẵng', '3.000.000đ', NULL, CAST(N'2024-05-15T00:00:00.000' AS DateTime), CAST(N'2024-05-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('HL01', N'Tour du lịch Hạ Long 5 ngày 4 đêm', N'Quảng Ninh', '5.000.000đ', NULL, CAST(N'2024-04-18T00:00:00.000' AS DateTime), CAST(N'2024-04-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Tour] ([MaTour], [TenTour], [DiaDiem], [Gia], [HinhAnh], [TuNgay], [DenNgay]) VALUES ('HL02', N'Tour du lịch trên du thuyền ở Vịnh Hạ Long 5 ngày 4 đêm', N'Quảng Ninh', '8.000.000đ', NULL, CAST(N'2024-08-10T00:00:00.000' AS DateTime), CAST(N'2024-08-15T00:00:00.000' AS DateTime))

INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (1, 1, 'DN01', 3, CAST(N'2024-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (2, 3, 'TD01', 7, CAST(N'2024-04-16T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (3, 10, 'H01', 4, CAST(N'2024-04-17T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (4, 8, 'H01', 9, CAST(N'2024-04-19T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (5, 6, 'DN01', 12, CAST(N'2024-04-21T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (6, 7, 'TD01', 9, CAST(N'2024-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (7, 9, 'HL02', 1, CAST(N'2024-04-07T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (8, 1, 'DN01', 5, CAST(N'2024-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (9, 2, 'HL02', 5, CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (10, 5, 'HL01', 2, CAST(N'2024-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[BangDat] ([MaDat], [MaKH], [MaTour], [SoLuongNguoi], [NgayDangKy]) VALUES (11, 3, 'HL01', 8, CAST(N'2024-04-15T00:00:00.000' AS DateTime))

select * from Tour where TenTour like N'%Tour%'