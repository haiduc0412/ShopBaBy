USE [master]
GO
/****** Object:  Database [ShopQuanAoTreEm]    Script Date: 12/23/2021 7:48:37 AM ******/
CREATE DATABASE [ShopQuanAoTreEm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopQuanAoTreEm', FILENAME = N'F:\Set Up\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShopQuanAoTreEm.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopQuanAoTreEm_log', FILENAME = N'F:\Set Up\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShopQuanAoTreEm_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopQuanAoTreEm] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopQuanAoTreEm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopQuanAoTreEm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET  MULTI_USER 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopQuanAoTreEm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopQuanAoTreEm] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopQuanAoTreEm', N'ON'
GO
ALTER DATABASE [ShopQuanAoTreEm] SET QUERY_STORE = OFF
GO
USE [ShopQuanAoTreEm]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[metakey] [nvarchar](150) NULL,
	[metadesc] [nvarchar](150) NULL,
	[created_at] [smalldatetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](15) NULL,
	[title] [nvarchar](255) NULL,
	[detail] [ntext] NULL,
	[created_at] [smalldatetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[link](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[slug] [varchar](max) NULL,
	[tableId] [int] NULL,
	[type] [varchar](200) NULL,
	[parentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[link] [varchar](255) NULL,
	[tableid] [int] NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[position] [varchar](255) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[userid] [int] NOT NULL,
	[created_ate] [smalldatetime] NOT NULL,
	[exportdate] [smalldatetime] NULL,
	[deliveryaddress] [nvarchar](255) NOT NULL,
	[deliveryname] [nvarchar](100) NOT NULL,
	[deliveryphone] [varchar](255) NOT NULL,
	[deliveryemail] [varchar](255) NOT NULL,
	[deliveryPaymentMethod] [nvarchar](255) NOT NULL,
	[StatusPayment] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [pk_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordersdetail]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordersdetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[priceSale] [int] NOT NULL,
	[amount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[topid] [int] NULL,
	[title] [nvarchar](max) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[detail] [ntext] NULL,
	[img] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[metakey] [nvarchar](150) NOT NULL,
	[metadesc] [nvarchar](150) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[catid] [int] NOT NULL,
	[Submenu] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[slug] [nvarchar](255) NOT NULL,
	[img] [varchar](100) NOT NULL,
	[detail] [ntext] NOT NULL,
	[number] [int] NOT NULL,
	[price] [float] NOT NULL,
	[pricesale] [float] NOT NULL,
	[metakey] [nvarchar](150) NULL,
	[metadesc] [nvarchar](max) NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
	[sold] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[accessName] [varchar](255) NOT NULL,
	[description] [nvarchar](225) NULL,
	[GropID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[url] [varchar](255) NOT NULL,
	[position] [varchar](100) NOT NULL,
	[img] [varchar](100) NOT NULL,
	[orders] [int] NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[metakey] [varchar](150) NULL,
	[metadesc] [nvarchar](max) NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/23/2021 7:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[username] [varchar](225) NOT NULL,
	[password] [varchar](64) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gender] [nvarchar](5) NULL,
	[phone] [varchar](20) NULL,
	[img] [varchar](100) NULL,
	[access] [int] NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Áo Bé Trai', N'ao-be-trai', 1, 0, N'Áo Bé Trai', N'Quần áo cho bé nam 5-6 tuổi', CAST(N'2021-11-25T20:29:00' AS SmallDateTime), 1, CAST(N'2021-11-25T20:29:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'Quần Bé Nam', N'quan-be-nam', 1, 0, N'Quần Bé Nam', N'Quần áo cho bé nam 5-6 tuổi', CAST(N'2021-11-25T20:30:00' AS SmallDateTime), 1, CAST(N'2021-11-25T20:41:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Váy Bé Gái', N'vay-be-gai', 1, 0, N'Váy cho bé gái', NULL, CAST(N'2021-11-26T19:45:00' AS SmallDateTime), 1, CAST(N'2021-11-26T19:45:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Áo Khoác', N'ao-khoac', 1, 0, N'áo khoác', NULL, CAST(N'2021-11-26T19:47:00' AS SmallDateTime), 1, CAST(N'2021-11-26T19:47:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'Áo Thu Đông ', N'ao-thu-dong-', 1, 0, N'Áo len, áo nỉ, thu đông', NULL, CAST(N'2021-11-26T19:47:00' AS SmallDateTime), 1, CAST(N'2021-11-26T19:47:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Áo Thun', N'ao-thun', 1, 0, N'Áo thun', NULL, CAST(N'2021-11-26T19:48:00' AS SmallDateTime), 1, CAST(N'2021-11-26T19:48:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Trang Chủ', N'menu', N'Home', 2, 0, 1, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2021-12-20T20:28:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Liên Hệ', N'page', N'lien-he', 2, 0, 3, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Sản Phẩm', N'menu', N'san-pham', 2, 0, 4, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Tất Cả Sản Phẩm', N'menu', N'sanpham', 2, 4, 10, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-03T22:32:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (10, N'Phu-Kien', N'menu', N'phu-kien', 2, 4, 12, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2021-12-20T20:27:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (27, N'Áo Khoác', N'menu', N'loaiSP/ao-khoac', 2, 0, 1, N'mainmenu', CAST(N'2021-12-15T21:33:00' AS SmallDateTime), 1, CAST(N'2021-12-15T21:33:00' AS SmallDateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[menu] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (1, N'868211/26/2021 9:36:29 PM', 1, CAST(N'2021-11-26T21:36:00' AS SmallDateTime), CAST(N'2021-11-26T21:36:00' AS SmallDateTime), N'hanoi', N'Duc', N'0166564445', N'haiduc.hdn@gmail.com', N'COD', 2, CAST(N'2021-12-20T21:36:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[orders] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (2, N'5991812/20/2021 8:43:44 PM', 1, CAST(N'2021-12-20T20:44:00' AS SmallDateTime), CAST(N'2021-12-20T20:44:00' AS SmallDateTime), N'hanoi', N'Duc', N'0166564445', N'haiduc.hdn@gmail.com', N'COD', 2, CAST(N'2021-12-20T21:02:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[orders] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (3, N'1051012/20/2021 8:45:07 PM', 1, CAST(N'2021-12-20T20:45:00' AS SmallDateTime), CAST(N'2021-12-20T20:45:00' AS SmallDateTime), N'hanoi', N'Duc', N'0166564445', N'haiduc.hdn@gmail.com', N'Cổng thanh toán Ngân Lượng', 2, CAST(N'2021-12-20T21:02:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[orders] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (4, N'8777412/20/2021 8:46:27 PM', 1, CAST(N'2021-12-20T20:46:00' AS SmallDateTime), CAST(N'2021-12-20T20:46:00' AS SmallDateTime), N'hanoi', N'Duc', N'0166564445', N'haiduc.hdn@gmail.com', N'ATM Online qua ngân lượng', 2, CAST(N'2021-12-20T21:02:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[orders] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (5, N'2095512/20/2021 9:04:58 PM', 1, CAST(N'2021-12-20T21:05:00' AS SmallDateTime), CAST(N'2021-12-20T21:05:00' AS SmallDateTime), N'hanoi', N'Duc', N'0166564445', N'haiduc.hdn@gmail.com', N'COD', 2, CAST(N'2021-12-20T21:05:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ordersdetail] ON 

INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (1, 1, 3, 150000, 1, 10, 135000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (2, 2, 3, 150000, 1, 10, 135000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (3, 3, 4, 120000, 3, 0, 360000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (4, 4, 4, 120000, 3, 0, 360000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (5, 5, 4, 120000, 1, 0, 120000)
SET IDENTITY_INSERT [dbo].[ordersdetail] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (2, 6, 19, N'Áo Thun bé từ 5-7 tuổi', N'ao-thun-be-tu-5-7-tuoi', N'aothun/ao-thun-be-tu-5-7-tuoi.jpg', N'Áo thun cho nam ', 100, 100000, 0, N'Áo Thun bé từ ', NULL, CAST(N'2021-11-26T19:50:00' AS SmallDateTime), 1, CAST(N'2021-11-26T19:50:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (3, 3, 1, N'Váy Hồng', N'vay-hong', N'vaybegai/vay-hong.jpg', N'Váy cho bé gái từ 5-6 tuổi', 88, 150000, 10, NULL, NULL, CAST(N'2021-11-26T20:00:00' AS SmallDateTime), 1, CAST(N'2021-11-26T20:00:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (4, 6, 1, N'Áo phông bé nam', N'ao-phong-be-nam', N'aothun/ao-phong-be-nam.jpg', N'Áo phông bé nam 5-6 tuổi', 43, 120000, 0, N'Áo phông trẻ em', N'sale-12', CAST(N'2021-12-11T11:17:00' AS SmallDateTime), 1, CAST(N'2021-12-20T20:50:00' AS SmallDateTime), 1, 1, 0)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (1, 0, N'ADMIN', N'Quản trị viên Full quyền', N'ADMIN')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (2, 1, N'CUSTOMER', N'Khách hàng', N'CUSTOMER')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (3, 2, N'ACCOUNTANT', N'Kế toán, thống kê', N'ACCOUNTANT')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (7, 3, N'SALESMAN', N'Nhân viên bán hàng', N'SALESMAN')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Slider3333', N'slider3333', N'SliderShow', N'Banner1.jpg', 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2021-12-19T11:36:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Slider', N'slider', N'SliderShow', N'slider.jpg', 1, CAST(N'2021-11-26T21:19:00' AS SmallDateTime), 1, CAST(N'2021-12-19T11:36:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'Slider', N'slider', N'SliderShow', N'slider.jpg', 1, CAST(N'2021-11-26T21:20:00' AS SmallDateTime), 1, CAST(N'2021-12-19T11:36:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'ABC', N'abc', N'SliderShow', N'abc.jpg', 1, CAST(N'2021-11-26T21:20:00' AS SmallDateTime), 1, CAST(N'2021-12-19T11:36:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (10, N'Banner1', N'banner1', N'SliderShow', N'banner1.svg', NULL, CAST(N'2021-12-19T11:46:00' AS SmallDateTime), 1, CAST(N'2021-12-19T13:27:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Banner2', N'banner2', N'SliderShow', N'banner2.svg', NULL, CAST(N'2021-12-19T11:46:00' AS SmallDateTime), 1, CAST(N'2021-12-19T13:27:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (12, N'Banner1', N'banner1', N'SliderShow', N'banner1.jpg', NULL, CAST(N'2021-12-19T13:25:00' AS SmallDateTime), 1, CAST(N'2021-12-19T13:25:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (13, N'Banner4', N'banner4', N'SliderShow', N'banner4.jpg', NULL, CAST(N'2021-12-19T13:27:00' AS SmallDateTime), 1, CAST(N'2021-12-19T13:27:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[slider] OFF
GO
SET IDENTITY_INSERT [dbo].[topic] ON 

INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Giới Thiệu', N'gioi-thieu', 0, 1, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-26T13:12:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'Tin Tức', N'tin-tuc', 0, 1, N'a', N'a', CAST(N'2020-10-31T13:57:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:57:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[topic] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Nguyễn Hải Đức', N'admin', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'0975271384', N'ádasd', 0, CAST(N'2020-05-10T15:45:00' AS SmallDateTime), 1, CAST(N'2021-12-11T11:23:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[users] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Nguyễn Văn A', N'khachhang2', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'1231231231', N'ádasd', 1, CAST(N'2020-05-08T16:43:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:25:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[users] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Nguyễn Văn A', N'Accountant', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'nu', N'13212123', N'132121', 2, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:16:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[users] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (15, N'Nguyễn Hải Đức', N'khachhang112', N'i5YoL5fbmnteeBT/9l4G1A==', N'abc@gmail.com', N'Nam', N'0975271384', N'ádasd', 1, CAST(N'2020-06-12T09:45:00' AS SmallDateTime), 1, CAST(N'2021-12-11T11:31:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[users] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (16, N'Tài Khoản Test', N'ABC', N'QH237HVSvqabN8VuYS1DTA==', N'haiduc.hdn@gmail.com', N'Nam', N'0985665637', N'ádasd', 0, CAST(N'2021-12-11T11:36:00' AS SmallDateTime), 1, CAST(N'2021-12-11T11:36:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[users] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (20, N'FITTHUCTAP10', N'admin1', N'N5QwulsH1DNtq6x6sS4O1A==', N'ducnh@fpts.com.vn', N'Nam', N'0985665637', N'ádasd', 0, CAST(N'2021-12-11T12:14:00' AS SmallDateTime), 1, CAST(N'2021-12-11T12:14:00' AS SmallDateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
/****** Object:  Index [IX_role]    Script Date: 12/23/2021 7:48:38 AM ******/
ALTER TABLE [dbo].[role] ADD  CONSTRAINT [IX_role] UNIQUE NONCLUSTERED 
(
	[parentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [link]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [tableid]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [created_by]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [updated_by]
GO
ALTER TABLE [dbo].[ordersdetail] ADD  DEFAULT ((1)) FOR [priceSale]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [topid]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [detail]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('post') FOR [type]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (NULL) FOR [sold]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [orders]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT (NULL) FOR [updated_by]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('Nam') FOR [gender]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[link]  WITH CHECK ADD  CONSTRAINT [FK_link_topic] FOREIGN KEY([ID])
REFERENCES [dbo].[topic] ([ID])
GO
ALTER TABLE [dbo].[link] CHECK CONSTRAINT [FK_link_topic]
GO
ALTER TABLE [dbo].[ordersdetail]  WITH CHECK ADD  CONSTRAINT [fk_orderid] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([ID])
GO
ALTER TABLE [dbo].[ordersdetail] CHECK CONSTRAINT [fk_orderid]
GO
ALTER TABLE [dbo].[ordersdetail]  WITH CHECK ADD  CONSTRAINT [FK_ordersdetail_product] FOREIGN KEY([productid])
REFERENCES [dbo].[product] ([ID])
GO
ALTER TABLE [dbo].[ordersdetail] CHECK CONSTRAINT [FK_ordersdetail_product]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK_post_topic] FOREIGN KEY([topid])
REFERENCES [dbo].[topic] ([ID])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK_post_topic]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([catid])
REFERENCES [dbo].[category] ([ID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_role] FOREIGN KEY([access])
REFERENCES [dbo].[role] ([parentId])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_role]
GO
USE [master]
GO
ALTER DATABASE [ShopQuanAoTreEm] SET  READ_WRITE 
GO
