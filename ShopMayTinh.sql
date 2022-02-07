CREATE DATABASE [ShopMayTinh]
USE [ShopMayTinh]
GO
/****** Object:  Table [dbo].[category]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
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
	[status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordersdetail]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 10/31/2020 2:53:37 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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
ALTER TABLE [dbo].[user] ADD  DEFAULT ('Nam') FOR [gender]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [status]
GO
