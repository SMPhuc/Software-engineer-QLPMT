/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2022 (16.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2022
    Target Database Engine Edition : Microsoft SQL Server Express Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [QuanLyPhongMach]    Script Date: 5/9/2023 3:39:25 PM ******/
CREATE DATABASE [QuanLyPhongMach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyPhongMach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyPhongMach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyPhongMach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QuanLyPhongMach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyPhongMach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyPhongMach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyPhongMach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyPhongMach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyPhongMach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyPhongMach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyPhongMach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyPhongMach] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyPhongMach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyPhongMach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyPhongMach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyPhongMach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyPhongMach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyPhongMach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyPhongMach] SET QUERY_STORE = OFF
GO
USE [QuanLyPhongMach]
GO
/****** Object:  Table [dbo].[BAC_SI]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAC_SI](
	[MA_BAC_SI] [varchar](50) NOT NULL,
	[HO_TEN] [nvarchar](50) NULL,
	[CHUYEN_MON] [nvarchar](50) NULL,
	[Password] [nchar](50) NULL,
 CONSTRAINT [PK_BAC_SI] PRIMARY KEY CLUSTERED 
(
	[MA_BAC_SI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENH_NHAN]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENH_NHAN](
	[MA_SO_BENH_NHAN] [varchar](50) NOT NULL,
	[MA_NHAN_VIEN] [varchar](50) NOT NULL,
	[TEN_BENH_NHAN] [nvarchar](50) NULL,
	[NGAY_SINH] [date] NULL,
	[DIA_CHI] [nvarchar](50) NULL,
	[SO_DIEN_THOAI] [varchar](10) NULL,
 CONSTRAINT [PK_BENH_NHAN] PRIMARY KEY CLUSTERED 
(
	[MA_SO_BENH_NHAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHI_DINH]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHI_DINH](
	[MA_SO_PHIEU_KHAM_BENH] [varchar](50) NOT NULL,
	[MA_XET_NGHIEM] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CHI_DINH] PRIMARY KEY CLUSTERED 
(
	[MA_SO_PHIEU_KHAM_BENH] ASC,
	[MA_XET_NGHIEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEM_BENH_NHAN]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEM_BENH_NHAN](
	[count] [int] NULL,
	[date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOA_DON_THANH_TOAN]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA_DON_THANH_TOAN](
	[MA_SO_HOA_DON] [varchar](50) NOT NULL,
	[MA_SO_BENH_NHAN] [varchar](50) NOT NULL,
	[NGAY_LAP_HOA_DON] [date] NULL,
	[TONG_CHI_PHI] [float] NULL,
 CONSTRAINT [PK_HOA_DON_THANH_TOAN] PRIMARY KEY CLUSTERED 
(
	[MA_SO_HOA_DON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KE_TOA]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KE_TOA](
	[MA_SO_PHIEU_KHAM_BENH] [varchar](50) NOT NULL,
	[MA_THUOC] [varchar](50) NOT NULL,
 CONSTRAINT [PK_KE_TOA] PRIMARY KEY CLUSTERED 
(
	[MA_SO_PHIEU_KHAM_BENH] ASC,
	[MA_THUOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN_VIEN_TIEP_NHAN]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_VIEN_TIEP_NHAN](
	[MA_NHAN_VIEN] [varchar](50) NOT NULL,
	[HO_TEN] [nvarchar](50) NULL,
	[NGAY_SINH] [date] NULL,
	[SO__DIEN_THOAI] [text] NULL,
	[Password] [nchar](50) NULL,
 CONSTRAINT [PK_NHAN_VIEN_TIEP_NHAN] PRIMARY KEY CLUSTERED 
(
	[MA_NHAN_VIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEU_KHAM_BENH]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEU_KHAM_BENH](
	[MA_SO_PHIEU_KHAM_BENH] [varchar](50) NOT NULL,
	[MA_SO_BENH_NHAN] [varchar](50) NOT NULL,
	[MA_BAC_SI] [varchar](50) NOT NULL,
	[TRIEU_CHUNG] [nvarchar](50) NULL,
	[KET_QUA_KHAM_BENH] [nvarchar](50) NULL,
	[NGAY_KHAM_BENH] [date] NULL,
 CONSTRAINT [PK_PHIEU_KHAM_BENH] PRIMARY KEY CLUSTERED 
(
	[MA_SO_PHIEU_KHAM_BENH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SO_KHAM_BENH]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO_KHAM_BENH](
	[MASO] [varchar](50) NOT NULL,
	[MA_SO_BENH_NHAN] [varchar](50) NOT NULL,
	[NGAYMUASO] [date] NULL,
 CONSTRAINT [PK_SO_KHAM_BENH] PRIMARY KEY CLUSTERED 
(
	[MASO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUOC]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUOC](
	[MA_THUOC] [varchar](50) NOT NULL,
	[TEN_THUOC] [nvarchar](50) NULL,
	[GIA_THUOC] [varchar](50) NULL,
	[DON_VI_TINH] [nvarchar](50) NULL,
	[CACH_DUNG] [nvarchar](50) NULL,
 CONSTRAINT [PK_THUOC] PRIMARY KEY CLUSTERED 
(
	[MA_THUOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XET_NGHIEM]    Script Date: 5/9/2023 3:39:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XET_NGHIEM](
	[MA_XET_NGHIEM] [varchar](50) NOT NULL,
	[TEN_XET_NGHIEM] [nvarchar](50) NULL,
	[KET_QUA_XET_NGHIEM] [nvarchar](50) NULL,
 CONSTRAINT [PK_XET_NGHIEM] PRIMARY KEY CLUSTERED 
(
	[MA_XET_NGHIEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAC_SI] ([MA_BAC_SI], [HO_TEN], [CHUYEN_MON], [Password]) VALUES (N'1111', N'SMPhuc', N'ngoai khoa', N'123456789                                         ')
INSERT [dbo].[BAC_SI] ([MA_BAC_SI], [HO_TEN], [CHUYEN_MON], [Password]) VALUES (N'BS001', N'Nguyễn Văn Sĩ', N'Ngoại Khoa', NULL)
INSERT [dbo].[BAC_SI] ([MA_BAC_SI], [HO_TEN], [CHUYEN_MON], [Password]) VALUES (N'BS002', N'Vũ Văn B', N'Nội Khoa', NULL)
INSERT [dbo].[BAC_SI] ([MA_BAC_SI], [HO_TEN], [CHUYEN_MON], [Password]) VALUES (N'BS003', N'Lê Hoàng C', N'Tai mũi họng', NULL)
INSERT [dbo].[BAC_SI] ([MA_BAC_SI], [HO_TEN], [CHUYEN_MON], [Password]) VALUES (N'BS004', N'Long Văn D', N'Chỉnh hình', NULL)
GO
INSERT [dbo].[DEM_BENH_NHAN] ([count], [date]) VALUES (3, CAST(N'2023-05-09' AS Date))
GO
INSERT [dbo].[NHAN_VIEN_TIEP_NHAN] ([MA_NHAN_VIEN], [HO_TEN], [NGAY_SINH], [SO__DIEN_THOAI], [Password]) VALUES (N'NV001', N'Hoàng Văn C', CAST(N'2003-02-20' AS Date), N'0937230092', N'123456789                                         ')
INSERT [dbo].[NHAN_VIEN_TIEP_NHAN] ([MA_NHAN_VIEN], [HO_TEN], [NGAY_SINH], [SO__DIEN_THOAI], [Password]) VALUES (N'NV002', N'Nguyễn Văn A', CAST(N'1999-11-11' AS Date), N'0236514587', NULL)
INSERT [dbo].[NHAN_VIEN_TIEP_NHAN] ([MA_NHAN_VIEN], [HO_TEN], [NGAY_SINH], [SO__DIEN_THOAI], [Password]) VALUES (N'NV003', N'Trần Hoàng Tông', CAST(N'2004-09-09' AS Date), N'0236658944', NULL)
INSERT [dbo].[NHAN_VIEN_TIEP_NHAN] ([MA_NHAN_VIEN], [HO_TEN], [NGAY_SINH], [SO__DIEN_THOAI], [Password]) VALUES (N'NV004', N'Lê Văn B', CAST(N'1975-04-30' AS Date), N'0125665847', NULL)
INSERT [dbo].[NHAN_VIEN_TIEP_NHAN] ([MA_NHAN_VIEN], [HO_TEN], [NGAY_SINH], [SO__DIEN_THOAI], [Password]) VALUES (N'NV005', N'Tống Thanh Thư', CAST(N'1998-05-05' AS Date), N'0316997584', NULL)
GO
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT001', N'Thuốc 1', N'10000', N'Chai', N'Cách 4')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT002', N'Thuốc 2', N'10000', N'Viên', N'Cách 4')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT003', N'Thuốc 3', N'10000', N'Chai', N'Cách 1')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT004', N'Thuốc 4', N'10000', N'Viên', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT005', N'Thuốc 5', N'10000', N'Chai', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT006', N'Thuốc 6', N'10000', N'Viên', N'Cách 1')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT007', N'Thuốc 7', N'10000', N'Chai', N'Cách 1')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT008', N'Thuốc 8', N'10000', N'Viên', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT009', N'Thuốc 9', N'10000', N'Chai', N'Cách 2')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT010', N'Thuốc 10', N'10000', N'Viên', N'Cách 4')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT011', N'Thuốc 11', N'10000', N'Chai', N'Cách 1')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT012', N'Thuốc 12', N'10000', N'Viên', N'Cách 1')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT013', N'Thuốc 13', N'10000', N'Chai', N'Cách 1')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT014', N'Thuốc 14', N'10000', N'Viên', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT015', N'Thuốc 15', N'10000', N'Chai', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT016', N'Thuốc 16', N'10000', N'Viên', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT017', N'Thuốc 17', N'10000', N'Chai', N'Cách 4')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT018', N'Thuốc 18', N'10000', N'Viên', N'Cách 2')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT019', N'Thuốc 19', N'10000', N'Chai', N'Cách 2')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT020', N'Thuốc 20', N'10000', N'Viên', N'Cách 1')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT021', N'Thuốc 21', N'10000', N'Chai', N'Cách 4')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT022', N'Thuốc 22', N'10000', N'Viên', N'Cách 2')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT023', N'Thuốc 23', N'10000', N'Chai', N'Cách 4')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT024', N'Thuốc 24', N'10000', N'Viên', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT025', N'Thuốc 25', N'10000', N'Chai', N'Cách 4')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT026', N'Thuốc 26', N'10000', N'Viên', N'Cách 2')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT027', N'Thuốc 27', N'10000', N'Chai', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT028', N'Thuốc 28', N'10000', N'Viên', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT029', N'Thuốc 29', N'10000', N'Chai', N'Cách 3')
INSERT [dbo].[THUOC] ([MA_THUOC], [TEN_THUOC], [GIA_THUOC], [DON_VI_TINH], [CACH_DUNG]) VALUES (N'MT030', N'Thuốc 30', N'10000', N'Viên', N'Cách 1')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [BENHNHAN__TIEP_NHAN__NVTIEPNHAN_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [BENHNHAN__TIEP_NHAN__NVTIEPNHAN_FK] ON [dbo].[BENH_NHAN]
(
	[MA_NHAN_VIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PHIEUKHAMBENH__YEU_CAU__XETNGHIEM_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [PHIEUKHAMBENH__YEU_CAU__XETNGHIEM_FK] ON [dbo].[CHI_DINH]
(
	[MA_SO_PHIEU_KHAM_BENH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PHIEUKHAMBENH__YEU_CAU__XETNGHIEM2_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [PHIEUKHAMBENH__YEU_CAU__XETNGHIEM2_FK] ON [dbo].[CHI_DINH]
(
	[MA_XET_NGHIEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RELATIONSHIP_2_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_2_FK] ON [dbo].[HOA_DON_THANH_TOAN]
(
	[MA_SO_BENH_NHAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PHIEUKHAMBENH__KE_THUOC__THUOC_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [PHIEUKHAMBENH__KE_THUOC__THUOC_FK] ON [dbo].[KE_TOA]
(
	[MA_SO_PHIEU_KHAM_BENH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PHIEUKHAMBENH__KE_THUOC__THUOC2_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [PHIEUKHAMBENH__KE_THUOC__THUOC2_FK] ON [dbo].[KE_TOA]
(
	[MA_THUOC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PHIEUKHAMBENH__KE_THUOC__BACSI_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [PHIEUKHAMBENH__KE_THUOC__BACSI_FK] ON [dbo].[PHIEU_KHAM_BENH]
(
	[MA_BAC_SI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RELATIONSHIP_3_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [RELATIONSHIP_3_FK] ON [dbo].[PHIEU_KHAM_BENH]
(
	[MA_SO_BENH_NHAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [BENHNHAN__MUA_CO__SOKHAMBENH_FK]    Script Date: 5/9/2023 3:39:26 PM ******/
CREATE NONCLUSTERED INDEX [BENHNHAN__MUA_CO__SOKHAMBENH_FK] ON [dbo].[SO_KHAM_BENH]
(
	[MA_SO_BENH_NHAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BENH_NHAN]  WITH CHECK ADD  CONSTRAINT [FK_BENH_NHAN_BENHNHAN_NHAN_VIEN] FOREIGN KEY([MA_NHAN_VIEN])
REFERENCES [dbo].[NHAN_VIEN_TIEP_NHAN] ([MA_NHAN_VIEN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BENH_NHAN] CHECK CONSTRAINT [FK_BENH_NHAN_BENHNHAN_NHAN_VIEN]
GO
ALTER TABLE [dbo].[CHI_DINH]  WITH CHECK ADD  CONSTRAINT [FK_CHI_DINH_CHI_DINH_PHIEU_KHAM] FOREIGN KEY([MA_SO_PHIEU_KHAM_BENH])
REFERENCES [dbo].[PHIEU_KHAM_BENH] ([MA_SO_PHIEU_KHAM_BENH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHI_DINH] CHECK CONSTRAINT [FK_CHI_DINH_CHI_DINH_PHIEU_KHAM]
GO
ALTER TABLE [dbo].[CHI_DINH]  WITH CHECK ADD  CONSTRAINT [FK_CHI_DINH_PHIEUKHAM_XET_NGHIEM] FOREIGN KEY([MA_XET_NGHIEM])
REFERENCES [dbo].[XET_NGHIEM] ([MA_XET_NGHIEM])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHI_DINH] CHECK CONSTRAINT [FK_CHI_DINH_PHIEUKHAM_XET_NGHIEM]
GO
ALTER TABLE [dbo].[HOA_DON_THANH_TOAN]  WITH CHECK ADD  CONSTRAINT [FK_HOA_DON_BENHNHAN_BENH_NHAN] FOREIGN KEY([MA_SO_BENH_NHAN])
REFERENCES [dbo].[BENH_NHAN] ([MA_SO_BENH_NHAN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOA_DON_THANH_TOAN] CHECK CONSTRAINT [FK_HOA_DON_BENHNHAN_BENH_NHAN]
GO
ALTER TABLE [dbo].[KE_TOA]  WITH CHECK ADD  CONSTRAINT [FK_KE_TOA_PHIEUKHAM_PHIEU_KHAM] FOREIGN KEY([MA_SO_PHIEU_KHAM_BENH])
REFERENCES [dbo].[PHIEU_KHAM_BENH] ([MA_SO_PHIEU_KHAM_BENH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KE_TOA] CHECK CONSTRAINT [FK_KE_TOA_PHIEUKHAM_PHIEU_KHAM]
GO
ALTER TABLE [dbo].[KE_TOA]  WITH CHECK ADD  CONSTRAINT [FK_KE_TOA_PHIEUKHAM_THUOC] FOREIGN KEY([MA_THUOC])
REFERENCES [dbo].[THUOC] ([MA_THUOC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KE_TOA] CHECK CONSTRAINT [FK_KE_TOA_PHIEUKHAM_THUOC]
GO
ALTER TABLE [dbo].[PHIEU_KHAM_BENH]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_KH_BENHNHAN__BENH_NHA] FOREIGN KEY([MA_SO_BENH_NHAN])
REFERENCES [dbo].[BENH_NHAN] ([MA_SO_BENH_NHAN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHIEU_KHAM_BENH] CHECK CONSTRAINT [FK_PHIEU_KH_BENHNHAN__BENH_NHA]
GO
ALTER TABLE [dbo].[PHIEU_KHAM_BENH]  WITH CHECK ADD  CONSTRAINT [FK_PHIEU_KH_PHIEUKHAM_BAC_SI] FOREIGN KEY([MA_BAC_SI])
REFERENCES [dbo].[BAC_SI] ([MA_BAC_SI])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHIEU_KHAM_BENH] CHECK CONSTRAINT [FK_PHIEU_KH_PHIEUKHAM_BAC_SI]
GO
ALTER TABLE [dbo].[SO_KHAM_BENH]  WITH CHECK ADD  CONSTRAINT [FK_SO_KHAM__BENHNHAN__BENH_NHA] FOREIGN KEY([MA_SO_BENH_NHAN])
REFERENCES [dbo].[BENH_NHAN] ([MA_SO_BENH_NHAN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SO_KHAM_BENH] CHECK CONSTRAINT [FK_SO_KHAM__BENHNHAN__BENH_NHA]
GO
USE [master]
GO
ALTER DATABASE [QuanLyPhongMach] SET  READ_WRITE 
GO
