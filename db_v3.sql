USE [WebDatComv3]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SPID] [int] NULL,
	[HDID] [int] NULL,
	[SoLuong] [int] NULL,
	[KTID] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](150) NULL,
	[MoTa] [nvarchar](300) NULL,
	[Alias] [varchar](150) NULL,
	[HinhAnh] [varchar](150) NULL,
	[TuKhoa] [nvarchar](100) NULL,
 CONSTRAINT [PK_DanhMucSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiamGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaGiamGia] [varchar](10) NULL,
	[GiaTri] [int] NULL,
	[TieuDe] [nvarchar](100) NULL,
	[NgayBD] [datetime] NULL,
	[NgayKT] [datetime] NULL,
	[SoLuong] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GioiThieu]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiThieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_GioiThieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KHID] [int] NULL,
	[NgayLap] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[TrangThai] [int] NULL,
	[ThanhTien] [float] NULL,
	[MaGiamGiaID] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](35) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](10) NULL,
	[DiaChi] [nvarchar](120) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KichThuocSP]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KichThuocSP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SPID] [int] NULL,
	[KT] [varchar](5) NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_KichThuocSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LienHe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](10) NULL,
	[DiaChi] [nvarchar](120) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Phone_X] [varchar](10) NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[isAdmin] [nchar](10) NULL CONSTRAINT [DF_NguoiDung_isAdmin]  DEFAULT ((0)),
	[MatKhau] [nvarchar](100) NULL,
	[SDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/21/2020 11:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[Alias] [varchar](150) NULL,
	[MoTa] [nvarchar](300) NULL,
	[TieuDe] [nvarchar](150) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[HinhAnh] [varchar](150) NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((1)),
	[DanhMucID] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([ID], [TenDanhMuc], [MoTa], [Alias], [HinhAnh], [TuKhoa]) VALUES (1, N'BÁNH NGỌT', N'BÁNH NGỌT', N'banh-ngot', N'/files/danhmucsanpham/2020/img/banner-cnnt.png', N'BÁNH NGỌT')
INSERT [dbo].[DanhMucSP] ([ID], [TenDanhMuc], [MoTa], [Alias], [HinhAnh], [TuKhoa]) VALUES (2, N'BÁNH MẶN', N'BÁNH MẶN', N'banh-man', N'/files/danhmucsanpham/2020/img/banner-cnnt.png', N'BÁNH MẶN')
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
SET IDENTITY_INSERT [dbo].[GiamGia] ON 

INSERT [dbo].[GiamGia] ([ID], [MaGiamGia], [GiaTri], [TieuDe], [NgayBD], [NgayKT], [SoLuong], [NoiDung]) VALUES (1, N'CMN2011UEF', 35, N'MỪNG NGÀY NHÀ GIÁO VIỆT NAM', CAST(N'2020-11-20 00:00:00.000' AS DateTime), CAST(N'2020-11-20 00:00:00.000' AS DateTime), 200, N'<p style="text-align: justify;"><em style="font-family:verdana; font-size:13px"><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></p>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">&nbsp;
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
')
INSERT [dbo].[GiamGia] ([ID], [MaGiamGia], [GiaTri], [TieuDe], [NgayBD], [NgayKT], [SoLuong], [NoiDung]) VALUES (2, N'CMN2011UEF', 35, N'MỪNG NGÀY NHÀ GIÁO VIỆT NAM', CAST(N'2020-11-20 00:00:00.000' AS DateTime), CAST(N'2020-11-20 00:00:00.000' AS DateTime), 200, N'<h1 style="text-align:justify">Vẫn tổ chức kỳ thi THPT nhưng chỉ để xét tốt nghiệp</h1>

<div class="news-date" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(136, 136, 136); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">21/04/2020</div>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></div>
&nbsp;

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
')
SET IDENTITY_INSERT [dbo].[GiamGia] OFF
SET IDENTITY_INSERT [dbo].[GioiThieu] ON 

INSERT [dbo].[GioiThieu] ([ID], [TieuDe], [NoiDung]) VALUES (1, N'SỨ MỆNH', N'<h3 style="text-align:justify"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></h3>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">&nbsp;
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;">&nbsp;</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;">&nbsp;</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;">&nbsp;</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;">&nbsp;</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;">&nbsp;</div>
</div>
')
SET IDENTITY_INSERT [dbo].[GioiThieu] OFF
SET IDENTITY_INSERT [dbo].[KichThuocSP] ON 

INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (1, 1, N'L', 3800000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (2, 1, N'M', 3200000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (3, 2, N'L', 3500000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (4, 2, N'M', 3000000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (5, 3, N'L', 4000000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (6, 3, N'M', 3500000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (7, 4, N'L', 3800000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (8, 4, N'M', 3200000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (9, 5, N'L', 3500000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (10, 5, N'M', 3000000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (11, 6, N'L', 4000000)
INSERT [dbo].[KichThuocSP] ([ID], [SPID], [KT], [Gia]) VALUES (12, 6, N'M', 3500000)
SET IDENTITY_INSERT [dbo].[KichThuocSP] OFF
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([ID], [HoTen], [Email], [Phone], [DiaChi], [NoiDung], [Phone_X]) VALUES (1, N'DiaChi', N'DiaChi', N'DiaChi', N'DiaChi', N'<p style="text-align: justify;"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></p>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">&nbsp;
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
', N'DiaChi')
SET IDENTITY_INSERT [dbo].[LienHe] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([ID], [HoTen], [Email], [isAdmin], [MatKhau], [SDT]) VALUES (1, N'Đặng Huỳnh Cơ Bảo', N'baodhc@uef.edu.vn', N'1         ', N'123', N'113333333333')
INSERT [dbo].[NguoiDung] ([ID], [HoTen], [Email], [isAdmin], [MatKhau], [SDT]) VALUES (2, N'Lưu Vũ Minh Duy', N'duylvm@uef.edu.vn', N'0         ', N'123', NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Alias], [MoTa], [TieuDe], [NoiDung], [HinhAnh], [TinhTrang], [DanhMucID]) VALUES (1, N'Bánh kem phô mai dâu Custas 282g', N'a', N'Cuối tuần rảnh rổi bạn hãy thử làm món bánh mì cuộn xúc xích nướng với sự trợ giúp đắc lực từ lò vi sóng siêu nhiệt Helsio của Sharp. Món bánh mì thơm mềm với nhân xúc xích hấp dẫn bên trong sẽ là món ăn sáng, ăn chơi thú vị cho cả nhà trong mùa dịch này. ', N'Bánh kem phô mai dâu Custas 282g', N'<h1 style="text-align:justify">Vẫn tổ chức kỳ thi THPT nhưng chỉ để xét tốt nghiệp</h1>

<div class="news-date" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(136, 136, 136); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">21/04/2020</div>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></div>
&nbsp;

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
', N'/files/banhs/2.jpg', N'1         ', 1)
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Alias], [MoTa], [TieuDe], [NoiDung], [HinhAnh], [TinhTrang], [DanhMucID]) VALUES (2, N'Bánh mì cuộn xúc xích', N'a', N'Cuối tuần rảnh rổi bạn hãy thử làm món bánh mì cuộn xúc xích nướng với sự trợ giúp đắc lực từ lò vi sóng siêu nhiệt Helsio của Sharp. Món bánh mì thơm mềm với nhân xúc xích hấp dẫn bên trong sẽ là món ăn sáng, ăn chơi thú vị cho cả nhà trong mùa dịch này. ', N'Bánh kem phô mai dâu Custas 282g', N'<h1 style="text-align:justify">Vẫn tổ chức kỳ thi THPT nhưng chỉ để xét tốt nghiệp</h1>

<div class="news-date" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(136, 136, 136); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">21/04/2020</div>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></div>
&nbsp;

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
', N'/files/banhs/2.jpg', N'1         ', 2)
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Alias], [MoTa], [TieuDe], [NoiDung], [HinhAnh], [TinhTrang], [DanhMucID]) VALUES (3, N'Bánh mì phô mai bơ tỏi Hàn Quốc', N'a', N'Cuối tuần rảnh rổi bạn hãy thử làm món bánh mì cuộn xúc xích nướng với sự trợ giúp đắc lực từ lò vi sóng siêu nhiệt Helsio của Sharp. Món bánh mì thơm mềm với nhân xúc xích hấp dẫn bên trong sẽ là món ăn sáng, ăn chơi thú vị cho cả nhà trong mùa dịch này. ', N'Bánh kem phô mai dâu Custas 282g', N'<h1 style="text-align:justify">Vẫn tổ chức kỳ thi THPT nhưng chỉ để xét tốt nghiệp</h1>

<div class="news-date" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(136, 136, 136); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">21/04/2020</div>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></div>
&nbsp;

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
', N'/files/banhs/2.jpg', N'1         ', 3)
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Alias], [MoTa], [TieuDe], [NoiDung], [HinhAnh], [TinhTrang], [DanhMucID]) VALUES (4, N'Bánh kem phô mai dâu Custas 282g', N'a', N'Cuối tuần rảnh rổi bạn hãy thử làm món bánh mì cuộn xúc xích nướng với sự trợ giúp đắc lực từ lò vi sóng siêu nhiệt Helsio của Sharp. Món bánh mì thơm mềm với nhân xúc xích hấp dẫn bên trong sẽ là món ăn sáng, ăn chơi thú vị cho cả nhà trong mùa dịch này. ', N'Bánh kem phô mai dâu Custas 282g', N'<h1 style="text-align:justify">Vẫn tổ chức kỳ thi THPT nhưng chỉ để xét tốt nghiệp</h1>

<div class="news-date" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(136, 136, 136); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">21/04/2020</div>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></div>
&nbsp;

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
', N'/files/banhs/2.jpg', N'1         ', 1)
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Alias], [MoTa], [TieuDe], [NoiDung], [HinhAnh], [TinhTrang], [DanhMucID]) VALUES (5, N'Bánh mì cuộn xúc xích', N'a', N'Cuối tuần rảnh rổi bạn hãy thử làm món bánh mì cuộn xúc xích nướng với sự trợ giúp đắc lực từ lò vi sóng siêu nhiệt Helsio của Sharp. Món bánh mì thơm mềm với nhân xúc xích hấp dẫn bên trong sẽ là món ăn sáng, ăn chơi thú vị cho cả nhà trong mùa dịch này. ', N'Bánh kem phô mai dâu Custas 282g', N'<h1 style="text-align:justify">Vẫn tổ chức kỳ thi THPT nhưng chỉ để xét tốt nghiệp</h1>

<div class="news-date" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(136, 136, 136); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">21/04/2020</div>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></div>
&nbsp;

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
', N'/files/banhs/2.jpg', N'1         ', 2)
INSERT [dbo].[SanPham] ([ID], [TenSanPham], [Alias], [MoTa], [TieuDe], [NoiDung], [HinhAnh], [TinhTrang], [DanhMucID]) VALUES (6, N'Bánh kem phô mai dâu Custas 282g', N'a', N'Cuối tuần rảnh rổi bạn hãy thử làm món bánh mì cuộn xúc xích nướng với sự trợ giúp đắc lực từ lò vi sóng siêu nhiệt Helsio của Sharp. Món bánh mì thơm mềm với nhân xúc xích hấp dẫn bên trong sẽ là món ăn sáng, ăn chơi thú vị cho cả nhà trong mùa dịch này. ', N'Bánh kem phô mai dâu Custas 282g', N'<h1 style="text-align:justify">Vẫn tổ chức kỳ thi THPT nhưng chỉ để xét tốt nghiệp</h1>

<div class="news-date" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 11px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(136, 136, 136); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">21/04/2020</div>

<div class="wrap-contents news-contents" style="box-sizing: border-box; margin: 10px 0px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; background: rgb(255, 255, 255); font-family: verdana, &quot;Segoe UI&quot;, tahoma, arial, sans-serif; text-align: justify;">
<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><em><strong>Sáng nay Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án tổ chức kỳ thi THPT 2020. Cuộc họp đã chọn phương án vẫn tổ chức thi nhưng sẽ là kỳ thi tốt nghiệp THPT thay vì kỳ thi hai mục đích như hiện hành.</strong></em></div>
&nbsp;

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><img alt="" src="https://static-cdn.uef.edu.vn/newsimg/hoat-dong/tuyen-sinh-2020/uef-van-thi-THPT.jpg" style="height:100%; margin:0px; width:100%" /></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: center;"><em>Năm 2020 sẽ vẫn tổ chức kỳ thi để xét tốt nghiệp THPT</em></div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; font-size: 13px !important; line-height: 23px !important; font-family: verdana !important;"><br />
Sáng nay 21.4, Bộ GD-ĐT đã báo cáo Thường trực Chính phủ về phương án thi THPT năm 2020 khi mà học sinh cả nước phải nghỉ học kéo dài vì dịch Covid -19. Phó thủ tướng Vũ Đức Đam chủ trì cuộc họp.<br />
Đây là lần thứ hai từ đầu tháng 4.2020 đến nay, Bộ GD-ĐT trình Thường trực Chính phủ về phương án tổ chức thi THPT năm nay.<br />
Theo phương án đề xuất của Bộ GD-ĐT, nếu dịch bệnh được kiểm soát, học sinh có thể đi học trước ngày 15.6 và như vậy vẫn quyết tâm tổ chức kỳ thi vào giữa tháng 8 bên cạnh tiếp tục nỗ lực đẩy mạnh việc dạy học qua internet, dạy học trên truyền hình.&nbsp;<br />
Dù vẫn tổ chức thi nhưng tên gọi của kỳ thi sẽ là "kỳ thi tốt nghiệp THPT năm 2020" thay vì "thi THPT quốc gia" như trước. Các địa phương sẽ chịu trách nhiệm về khâu tổ chức thi, chấm thi tự luận.<br />
Bộ GD-ĐT vẫn chịu trách nhiệm ra đề thi cho kỳ thi. Điều cần tính toán là sẽ tổ chức thi như thế nào để giảm áp lực cho học sinh.&nbsp;<br />
Với mục tiêu xét tuyển ĐH, năm nay các trường ĐH sẽ thực hiện quyền tự chủ tuyển sinh theo đúng luật Giáo dục đại học trên tinh thần các trường đã có sự chuẩn bị lâu nay.<br />
Trước đó, như Thanh Niên đã thông tin, do tình hình dịch bệnh diễn biến phức tạp, học sinh phải nghỉ học kéo dài, nhiều ý kiến của các chuyên gia, các nhà giáo đề xuất Bộ GD-ĐT cần tính toán lại phương án thi THPT quốc gia hoặc có thể tính đến việc bỏ thi quốc gia, giao kỳ thi để công nhận tốt nghiệp THPT cho các địa phương hoặc nhà trường.<br />
Trong tháng 3.2020, ông Nguyễn Xuân Khang, Hiệu trưởng Trường THCS - THPT Marie Curie Hà Nội viết thư đề nghị Bộ trưởng Bộ GD-ĐT Phùng Xuân Nhạ xem xét và quyết định về kỳ thi THPT quốc gia 2020, chỉ thi các môn toán, ngữ văn và ngoại ngữ; bỏ các bài thi tổ hợp khoa học tự nhiên và khoa học xã hội để giảm áp lực cho học sinh và xã hội.</div>

<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px !important; vertical-align: baseline; background: transparent; line-height: 23px !important; font-family: verdana !important; text-align: right;"><span style="color:rgb(178, 34, 34)"><strong>Theo: thanhnien.vn</strong></span></div>
</div>
', N'/files/banhs/2.jpg', N'1         ', 3)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([HDID])
REFERENCES [dbo].[HoaDon] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([SPID])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([KHID])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[KichThuocSP]  WITH CHECK ADD  CONSTRAINT [FK_KichThuocSP_SanPham] FOREIGN KEY([SPID])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[KichThuocSP] CHECK CONSTRAINT [FK_KichThuocSP_SanPham]
GO
