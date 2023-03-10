
USE [QL_KhachSan]
GO
/****** Object:  Schema [mydb]    Script Date: 25/12/2022 10:14:27 CH ******/
CREATE SCHEMA [mydb]
GO
/****** Object:  Table [mydb].[chitiethoadon]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[chitiethoadon](
	[MaHoaDon] [int] NOT NULL,
	[MaPhong] [int] NOT NULL,
	[PhuThu] [nvarchar](50) NOT NULL,
	[ThanhTien] [real] NULL,
	[SLKhach] [int] NULL,
 CONSTRAINT [PK_chitiethoadon_MaHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[chitietphieuthue]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[chitietphieuthue](
	[MaPhieuThue] [int] NOT NULL,
	[MaPhong] [int] NOT NULL,
	[PhuThu] [nvarchar](50) NULL,
	[SLKhach] [int] NULL,
	[NgayThue] [date] NOT NULL,
	[NgayTraPhong] [date] NOT NULL,
 CONSTRAINT [PK_chitietphieuthue_MaPhieuThue] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThue] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[doanhthu]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[doanhthu](
	[LoaiPhong] [nvarchar](20) NOT NULL,
	[Thang] [date] NULL,
	[DoanhThu] [real] NULL,
 CONSTRAINT [PK_doanhthu_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[LoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[hoadon]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[hoadon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaPhieuThue] [int] NULL,
	[SoNgayThue] [int] NULL,
	[TongTien] [real] NULL,
	[NgayThanhToan] [date] NULL,
	[NVTao] [nvarchar](45) NULL,
 CONSTRAINT [PK_hoadon_MaHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[khachhang]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[khachhang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[CMND] [nvarchar](255) NULL,
	[SDT] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](45) NULL,
	[LoaiKhach] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_khachhang_MaKH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[loaikhach]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[loaikhach](
	[LoaiKhach] [nvarchar](20) NOT NULL,
	[HeSo] [real] NULL,
 CONSTRAINT [PK_loaikhach_LoaiKhach] PRIMARY KEY CLUSTERED 
(
	[LoaiKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[loaiphong]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[loaiphong](
	[LoaiPhong] [nvarchar](20) NOT NULL,
	[DonGia] [real] NULL,
	[SLKhachToiDa] [int] NULL,
 CONSTRAINT [PK_loaiphong_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[LoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[matdosudung]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[matdosudung](
	[MaPhong] [int] NOT NULL,
	[Thang] [date] NULL,
	[SoNgayThue] [int] NULL,
	[MatDoSuDung] [real] NULL,
 CONSTRAINT [PK_matdosudung_MaPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[phieuthue]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[phieuthue](
	[MaPhieuThue] [int] IDENTITY(1,1) NOT NULL,
	[NgayThue] [date] NOT NULL,
	[MaKH] [int] NOT NULL,
	[NVTao] [nvarchar](45) NULL,
	[NgayTraPhong] [date] NOT NULL,
	[TinhTrang] [nvarchar](45) NULL,
 CONSTRAINT [PK_phieuthue_MaPhieuThue] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[phong]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[phong](
	[MaPhong] [int] NOT NULL,
	[TinhTrang] [nvarchar](20) NULL,
	[LoaiPhong] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_phong_MaPhong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[phuthu]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[phuthu](
	[LoaiPhuThu] [nvarchar](50) NOT NULL,
	[MucPhuThu] [real] NULL,
 CONSTRAINT [PK_phuthu_LoaiPhuThu] PRIMARY KEY CLUSTERED 
(
	[LoaiPhuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mydb].[taikhoan]    Script Date: 25/12/2022 10:14:27 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mydb].[taikhoan](
	[Username] [nvarchar](45) NOT NULL,
	[Password] [nvarchar](45) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[CMND] [bigint] NULL,
	[SDT] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](45) NOT NULL,
	[ChucVu] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_taikhoan_Username] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (1, 101, NULL, 2, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-26' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (2, 102, N'Khách thêm', 4, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-27' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (2, 104, NULL, 2, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-27' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (3, 201, NULL, 2, CAST(N'2022-12-25' AS Date), CAST(N'2022-12-26' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (4, 103, NULL, 3, CAST(N'2022-12-25' AS Date), CAST(N'2022-12-27' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (14, 101, NULL, 2, CAST(N'2022-12-26' AS Date), CAST(N'2022-12-29' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (14, 204, N'Khách thêm', 3, CAST(N'2022-12-26' AS Date), CAST(N'2022-12-29' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (15, 102, NULL, 4, CAST(N'2022-12-27' AS Date), CAST(N'2022-12-30' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (15, 202, NULL, 4, CAST(N'2022-12-27' AS Date), CAST(N'2022-12-30' AS Date))
INSERT [mydb].[chitietphieuthue] ([MaPhieuThue], [MaPhong], [PhuThu], [SLKhach], [NgayThue], [NgayTraPhong]) VALUES (16, 203, NULL, 2, CAST(N'2022-12-25' AS Date), CAST(N'2022-12-26' AS Date))
GO
SET IDENTITY_INSERT [mydb].[hoadon] ON 

INSERT [mydb].[hoadon] ([MaHoaDon], [MaPhieuThue], [SoNgayThue], [TongTien], [NgayThanhToan], [NVTao]) VALUES (1, 2, 3, 1447500, CAST(N'2022-12-25' AS Date), NULL)
INSERT [mydb].[hoadon] ([MaHoaDon], [MaPhieuThue], [SoNgayThue], [TongTien], [NgayThanhToan], [NVTao]) VALUES (3, 4, 2, 400000, CAST(N'2022-12-25' AS Date), NULL)
INSERT [mydb].[hoadon] ([MaHoaDon], [MaPhieuThue], [SoNgayThue], [TongTien], [NgayThanhToan], [NVTao]) VALUES (4, 3, 1, 170000, CAST(N'2022-12-25' AS Date), NULL)
INSERT [mydb].[hoadon] ([MaHoaDon], [MaPhieuThue], [SoNgayThue], [TongTien], [NgayThanhToan], [NVTao]) VALUES (5, 2, 3, 1447500, CAST(N'2022-12-25' AS Date), NULL)
SET IDENTITY_INSERT [mydb].[hoadon] OFF
GO
SET IDENTITY_INSERT [mydb].[khachhang] ON 

INSERT [mydb].[khachhang] ([MaKH], [TenKH], [CMND], [SDT], [DiaChi], [LoaiKhach]) VALUES (1, N'Anh Khoa', N'Nội địa', N'0953445322', N'Biên Hòa', N'Nội địa')
INSERT [mydb].[khachhang] ([MaKH], [TenKH], [CMND], [SDT], [DiaChi], [LoaiKhach]) VALUES (2, N'Hồ Trung Nguyên', N'Nội địa', N'0844335546', N'Nghệ An', N'Nội địa')
INSERT [mydb].[khachhang] ([MaKH], [TenKH], [CMND], [SDT], [DiaChi], [LoaiKhach]) VALUES (3, N'Khôi Nguyên', N'Nội địa', N'0853483432', N'Bình Phước', N'Nội địa')
INSERT [mydb].[khachhang] ([MaKH], [TenKH], [CMND], [SDT], [DiaChi], [LoaiKhach]) VALUES (4, N'Đình Cường', N'Nội địa', N'0859324323', N'Unknown', N'Nội địa')
INSERT [mydb].[khachhang] ([MaKH], [TenKH], [CMND], [SDT], [DiaChi], [LoaiKhach]) VALUES (5, N'Nguyễn Hữu Anh Khoa', N'Nội địa', N'0965854534', N'Đồng Nai', N'Nội địa')
INSERT [mydb].[khachhang] ([MaKH], [TenKH], [CMND], [SDT], [DiaChi], [LoaiKhach]) VALUES (6, N'Nguyễn Văn An', N'Nội địa', N'0974323433', N'Tp Hồ Chí Minh', N'Nội địa')
INSERT [mydb].[khachhang] ([MaKH], [TenKH], [CMND], [SDT], [DiaChi], [LoaiKhach]) VALUES (7, N'Thomas Muller', N'Nước ngoài', N'0859344332', N'Berlin', N'Nội địa')
INSERT [mydb].[khachhang] ([MaKH], [TenKH], [CMND], [SDT], [DiaChi], [LoaiKhach]) VALUES (8, N'David ', N'Nước ngoài', N'1334238233', N'Paris', N'Nội địa')
SET IDENTITY_INSERT [mydb].[khachhang] OFF
GO
INSERT [mydb].[loaikhach] ([LoaiKhach], [HeSo]) VALUES (N'Nội địa', 1)
INSERT [mydb].[loaikhach] ([LoaiKhach], [HeSo]) VALUES (N'Nước ngoài', 1.5)
INSERT [mydb].[loaikhach] ([LoaiKhach], [HeSo]) VALUES (N'Vip', 2)
GO
INSERT [mydb].[loaiphong] ([LoaiPhong], [DonGia], [SLKhachToiDa]) VALUES (N'Deluxe', 250000, 4)
INSERT [mydb].[loaiphong] ([LoaiPhong], [DonGia], [SLKhachToiDa]) VALUES (N'Standard', 170000, 2)
INSERT [mydb].[loaiphong] ([LoaiPhong], [DonGia], [SLKhachToiDa]) VALUES (N'Superior', 200000, 3)
GO
SET IDENTITY_INSERT [mydb].[phieuthue] ON 

INSERT [mydb].[phieuthue] ([MaPhieuThue], [NgayThue], [MaKH], [NVTao], [NgayTraPhong], [TinhTrang]) VALUES (1, CAST(N'2022-12-24' AS Date), 1, NULL, CAST(N'2022-12-26' AS Date), N'Chưa thanh toán')
INSERT [mydb].[phieuthue] ([MaPhieuThue], [NgayThue], [MaKH], [NVTao], [NgayTraPhong], [TinhTrang]) VALUES (2, CAST(N'2022-12-24' AS Date), 2, NULL, CAST(N'2022-12-27' AS Date), N'Đã thanh toán')
INSERT [mydb].[phieuthue] ([MaPhieuThue], [NgayThue], [MaKH], [NVTao], [NgayTraPhong], [TinhTrang]) VALUES (3, CAST(N'2022-12-25' AS Date), 3, NULL, CAST(N'2022-12-26' AS Date), N'Chưa thanh toán')
INSERT [mydb].[phieuthue] ([MaPhieuThue], [NgayThue], [MaKH], [NVTao], [NgayTraPhong], [TinhTrang]) VALUES (4, CAST(N'2022-12-25' AS Date), 4, NULL, CAST(N'2022-12-27' AS Date), N'Chưa thanh toán')
INSERT [mydb].[phieuthue] ([MaPhieuThue], [NgayThue], [MaKH], [NVTao], [NgayTraPhong], [TinhTrang]) VALUES (14, CAST(N'2022-12-26' AS Date), 6, NULL, CAST(N'2022-12-29' AS Date), N'Chưa thanh toán')
INSERT [mydb].[phieuthue] ([MaPhieuThue], [NgayThue], [MaKH], [NVTao], [NgayTraPhong], [TinhTrang]) VALUES (15, CAST(N'2022-12-27' AS Date), 7, NULL, CAST(N'2022-12-30' AS Date), N'Chưa thanh toán')
INSERT [mydb].[phieuthue] ([MaPhieuThue], [NgayThue], [MaKH], [NVTao], [NgayTraPhong], [TinhTrang]) VALUES (16, CAST(N'2022-12-25' AS Date), 8, NULL, CAST(N'2022-12-26' AS Date), N'Chưa thanh toán')
SET IDENTITY_INSERT [mydb].[phieuthue] OFF
GO
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (101, N'Đang có khách', N'Standard')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (102, N'Đang có khách', N'Deluxe')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (103, N'Đang có khách', N'Superior')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (104, N'Đang có khách', N'Standard')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (201, N'Đang có khách', N'Standard')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (202, N'Sẵn sàng', N'Deluxe')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (203, N'Đang có khách', N'Standard')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (204, N'Sẵn sàng', N'Superior')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (301, N'Sẵn sàng', N'Standard')
INSERT [mydb].[phong] ([MaPhong], [TinhTrang], [LoaiPhong]) VALUES (302, N'Sẵn sàng', N'Deluxe')
GO
INSERT [mydb].[phuthu] ([LoaiPhuThu], [MucPhuThu]) VALUES (N'Khách thêm', 25)
INSERT [mydb].[phuthu] ([LoaiPhuThu], [MucPhuThu]) VALUES (N'Ngày Lễ', 20)
GO
ALTER TABLE [mydb].[chitiethoadon] ADD  DEFAULT (NULL) FOR [ThanhTien]
GO
ALTER TABLE [mydb].[chitiethoadon] ADD  DEFAULT (NULL) FOR [SLKhach]
GO
ALTER TABLE [mydb].[chitietphieuthue] ADD  DEFAULT (NULL) FOR [PhuThu]
GO
ALTER TABLE [mydb].[chitietphieuthue] ADD  DEFAULT (NULL) FOR [SLKhach]
GO
ALTER TABLE [mydb].[doanhthu] ADD  DEFAULT (NULL) FOR [Thang]
GO
ALTER TABLE [mydb].[doanhthu] ADD  DEFAULT (NULL) FOR [DoanhThu]
GO
ALTER TABLE [mydb].[hoadon] ADD  DEFAULT (NULL) FOR [MaPhieuThue]
GO
ALTER TABLE [mydb].[hoadon] ADD  DEFAULT (NULL) FOR [SoNgayThue]
GO
ALTER TABLE [mydb].[hoadon] ADD  DEFAULT (NULL) FOR [TongTien]
GO
ALTER TABLE [mydb].[hoadon] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [mydb].[hoadon] ADD  DEFAULT (NULL) FOR [NVTao]
GO
ALTER TABLE [mydb].[khachhang] ADD  DEFAULT (NULL) FOR [TenKH]
GO
ALTER TABLE [mydb].[khachhang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [mydb].[loaikhach] ADD  DEFAULT (NULL) FOR [HeSo]
GO
ALTER TABLE [mydb].[loaiphong] ADD  DEFAULT (NULL) FOR [DonGia]
GO
ALTER TABLE [mydb].[loaiphong] ADD  DEFAULT (NULL) FOR [SLKhachToiDa]
GO
ALTER TABLE [mydb].[matdosudung] ADD  DEFAULT (NULL) FOR [Thang]
GO
ALTER TABLE [mydb].[matdosudung] ADD  DEFAULT (NULL) FOR [SoNgayThue]
GO
ALTER TABLE [mydb].[matdosudung] ADD  DEFAULT (NULL) FOR [MatDoSuDung]
GO
ALTER TABLE [mydb].[phieuthue] ADD  DEFAULT (NULL) FOR [NVTao]
GO
ALTER TABLE [mydb].[phieuthue] ADD  DEFAULT (NULL) FOR [TinhTrang]
GO
ALTER TABLE [mydb].[phong] ADD  DEFAULT (NULL) FOR [TinhTrang]
GO
ALTER TABLE [mydb].[phuthu] ADD  DEFAULT (NULL) FOR [MucPhuThu]
GO
ALTER TABLE [mydb].[taikhoan] ADD  DEFAULT (NULL) FOR [CMND]
GO
ALTER TABLE [mydb].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [chitiethoadon$FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [mydb].[hoadon] ([MaHoaDon])
GO
ALTER TABLE [mydb].[chitiethoadon] CHECK CONSTRAINT [chitiethoadon$FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [mydb].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [chitiethoadon$FK_ChiTietHoaDon_Phong] FOREIGN KEY([MaPhong])
REFERENCES [mydb].[phong] ([MaPhong])
GO
ALTER TABLE [mydb].[chitiethoadon] CHECK CONSTRAINT [chitiethoadon$FK_ChiTietHoaDon_Phong]
GO
ALTER TABLE [mydb].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [chitiethoadon$FK_CTHoaDon_PhuThu] FOREIGN KEY([PhuThu])
REFERENCES [mydb].[phuthu] ([LoaiPhuThu])
GO
ALTER TABLE [mydb].[chitiethoadon] CHECK CONSTRAINT [chitiethoadon$FK_CTHoaDon_PhuThu]
GO
ALTER TABLE [mydb].[chitietphieuthue]  WITH CHECK ADD  CONSTRAINT [chitietphieuthue$FK_CTPhieuThue_PhieuThue] FOREIGN KEY([MaPhieuThue])
REFERENCES [mydb].[phieuthue] ([MaPhieuThue])
GO
ALTER TABLE [mydb].[chitietphieuthue] CHECK CONSTRAINT [chitietphieuthue$FK_CTPhieuThue_PhieuThue]
GO
ALTER TABLE [mydb].[chitietphieuthue]  WITH CHECK ADD  CONSTRAINT [chitietphieuthue$FK_CTPhieuThue_Phong] FOREIGN KEY([MaPhong])
REFERENCES [mydb].[phong] ([MaPhong])
GO
ALTER TABLE [mydb].[chitietphieuthue] CHECK CONSTRAINT [chitietphieuthue$FK_CTPhieuThue_Phong]
GO
ALTER TABLE [mydb].[chitietphieuthue]  WITH CHECK ADD  CONSTRAINT [chitietphieuthue$FK_CTPhieuThue_PhuThu] FOREIGN KEY([PhuThu])
REFERENCES [mydb].[phuthu] ([LoaiPhuThu])
GO
ALTER TABLE [mydb].[chitietphieuthue] CHECK CONSTRAINT [chitietphieuthue$FK_CTPhieuThue_PhuThu]
GO
ALTER TABLE [mydb].[doanhthu]  WITH CHECK ADD  CONSTRAINT [doanhthu$DoanhThu-LoaiPhong] FOREIGN KEY([LoaiPhong])
REFERENCES [mydb].[loaiphong] ([LoaiPhong])
GO
ALTER TABLE [mydb].[doanhthu] CHECK CONSTRAINT [doanhthu$DoanhThu-LoaiPhong]
GO
ALTER TABLE [mydb].[hoadon]  WITH CHECK ADD  CONSTRAINT [hoadon$HoaDon-PhieuThue] FOREIGN KEY([MaPhieuThue])
REFERENCES [mydb].[phieuthue] ([MaPhieuThue])
GO
ALTER TABLE [mydb].[hoadon] CHECK CONSTRAINT [hoadon$HoaDon-PhieuThue]
GO
ALTER TABLE [mydb].[hoadon]  WITH CHECK ADD  CONSTRAINT [hoadon$HoaDon-TaiKhoan] FOREIGN KEY([NVTao])
REFERENCES [mydb].[taikhoan] ([Username])
GO
ALTER TABLE [mydb].[hoadon] CHECK CONSTRAINT [hoadon$HoaDon-TaiKhoan]
GO
ALTER TABLE [mydb].[khachhang]  WITH CHECK ADD  CONSTRAINT [khachhang$KhachHang-LoaiKhach] FOREIGN KEY([LoaiKhach])
REFERENCES [mydb].[loaikhach] ([LoaiKhach])
GO
ALTER TABLE [mydb].[khachhang] CHECK CONSTRAINT [khachhang$KhachHang-LoaiKhach]
GO
ALTER TABLE [mydb].[matdosudung]  WITH CHECK ADD  CONSTRAINT [matdosudung$MatDoSuDung-Phong] FOREIGN KEY([MaPhong])
REFERENCES [mydb].[phong] ([MaPhong])
GO
ALTER TABLE [mydb].[matdosudung] CHECK CONSTRAINT [matdosudung$MatDoSuDung-Phong]
GO
ALTER TABLE [mydb].[phieuthue]  WITH CHECK ADD  CONSTRAINT [phieuthue$PhieuThue-KhachHang] FOREIGN KEY([MaKH])
REFERENCES [mydb].[khachhang] ([MaKH])
GO
ALTER TABLE [mydb].[phieuthue] CHECK CONSTRAINT [phieuthue$PhieuThue-KhachHang]
GO
ALTER TABLE [mydb].[phieuthue]  WITH CHECK ADD  CONSTRAINT [phieuthue$PhieuThue-TaiKhoan] FOREIGN KEY([NVTao])
REFERENCES [mydb].[taikhoan] ([Username])
GO
ALTER TABLE [mydb].[phieuthue] CHECK CONSTRAINT [phieuthue$PhieuThue-TaiKhoan]
GO
ALTER TABLE [mydb].[phong]  WITH CHECK ADD  CONSTRAINT [phong$Phong-LoaiPhong] FOREIGN KEY([LoaiPhong])
REFERENCES [mydb].[loaiphong] ([LoaiPhong])
GO
ALTER TABLE [mydb].[phong] CHECK CONSTRAINT [phong$Phong-LoaiPhong]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.chitiethoadon' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'chitiethoadon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.chitietphieuthue' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'chitietphieuthue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.doanhthu' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'doanhthu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.hoadon' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'hoadon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.khachhang' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'khachhang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.loaikhach' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'loaikhach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.loaiphong' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'loaiphong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.matdosudung' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'matdosudung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.phieuthue' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'phieuthue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.phong' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'phong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.phuthu' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'phuthu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'mydb.taikhoan' , @level0type=N'SCHEMA',@level0name=N'mydb', @level1type=N'TABLE',@level1name=N'taikhoan'
GO
