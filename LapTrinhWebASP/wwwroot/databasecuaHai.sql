USE [LapTrinhWeb]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 2/24/2018 4:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[MaSP] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 2/24/2018 4:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [nvarchar](10) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
	[MoTaDM] [nvarchar](max) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 2/24/2018 4:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NULL,
	[ThanhTien] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 2/24/2018 4:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](20) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 2/24/2018 4:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[GiaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[HinhSP] [nvarchar](max) NULL,
	[MoTaSP] [nvarchar](max) NULL,
	[MaDM] [nvarchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTaDM]) VALUES (N'DM01', N'Mùa hè', N'Thoải mái')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTaDM]) VALUES (N'DM02', N'Đi làm', N'Nhẹ nhàng, thoải mái')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTaDM]) VALUES (N'DM03', N'Dạ hội', N'Sang trọng, quý phái')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [MoTaDM]) VALUES (N'DM04', N'Cá tính', N'Năng động')
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [DienThoai], [Email], [MatKhau], [TenKH], [DiaChi]) VALUES (13, N'0909948679', N'vohohai@gmail.com', N'123', N'Võ Hồ Hải', N'38 Tái Thiết')
INSERT [dbo].[KhachHang] ([MaKH], [DienThoai], [Email], [MatKhau], [TenKH], [DiaChi]) VALUES (14, N'0123456789', N'huynhson@gmail.com', N'900150983CD24FB0D6963F7D28E17F72', N'Huỳnh Thanh Sơn', N'38 Tái Thiết')
INSERT [dbo].[KhachHang] ([MaKH], [DienThoai], [Email], [MatKhau], [TenKH], [DiaChi]) VALUES (15, N'0978654674', N'maitien@gmail.com', N'912EC803B2CE49E4A541068D495AB570', N'Mai Đức Tiến', N'55 Trường Chinh')
INSERT [dbo].[KhachHang] ([MaKH], [DienThoai], [Email], [MatKhau], [TenKH], [DiaChi]) VALUES (1013, N'0223645875', N'kimtaeyeon@gmail.com', N'8D921624824736DA354247C3CC95AEF9', N'Kim Tae Yeon', N'8bist incheon korea')
INSERT [dbo].[KhachHang] ([MaKH], [DienThoai], [Email], [MatKhau], [TenKH], [DiaChi]) VALUES (1014, N'+84123456789', N'kwonyuri@gmail.com', N'202CB962AC59075B964B07152D234B70', N'Kwon Yuri', N'98 kjdndu')
INSERT [dbo].[KhachHang] ([MaKH], [DienThoai], [Email], [MatKhau], [TenKH], [DiaChi]) VALUES (1015, N'+84909948679', N'baejoochun@gmail.com', N'85BEE11252DC4A9530AEB6C8AF7310CA', N'IreneBae', N'23 dsda')
INSERT [dbo].[KhachHang] ([MaKH], [DienThoai], [Email], [MatKhau], [TenKH], [DiaChi]) VALUES (1016, N'+84654789213', N'levi@gmail.com', N'733D7BE2196FF70EFAF6913FC8BDCABF', N'Le Vi', N'36 opiuyt')
INSERT [dbo].[KhachHang] ([MaKH], [DienThoai], [Email], [MatKhau], [TenKH], [DiaChi]) VALUES (1017, N'+84321458687', N'tienking@gmail.com', N'202CB962AC59075B964B07152D234B70', N'tien', N'12 ba vi')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaSP], [SoLuong], [HinhSP], [MoTaSP], [MaDM]) VALUES (1, N'Bụi Bặm', 500000, 2, N'./images/home/product1.jpg', N'Phong trần, hợp đi chơi', N'DM01')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaSP], [SoLuong], [HinhSP], [MoTaSP], [MaDM]) VALUES (2, N'Nghiêm Túc', 125000, 5, N'./images/home/product2.jpg', N'Thư sinh, thanh lịch, vô địch khắp vũ trụ', N'DM01')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaSP], [SoLuong], [HinhSP], [MoTaSP], [MaDM]) VALUES (3, N'Đầm Dạ Hội', 250000, 3, N'./images/home/product3.jpg', N'Sang trọng, quý phái, hợp với chị em', N'DM02')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaSP], [SoLuong], [HinhSP], [MoTaSP], [MaDM]) VALUES (4, N'Thời Trang', 15000, 4, N'./images/home/gallery4.jpg', N'Fashion, hợp thời đại, đẳng cấp', N'DM02')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaSP], [SoLuong], [HinhSP], [MoTaSP], [MaDM]) VALUES (5, N'Nhắng Nhít', 120000, 6, N'./images/home/product5.jpg', N'Dễ thương, cute lạc lối', N'DM03')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaSP], [SoLuong], [HinhSP], [MoTaSP], [MaDM]) VALUES (6, N'Đơn Giản', 50000, 6, N'./images/home/product6.jpg', N'Dễ phối đồ, nhẹ nhàng, thoái mái', N'DM03')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaSP], [SoLuong], [HinhSP], [MoTaSP], [MaDM]) VALUES (7, N'Điệu Đà I', 123000, 1, N'./images/home/recommend1.jpg', N'Fashion, hợp thời đại, đẳng cấp', N'DM04')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaSP], [SoLuong], [HinhSP], [MoTaSP], [MaDM]) VALUES (8, N'Điệu Đà II', 124000, 1, N'./images/home/recommend2.jpg', N'Fashion, hợp thời đại, đẳng cấp', N'DM04')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
