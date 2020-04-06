USE [CapstoneDB]
GO
/****** Object:  Table [dbo].[CheckingList]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckingList](
	[checking_id] [int] IDENTITY(1,1) NOT NULL,
	[place_id] [int] NULL,
	[staff_id] [int] NULL,
	[date_time] [datetime] NULL,
	[checking_status_id] [int] NULL,
 CONSTRAINT [PK_CheckingList] PRIMARY KEY CLUSTERED 
(
	[checking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheckingStatus]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckingStatus](
	[checking_status_id] [int] IDENTITY(1,1) NOT NULL,
	[checking_status_name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_CheckingStatusStatus] PRIMARY KEY CLUSTERED 
(
	[checking_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[contract_id] [int] IDENTITY(1,1) NOT NULL,
	[owner_id] [int] NULL,
	[renter_id] [int] NULL,
	[place_id] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[fee] [float] NULL,
	[contract_status_id] [int] NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractStatus]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractStatus](
	[contract_status_id] [int] IDENTITY(1,1) NOT NULL,
	[contract_status_name] [varchar](10) NULL,
 CONSTRAINT [PK_ContractStatus] PRIMARY KEY CLUSTERED 
(
	[contract_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostOfLivingManagement]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostOfLivingManagement](
	[col_id] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NULL,
	[month] [date] NULL,
	[power_number] [int] NULL,
	[power_unit_price] [float] NULL,
	[water_number] [int] NULL,
	[water_unit_price] [float] NULL,
	[internet] [float] NULL,
	[fee] [float] NULL,
	[total_money] [float] NULL,
	[payment_status_id] [int] NULL,
 CONSTRAINT [PK_CostOfLivingManagement] PRIMARY KEY CLUSTERED 
(
	[col_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistrictDB]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistrictDB](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[district_name] [nvarchar](30) NOT NULL,
	[district_latitude] [nvarchar](50) NULL,
	[district_longitude] [nvarchar](50) NULL,
	[district_type] [nvarchar](30) NULL,
 CONSTRAINT [PK_AreaDB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentList]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentList](
	[equipment_list_id] [int] IDENTITY(1,1) NOT NULL,
	[place_id] [int] NOT NULL,
	[equipment_name] [nchar](250) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[like_new] [int] NOT NULL,
	[equipment_describe] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_EquipmentList_1] PRIMARY KEY CLUSTERED 
(
	[equipment_list_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageLink]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageLink](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[place_id] [int] NOT NULL,
	[image_link] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ImageLink] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Map]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Map](
	[map_id] [int] IDENTITY(1,1) NOT NULL,
	[longtitude] [float] NOT NULL,
	[latitude] [float] NOT NULL,
	[place_id] [int] NULL,
 CONSTRAINT [PK_Map] PRIMARY KEY CLUSTERED 
(
	[map_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderList](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[orderer_id] [int] NOT NULL,
	[place_id] [int] NOT NULL,
	[staff_id] [int] NULL,
	[order_status_id] [int] NOT NULL,
	[date_time] [datetime] NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[email] [nchar](500) NOT NULL,
	[phone_number] [nchar](102) NOT NULL,
	[message] [nvarchar](250) NULL,
 CONSTRAINT [PK_OrderList] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[order_status_id] [int] IDENTITY(1,1) NOT NULL,
	[order_status_name] [varchar](10) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[order_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[place_id] [int] NULL,
	[create_time] [datetime] NULL,
	[status] [nvarchar](50) NULL,
	[payer_id] [nvarchar](50) NULL,
	[money] [float] NULL,
	[description] [nvarchar](500) NULL,
	[order_id] [nchar](100) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatus]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatus](
	[payment_status_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_status_name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_PaymentStatus] PRIMARY KEY CLUSTERED 
(
	[payment_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[owner_id] [int] NOT NULL,
	[place_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[price] [float] NOT NULL,
	[area] [float] NULL,
	[district_id] [int] NOT NULL,
	[ward_id] [int] NOT NULL,
	[street_id] [int] NOT NULL,
	[address] [nvarchar](250) NULL,
	[role_of_place_id] [int] NOT NULL,
	[status_place_id] [int] NOT NULL,
	[counter_view] [int] NULL,
	[frontispiece] [float] NULL,
	[home_direction] [nvarchar](200) NULL,
	[floors] [int] NULL,
	[bed_rooms] [int] NULL,
	[toilets] [int] NULL,
	[description] [nvarchar](3000) NOT NULL,
	[image_large] [varchar](max) NOT NULL,
	[contact_name] [nvarchar](200) NULL,
	[contact_address] [nvarchar](100) NULL,
	[contact_phone_number] [nchar](120) NULL,
	[contact_email] [nchar](254) NULL,
	[date_post] [date] NULL,
 CONSTRAINT [PK_Place_1] PRIMARY KEY CLUSTERED 
(
	[place_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleOfPlace]    Script Date: 4/6/2020 6:19:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleOfPlace](
	[role_of_place_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](20) NULL,
 CONSTRAINT [PK_RoleOfPlace] PRIMARY KEY CLUSTERED 
(
	[role_of_place_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleOfUser]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleOfUser](
	[role_id] [int] NOT NULL,
	[role_name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_RoleOfUser] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOfUser]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOfUser](
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](10) NOT NULL,
 CONSTRAINT [PK_StatusOfUser] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusPlace]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusPlace](
	[status_place_id] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](10) NULL,
 CONSTRAINT [PK_StatusPlace] PRIMARY KEY CLUSTERED 
(
	[status_place_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StreetDB]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StreetDB](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[district_id] [int] NULL,
	[street_name] [nvarchar](30) NULL,
 CONSTRAINT [PK_StreetDB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetail]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetail](
	[user_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[gender] [nvarchar](10) NULL,
	[day_of_birth] [date] NULL,
	[address] [nvarchar](100) NULL,
	[phone_number] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[bank_account] [nchar](20) NULL,
	[avatar_link] [nchar](1000) NULL,
 CONSTRAINT [PK_UserDetail] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[role_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WardDB]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WardDB](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[district_id] [int] NOT NULL,
	[ward_name] [nvarchar](30) NOT NULL,
	[ward_type] [nvarchar](30) NULL,
	[ward_latitude] [nvarchar](50) NULL,
	[ward_longitude] [nvarchar](50) NULL,
 CONSTRAINT [PK_WardDB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CheckingList] ON 

INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (1, 15, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (2, 16, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (3, 17, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (4, 18, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (5, 21, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (6, 22, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (7, 23, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (8, 27, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (9, 28, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (10, 29, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (11, 36, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (12, 39, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (15, 43, NULL, CAST(N'2760-04-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (16, 47, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (17, 49, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (18, 52, NULL, CAST(N'2015-04-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (19, 53, NULL, CAST(N'2015-04-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (20, 56, NULL, CAST(N'2015-04-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (21, 58, NULL, CAST(N'2015-04-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (22, 59, NULL, CAST(N'2015-04-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (23, 60, NULL, CAST(N'2015-04-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (1016, 61, NULL, CAST(N'2020-11-11T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[CheckingList] ([checking_id], [place_id], [staff_id], [date_time], [checking_status_id]) VALUES (1017, 62, NULL, CAST(N'2020-11-22T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[CheckingList] OFF
SET IDENTITY_INSERT [dbo].[CheckingStatus] ON 

INSERT [dbo].[CheckingStatus] ([checking_status_id], [checking_status_name]) VALUES (0, N'Canceled')
INSERT [dbo].[CheckingStatus] ([checking_status_id], [checking_status_name]) VALUES (1, N'Approved')
INSERT [dbo].[CheckingStatus] ([checking_status_id], [checking_status_name]) VALUES (2, N'Pending')
SET IDENTITY_INSERT [dbo].[CheckingStatus] OFF
SET IDENTITY_INSERT [dbo].[ContractStatus] ON 

INSERT [dbo].[ContractStatus] ([contract_status_id], [contract_status_name]) VALUES (0, N'Valid')
INSERT [dbo].[ContractStatus] ([contract_status_id], [contract_status_name]) VALUES (1, N'Ended')
SET IDENTITY_INSERT [dbo].[ContractStatus] OFF
SET IDENTITY_INSERT [dbo].[DistrictDB] ON 

INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (1, N'Ba Đình												
', N'21.0367', N'105.836', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (2, N'Hoàn Kiếm												
', N'21.028889', N'105.8525', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (3, N'Tây Hồ												
', N'21.070705', N'105.811831', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (4, N'Long Biên												
', N'21.004167', N'105.969444', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (5, N'Cầu Giấy												
', N'21.030938', N'105.801312', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (6, N'Đống Đa												
', N'21.0157', N'105.856', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (7, N'Hai Bà Trưng												
', N'21.011718', N'105.847647', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (8, N'Hoàng Mai												
', N'20.968072', N'105.848207', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (9, N'Thanh Xuân												
', N'20.993445', N'105.798454', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (10, N'Sóc Sơn												
', N'21.257521', N'105.848529', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (11, N'Đông Anh												
', N'21.124530', N'105.827140', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (12, N'Gia Lâm												
', N'21.019788', N'105.937332', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (13, N'Nam Từ Liêm												
', N'21.003333', N'105.703889', N'Quận')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (14, N'Thanh Trì												
', N'20.949444', N'105.843333', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (15, N'Thạch Thất												
', N'20.9905', N'105.5252', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (16, N'Quốc Oai												
', N'20.9925', N'105.6404', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (17, N'Mê Linh												
', N'21.187222', N'105.715278', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (18, N'Hà Đông												
', N'20.964944', N'105.770694', N'Quận												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (19, N'Sơn Tây												
', N'21.138947', N'105.504402', N'Thị Xã												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (20, N'Ba Vì												
', N'21.066667', N'105.334722', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (21, N'Phúc Thọ												
', N'21.108611', N'105.536944', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (22, N'Đan Phượng												
', N'21.0875', N'105.667222', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (23, N'Hoài Đức												
', N'21.0243', N'105.6989', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (24, N'Chương Mỹ												
', N'20.9242', N'105.702', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (25, N'Thanh Oai												
', N'20.8532', N'105.7689', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (26, N'Thường Tín												
', N'20.845189', N'105.87836', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (27, N'Phú Xuyên												
', N'20.74', N'105.907778', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (28, N'Ứng Hòa												
', N'20.726', N'105.7713', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (29, N'Mỹ Đức												
', N'20.684167', N'105.7425', N'Huyện												
')
INSERT [dbo].[DistrictDB] ([id], [district_name], [district_latitude], [district_longitude], [district_type]) VALUES (30, N'Bắc Từ Liêm', N'21.054167', N'105.682222', N'Quận')
SET IDENTITY_INSERT [dbo].[DistrictDB] OFF
SET IDENTITY_INSERT [dbo].[EquipmentList] ON 

INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (1, 2, N'Điều hòa                                                                                                                                                                                                                                                  ', 5, 5660000, 80, N'xịn vl ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (2, 2, N'TV                                                                                                                                                                                                                                                        ', 10, 10000000, 10, N'mua bên Royal')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (3, 15, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (4, 15, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (5, 16, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (6, 16, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (7, 21, N'Điều hòa   ádsa                                                                                                                                                                                                                                           ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (8, 21, N'TV         ádasd                                                                                                                                                                                                                                          ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (9, 22, N'Điều hòa   ádsa                                                                                                                                                                                                                                           ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (10, 22, N'TV         ádasd                                                                                                                                                                                                                                          ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (11, 23, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (12, 23, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (16, 27, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (17, 27, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (18, 28, N'54654                                                                                                                                                                                                                                                     ', 546546, 54654, 654654, N'54654645')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (19, 28, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (20, 29, N'54654                                                                                                                                                                                                                                                     ', 546546, 54654, 654654, N'54654645')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (21, 29, N'456546                                                                                                                                                                                                                                                    ', 546546, 546546, 546546, N'546546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (22, 29, N'54654                                                                                                                                                                                                                                                     ', 4654, 546546, 546545, N'46546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (29, 36, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (30, 36, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (33, 39, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (34, 39, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (36, 41, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (37, 41, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (38, 42, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (39, 42, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (40, 43, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (41, 43, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (45, 47, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (46, 47, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (48, 49, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (49, 49, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (52, 52, N'54654                                                                                                                                                                                                                                                     ', 546546, 54654, 654654, N'54654645')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (53, 52, N'456546                                                                                                                                                                                                                                                    ', 546546, 546546, 546546, N'546546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (54, 52, N'54654                                                                                                                                                                                                                                                     ', 4654, 546546, 546545, N'46546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (55, 53, N'54654                                                                                                                                                                                                                                                     ', 546546, 54654, 654654, N'54654645')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (56, 53, N'456546                                                                                                                                                                                                                                                    ', 546546, 546546, 546546, N'546546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (57, 53, N'54654                                                                                                                                                                                                                                                     ', 4654, 546546, 546545, N'46546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (60, 56, N'54654                                                                                                                                                                                                                                                     ', 546546, 54654, 654654, N'54654645')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (61, 56, N'456546                                                                                                                                                                                                                                                    ', 546546, 546546, 546546, N'546546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (62, 56, N'54654                                                                                                                                                                                                                                                     ', 4654, 546546, 546545, N'46546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (64, 58, N'54654                                                                                                                                                                                                                                                     ', 546546, 54654, 654654, N'54654645')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (65, 58, N'456546                                                                                                                                                                                                                                                    ', 546546, 546546, 546546, N'546546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (66, 58, N'54654                                                                                                                                                                                                                                                     ', 4654, 546546, 546545, N'46546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (67, 59, N'54654                                                                                                                                                                                                                                                     ', 546546, 54654, 654654, N'54654645')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (68, 59, N'456546                                                                                                                                                                                                                                                    ', 546546, 546546, 546546, N'546546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (69, 59, N'54654                                                                                                                                                                                                                                                     ', 4654, 546546, 546545, N'46546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (70, 60, N'54654                                                                                                                                                                                                                                                     ', 546546, 54654, 654654, N'54654645')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (71, 60, N'456546                                                                                                                                                                                                                                                    ', 546546, 546546, 546546, N'546546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (72, 60, N'54654                                                                                                                                                                                                                                                     ', 4654, 546546, 546545, N'46546')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (1042, 61, N'Điều hòa                                                                                                                                                                                                                                                  ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (1043, 61, N'TV                                                                                                                                                                                                                                                        ', 11, 11111, 11, N'mua bên Royal111')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (1047, 62, N'Điều hòa update                                                                                                                                                                                                                                           ', 1, 111111, 10, N'xịn vl111 ')
INSERT [dbo].[EquipmentList] ([equipment_list_id], [place_id], [equipment_name], [quantity], [price], [like_new], [equipment_describe]) VALUES (1048, 62, N'TV update                                                                                                                                                                                                                                                 ', 11, 11111, 11, N'mua bên Royal111')
SET IDENTITY_INSERT [dbo].[EquipmentList] OFF
SET IDENTITY_INSERT [dbo].[ImageLink] ON 

INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (1, 1, N'https://img.lostbird.vn/600x-/2018/10/29/457269/rs_1024x683-181024103742-1024-2-hill-house-ch-102418.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (2, 1, N'https://kenh14cdn.com/thumb_w/640/2018/10/21/photo1540133283516-15401332835171897873761.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (3, 1, N'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hohh-101-unit-01909r-1550772596.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (4, 2, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (5, 2, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (6, 2, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (7, 4, N'https://miro.medium.com/max/900/1*6yyKib55S4csOrfAr-z8YA.jpeg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (8, 4, N'https://luxury-inside.vn/data/uploads/2019/05/1-17.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (9, 4, N'https://img.lostbird.vn/600x-/2018/06/05/215752/inside_newyork_abandoned_masion_2.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (10, 5, N'https://wedo.vn/wp-content/uploads/2019/09/gia-xay-nha-cap-4-co-gac-lung-4.jpeg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (12, 5, N'https://image-us.eva.vn/upload/3-2018/images/2018-07-20/tu-van-xay-dung-mau-nha-cap-4-100m2-chi-voi-350-400-trieu-dong-14-1532099895-234-width550height414.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (13, 5, N'https://jhoaban.com/wp-content/uploads/2018/12/nha-cap-4.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (14, 9, N'https://royalcitynguyentrai.com/wp-content/uploads/sites/5/2013/03/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (15, 9, N'https://morehome.vn/Portals/0/xNews/uploads/2015/12/7/phong-cach-thiet-ke-noi-that-doc-dao-1.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (16, 9, N'https://lh3.googleusercontent.com/proxy/0EatIpPM4uFmjEWyjuTfdiqfQyCMd5_LhzK1tO3AZi0q1cM-u8ofLNlcDnHY4icT7z1UaiFN0IH4jSMuZ5JIFWbz0h2e4Pq2QnCF97OJ281PQcDyoVxedlSv')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (17, 12, N'https://neohouse.vn/wp-content/uploads/2018/09/thiet-ke-noi-that-phong-ngu-master-1.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (18, 12, N'https://neohouse.vn/wp-content/uploads/2018/09/thiet-ke-noi-that-phong-ngu-master-3.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (19, 12, N'https://neohouse.vn/wp-content/uploads/2018/09/thiet-ke-noi-that-phong-ngu-master-5.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (20, 14, N'https://neohouse.vn/wp-content/uploads/2018/09/thiet-ke-noi-that-phong-ngu-con-trai-1.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (22, 14, N'https://neohouse.vn/wp-content/uploads/2018/09/thiet-ke-noi-that-phong-ngu-con-trai.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (23, 14, N'https://neohouse.vn/wp-content/uploads/2018/09/thiet-ke-noi-that-phong-ngu-con-trai-3.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (24, 15, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (25, 15, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (26, 15, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (27, 16, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (28, 16, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (29, 16, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (30, 17, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (31, 17, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (32, 17, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (33, 18, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (34, 21, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (35, 21, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (36, 21, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (37, 22, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (38, 22, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (39, 22, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (40, 23, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (41, 23, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (42, 23, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (43, 27, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (44, 27, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (45, 27, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (46, 28, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (47, 28, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (48, 28, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (49, 29, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (50, 29, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (51, 29, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (52, 36, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (53, 36, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (54, 36, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (55, 39, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (56, 39, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (57, 39, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (58, 41, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (59, 41, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (60, 42, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (61, 42, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (62, 43, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (63, 43, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (64, 47, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (65, 47, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (66, 47, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (67, 49, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (68, 49, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (69, 49, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (70, 52, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (71, 52, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (72, 53, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (73, 53, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (74, 56, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (75, 56, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (76, 58, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (77, 58, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (78, 59, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (79, 59, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (80, 60, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (81, 60, N'../../assets/img/khong-gian-phong-khach-royal-city.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (82, 60, N'https://drive.google.com/file/d/1s--EW_3MGG9HNWGqbEKjLQfQZNv3A5Qi/view?usp=drivesdk')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (83, 60, N'https://drive.google.com/file/d/1v5oJ5U-zq3Ikz610s3WzIf5L-SVJ8aoa/view?usp=drivesdk')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (84, 60, N'https://drive.google.com/file/d/1FvnOd8zsNgZy1ydddIu4VmLdLCfncH0v/view?usp=drivesdk')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (85, 60, N'https://drive.google.com/file/d/17AOwJWaXklqA7wRvx99KuP6j8vctCL4z/view?usp=drivesdk')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (86, 60, N'https://drive.google.com/file/d/1EZj2i-MWkxiEiW4qF0bq9CqkOZ4nfdWP/view?usp=drivesdk')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (87, 60, N'https://drive.google.com/file/d/1dVTm9gOTWwql9l4-LaHFz7UdG7lyNa85/view?usp=drivesdk')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (1064, 61, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (1065, 61, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (1066, 61, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (1070, 62, N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (1071, 62, N'https://lh3.googleusercontent.com/proxy/U90Bgo_JTDn7kTZiAvbyNxKlU209-dZ8uoz6lgnBwNkftUlgHWPLJ6Q1PUvdnENRnvKk3sJb7pUhbpXhkJApsVgt6m7GkzF4igJFB34qQtN5rOsLkHZATOm0 update')
INSERT [dbo].[ImageLink] ([id], [place_id], [image_link]) VALUES (1072, 62, N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg update')
SET IDENTITY_INSERT [dbo].[ImageLink] OFF
SET IDENTITY_INSERT [dbo].[Map] ON 

INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (1, 20.985362, 105.822235, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (2, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (3, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (4, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (5, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (6, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (7, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (8, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (9, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (10, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (11, 1.1109999418258667, 11.109999656677246, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (12, 1.1211099624633789, 11.134099960327148, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (13, 1.1211099624633789, 11.134099960327148, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (14, 1.1213451623916626, 11.13453483581543, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (15, 1.1213234663009644, 11.134523391723633, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (16, 1.1213234663009644, 11.134523391723633, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (17, 1.1213234663009644, 11.134523391723633, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (18, 2.1210000514984131, 1.1245231628417969, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (19, 3.1210000514984131, 2.1245231628417969, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (20, 3.1210000514984131, 2.1245231628417969, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (21, 3.1123208999633789, 2.1245231628417969, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (22, 3.1123208999633789, 2.1245231628417969, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (23, 5.1123208999633789, 2.1245231628417969, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (24, 5.1123208999633789, 234.12452697753906, NULL)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (25, 1.1109999418258667, 11.109999656677246, 21)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (26, 1.1109999418258667, 11.109999656677246, 22)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (27, 1.1109999418258667, 11.109999656677246, 23)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (28, 1.1109999418258667, 11.109999656677246, 27)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (29, 1.1109999418258667, 11.109999656677246, 28)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (30, 1.1109999418258667, 11.109999656677246, 29)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (31, 1.1109999418258667, 11.109999656677246, 36)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (32, 1.1109999418258667, 11.109999656677246, 39)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (33, 105.84046173095703, 19.908023834228516, 43)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (34, 1.1109999418258667, 11.109999656677246, 47)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (35, 1.1109999418258667, 11.109999656677246, 49)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (36, 105.84046173095703, 19.908023834228516, 52)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (37, 105.84046173095703, 19.908023834228516, 53)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (38, 105.84046173095703, 19.908023834228516, 56)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (39, 105.84046173095703, 19.908023834228516, 58)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (40, 105.84046173095703, 19.908023834228516, 59)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (41, 105.84046173095703, 19.908023834228516, 60)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (42, 1.1109999418258667, 11.109999656677246, 61)
INSERT [dbo].[Map] ([map_id], [longtitude], [latitude], [place_id]) VALUES (43, 1.1123123168945313, 11.112312316894531, 62)
SET IDENTITY_INSERT [dbo].[Map] OFF
SET IDENTITY_INSERT [dbo].[OrderList] ON 

INSERT [dbo].[OrderList] ([order_id], [orderer_id], [place_id], [staff_id], [order_status_id], [date_time], [name], [email], [phone_number], [message]) VALUES (1, 3, 1, 8, 1, CAST(N'2020-03-27T00:00:00.000' AS DateTime), N'Trang Tran', N'trangtt@yahoo.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', N'05949656                                                                                              ', N'alo alo 1234')
INSERT [dbo].[OrderList] ([order_id], [orderer_id], [place_id], [staff_id], [order_status_id], [date_time], [name], [email], [phone_number], [message]) VALUES (2, 3, 2, 8, 0, CAST(N'2020-03-26T18:30:00.000' AS DateTime), N'Trang Tran', N'Trangttt@yahoo.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'0979401199                                                                                            ', NULL)
INSERT [dbo].[OrderList] ([order_id], [orderer_id], [place_id], [staff_id], [order_status_id], [date_time], [name], [email], [phone_number], [message]) VALUES (3, 10, 14, NULL, 2, CAST(N'2020-03-27T00:00:00.000' AS DateTime), N'Trung Dao ', N'trungdd@gmail.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', N'064561298989                                                                                          ', N'anh cho em xem gấp anh nhé')
SET IDENTITY_INSERT [dbo].[OrderList] OFF
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([order_status_id], [order_status_name]) VALUES (0, N'Canceled')
INSERT [dbo].[OrderStatus] ([order_status_id], [order_status_name]) VALUES (1, N'Approved')
INSERT [dbo].[OrderStatus] ([order_status_id], [order_status_name]) VALUES (2, N'Pending')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (1, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (2, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (3, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (4, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (5, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (6, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (7, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (8, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (9, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (10, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (11, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (12, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (13, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (14, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
INSERT [dbo].[Payment] ([id], [user_id], [place_id], [create_time], [status], [payer_id], [money], [description], [order_id]) VALUES (15, 3, 1, CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'ok', N'264659626461', 11, N'coc tien nha ', NULL)
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[PaymentStatus] ON 

INSERT [dbo].[PaymentStatus] ([payment_status_id], [payment_status_name]) VALUES (0, N'Unpaid')
INSERT [dbo].[PaymentStatus] ([payment_status_id], [payment_status_name]) VALUES (1, N'Paid')
SET IDENTITY_INSERT [dbo].[PaymentStatus] OFF
SET IDENTITY_INSERT [dbo].[Place] ON 

INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 1, N'Nhà ma đặc biệt Thanh Xuân', 5.5, 45, 9, 90, 97, N'Số **, đường Nguyễn Trãi, Thanh Xuân', 2, 6, 10, 4, N'Bắc', 5, 8, 4, N'Nhà không có ma', N'https://aroma.vn/w/wp-content/uploads/2013/12/basement-house1.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (5, 2, N'Chung cư bể bơi SIÊU HOT!!!!!', 10.5, 150, 2, 72, 158, N'Đường Hàng Bạc', 1, 0, 100, 4, N'Nam', 1, 10, 8, N'Chung cư cao cấp có bể bơi siêu khủng', N'https://4.bp.blogspot.com/-WpoeUxS4Wrc/WG0PzRzTgWI/AAAAAAAAANQ/9T5rdQvORZ8SgRTjaBzUqu86ywG_-L1mgCEw/s1600/HDP-01.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 4, N'Biệt thự siêu cấp 30 phòng', 55, 200, 5, 18, 186, N'km29, đường Lê Đức Thọ', 2, 0, 110, 15, N'Đông-Bắc', 5, 30, 20, N'Biệt thự siêu đẹp, nội thất cao cấp. Có thể làm Homestay cho thuê', N'https://viphomes.vn/image/catalog/du-an-thiet-ke/TK-noi-that-phong-khach-biet-thu/Thiet-ke-noi-that-phong-khach-biet-thu-hien-dai.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (5, 5, N'Nhà cấp 4 - ĐẶC BIỆT có thêm chuồng heo!', 1, 30, 7, 56, 188, N'Liên hệ để dẫn đường!', 2, 0, 20, 3, N'Tây', 1, 10, 2, N'Nhà có chuồng heo nhưng không hôi', N'https://holcim.com.vn/wp-content/uploads/2018/12/Nha-cap-4-duoi-100-trieu-3.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 9, N'Căn 3PN Chung cư Star', 0.5, 97, 1, 2, 29, N'Trúc Bạch, Hà Nội', 1, 0, 50, 23, N'Tây', 1, 3, 2, N'Căn 3PN full Nội thất', N'https://nhahep.net/wp-content/uploads/2019/01/thi%E1%BA%BFt-k%E1%BA%BF-n%E1%BB%99i-th%E1%BA%A5t-01-275.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (5, 12, N'Nhà 5 tầng - Diện tích 45m2 - Mặt ngõ kinh doanh', 34, 45, 18, 104, 189, N'Liên hệ để dẫn đi xem', 2, 0, 30, 4, N'Tây', 4, 4, 2, N'Nhà riêng mới xây, nội thất đẹp', N'https://file4.batdongsan.com.vn/resize/745x510/2020/02/24/haPqKhWM/20200224115932-8103_wm.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (5, 14, N'Chung cư 1PN', 20, 40, 9, 86, 89, NULL, 1, 0, 7, 45, N'Tây', 2, 5, 1, N'Chung cư 1PN giá SIÊU YÊU!!!', N'https://photosrp.dotproperty.com.vn/2.0-VN-21926-PP-2537797-7168637155a8ce1a56be74-1-490-325-ct/cho-thu%C3%AA-c%C4%83n-h%E1%BB%99-chung-c%C6%B0-1-ph%C3%B2ng-ng%E1%BB%A7-t%E1%BA%A1i-ph%C6%B0%E1%BB%9Dng-2-qu%E1%BA%ADn-t%C3%A2n-b%C3%ACnh-h%E1%BB%93-ch%C3%AD-minh.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 15, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Test insert place round 1 address', 1, 0, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 16, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 2, N'Test insert place round 1 address', 1, 0, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 17, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 2, N'Test insert place round 1 address', 1, 0, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 18, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 2, N'Test insert place round 1 address', 1, 0, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 20, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 2, N'Test insert place round 1 address', 1, 0, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://file4.batdongsan.com.vn/2019/10/04/20191004100150-217b_wm.jpg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 21, N'Test insert place round 2 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 2, N'Test insert place round 2 address', 1, 0, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 22, N'Test insert place round 3 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 2, N'Test insert place round 2 address', 1, 0, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 2', N'test address name 2', N'testphone2                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 23, N'Nhà ma đặc biệt Thanh Xuân', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Số **, đường Nguyễn Trãi, Thanh Xuân', 1, 1, 0, 1.1000000238418579, N'Bắc', 1, 1, 1, N'Nhà không có ma', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'Duc Tran', N'Hoa Lac', N'11111111                                                                                                                ', N'abc@gmail.com                                                                                                                                                                                                                                                 ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 27, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Test insert place round 1 address', 1, 2, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 28, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Test insert place round 1 address', 1, 2, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 29, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Test insert place round 1 address', 1, 2, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 36, N'Nhà ma đặc biệt Thanh Xuân', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Số **, đường Nguyễn Trãi, Thanh Xuân', 1, 2, 0, 1.1000000238418579, N'Bắc', 1, 1, 1, N'Nhà không có ma', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'Duc Tran', N'Hoa Lac', N'11111111                                                                                                                ', N'abc@gmail.com                                                                                                                                                                                                                                                 ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 39, N'Nhà ma đặc biệt Thanh Xuân', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Số **, đường Nguyễn Trãi, Thanh Xuân', 1, 2, 0, 1.1000000238418579, N'Bắc', 1, 1, 1, N'Nhà không có ma', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'Duc Tran', N'Hoa Lac', N'11111111                                                                                                                ', N'abc@gmail.com                                                                                                                                                                                                                                                 ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 41, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'545445                                                                                                                  ', N'aslome0705@gmail.com                                                                                                                                                                                                                                          ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 42, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'545445                                                                                                                  ', N'as705@gmail.com                                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 43, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'545445                                                                                                                  ', N'as705@gmail.com                                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 47, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Test insert place round 1 address', 1, 2, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 49, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Test insert place round 1 address', 1, 2, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 52, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'5645645                                                                                                                 ', N'aslongasyouloveme0705@gmail.com                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 53, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'5645645                                                                                                                 ', N'aslongasyouloveme0705@gmail.com                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 56, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'54654645645                                                                                                             ', N'aslongasyouloveme0705@gmail.com                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 58, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'54654645645                                                                                                             ', N'aslongasyouloveme0705@gmail.com                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 59, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'123456789                                                                                                               ', N'aslongasyouloveme0705@gmail.com                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (10, 60, N'sấdsadsadsad', 546546548736, 456546, 1, 1, 1, N'456546546546', 1, 2, 0, 456546464, N'Đông Bắc', 456546, 54654654, 546546, N'456546546546', N'../../assets/img/khong-gian-phong-khach-royal-city.jpg', N'45645654', N'546546', N'123456789                                                                                                               ', N'aslongasyouloveme0705@gmail.com                                                                                                                                                                                                                               ', NULL)
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 61, N'Test insert place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 1, 1, 1, N'Test insert place round 1 address', 1, 2, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test contact name 1', N'test address name 1', N'testphone1                                                                                                              ', N'test email 1                                                                                                                                                                                                                                                  ', CAST(N'2020-04-06' AS Date))
INSERT [dbo].[Place] ([owner_id], [place_id], [title], [price], [area], [district_id], [ward_id], [street_id], [address], [role_of_place_id], [status_place_id], [counter_view], [frontispiece], [home_direction], [floors], [bed_rooms], [toilets], [description], [image_large], [contact_name], [contact_address], [contact_phone_number], [contact_email], [date_post]) VALUES (3, 62, N'Test update place round 1 title!!!!!', 11.100000381469727, 11.100000381469727, 2, 2, 1, N'Test insert place round 1 address', 2, 2, 0, 1.1000000238418579, N'Bắc', 1, 2, 3, N'test description round 1', N'https://lh3.googleusercontent.com/proxy/-pHcK2GC-ZlBXMVBhQm4owRGe7KJT6u0MlD98F8V8jSOFBPnOg9mJgjjWv-RYXusIjpyJMx7gBf8k3giryhgezyk4g7aPvhH5PhkxLJJwhaqtP1og7RmJ0EYW1E0Mo0qvgGJ3-aTwFETnY-pcIBn', N'test update ', N'test update address name 1', N'00000012                                                                                                                ', N'test email 1                                                                                                                                                                                                                                                  ', CAST(N'2020-04-06' AS Date))
SET IDENTITY_INSERT [dbo].[Place] OFF
SET IDENTITY_INSERT [dbo].[RoleOfPlace] ON 

INSERT [dbo].[RoleOfPlace] ([role_of_place_id], [role_name]) VALUES (1, N'Chung cư')
INSERT [dbo].[RoleOfPlace] ([role_of_place_id], [role_name]) VALUES (2, N'Nhà đất')
SET IDENTITY_INSERT [dbo].[RoleOfPlace] OFF
INSERT [dbo].[RoleOfUser] ([role_id], [role_name]) VALUES (1, N'ADMIN')
INSERT [dbo].[RoleOfUser] ([role_id], [role_name]) VALUES (2, N'STAFF')
INSERT [dbo].[RoleOfUser] ([role_id], [role_name]) VALUES (4, N'USER')
SET IDENTITY_INSERT [dbo].[StatusOfUser] ON 

INSERT [dbo].[StatusOfUser] ([status_id], [status]) VALUES (0, N'Deactive')
INSERT [dbo].[StatusOfUser] ([status_id], [status]) VALUES (1, N'Active')
SET IDENTITY_INSERT [dbo].[StatusOfUser] OFF
SET IDENTITY_INSERT [dbo].[StatusPlace] ON 

INSERT [dbo].[StatusPlace] ([status_place_id], [status]) VALUES (0, N'Cancel')
INSERT [dbo].[StatusPlace] ([status_place_id], [status]) VALUES (1, N'Active')
INSERT [dbo].[StatusPlace] ([status_place_id], [status]) VALUES (2, N'Pending')
INSERT [dbo].[StatusPlace] ([status_place_id], [status]) VALUES (3, N'Deactive')
INSERT [dbo].[StatusPlace] ([status_place_id], [status]) VALUES (4, N'Rented')
INSERT [dbo].[StatusPlace] ([status_place_id], [status]) VALUES (5, N'Checking')
INSERT [dbo].[StatusPlace] ([status_place_id], [status]) VALUES (6, N'Deposited')
SET IDENTITY_INSERT [dbo].[StatusPlace] OFF
SET IDENTITY_INSERT [dbo].[StreetDB] ON 

INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (1, 1, N'An Xá')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (2, 1, N'Bà Huyện Thanh Quan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (3, 1, N'Bắc Sơn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (4, 1, N'Bưởi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (5, 1, N'Cao Bá Quát')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (6, 1, N'Cầu Giấy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (7, 1, N'Châu Long')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (8, 1, N'Chu Văn An')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (9, 1, N'Chùa Một Cột')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (10, 1, N'Cửa Bắc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (11, 1, N'Đặng Dung')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (12, 1, N'Đặng Tất')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (13, 1, N'Đào Tấn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (14, 1, N'Điện Biên Phủ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (15, 1, N'Độc Lập')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (16, 1, N'Đốc Ngữ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (17, 1, N'Đội Cấn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (18, 1, N'Đội Nhân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (19, 1, N'Giang Văn Minh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (20, 1, N'Giảng Võ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (21, 1, N'Hàng Bún')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (22, 1, N'Hàng Đậu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (23, 1, N'Hàng Than')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (24, 1, N'Hoàng Diệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (25, 1, N'Hoàng Hoa Thám')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (26, 1, N'Hoàng Văn Thụ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (27, 1, N'Hòe Nhai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (28, 1, N'Hồng Hà')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (29, 1, N'Hồng Phúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (30, 1, N'Hùng Vương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (31, 1, N'Huỳnh Thúc Kháng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (32, 1, N'Khúc Hạo')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (33, 1, N'Kim Mã')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (34, 1, N'Kim Mã Thượng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (35, 1, N'La Thành')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (36, 1, N'Lạc Chính')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (37, 1, N'Láng Hạ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (38, 1, N'Lê Duẩn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (39, 1, N'Lê Hồng Phong')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (40, 1, N'Lê Trực')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (41, 1, N'Liễu Giai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (42, 1, N'Linh Lang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (43, 1, N'Lý Nam Đế')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (44, 1, N'Mạc Đĩnh Chi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (45, 1, N'Mai Anh Tuấn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (46, 1, N'Nam Cao')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (47, 1, N'Nam Tràng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (48, 1, N'Nghĩa Dũng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (49, 1, N'Ngọc Hà')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (50, 1, N'Ngũ Xã')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (51, 1, N'Nguyễn Biểu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (52, 1, N'Nguyễn Cảnh Chân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (53, 1, N'												
Nguyễn Chí Thanh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (54, 1, N'Nguyễn Công Hoan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (55, 1, N'Nguyên Hồng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (56, 1, N'Nguyễn Khắc Hiếu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (57, 1, N'Nguyễn Khắc Nhu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (58, 1, N'Nguyễn Phạm Tuân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (59, 1, N'Nguyễn Thái Học')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (60, 1, N'Nguyễn Thiếp')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (61, 1, N'Nguyễn Tri Phương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (62, 1, N'Nguyễn Trung Trực')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (63, 1, N'Nguyễn Trường Tộ												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (64, 1, N'Nguyễn Văn Ngọc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (65, 1, N'Núi Trúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (66, 1, N'Ông Ích Khiêm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (67, 1, N'Phạm Hồng Thái')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (68, 1, N'Phạm Huy Thông')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (69, 1, N'Phan Đình Phùng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (70, 1, N'Phan Huy Ích')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (71, 1, N'Phan Kế Bính')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (72, 1, N'Phó Đức Chính')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (73, 1, N'Phúc Xá')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (74, 1, N'Quần Ngựa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (75, 1, N'Quán Thánh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (76, 1, N'Sơn Tây')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (77, 1, N'Tân Ấp')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (78, 1, N'Thanh Bảo')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (79, 1, N'Thành Công')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (80, 1, N'Thanh Niên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (81, 1, N'Tôn Thất Đàm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (82, 1, N'Tôn Thất Thiệp')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (83, 1, N'Trần Huy Liệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (84, 1, N'Trần Phú')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (85, 1, N'Trần Tế Xương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (86, 1, N'Trấn Vũ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (87, 1, N'Trúc Bạch')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (88, 1, N'Vạn Bảo')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (89, 1, N'Văn Cao')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (90, 1, N'Vạn Phúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (91, 1, N'Vĩnh Phúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (92, 1, N'Yên Ninh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (93, 1, N'Yên Phụ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (94, 1, N'Yên Thế')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (95, 2, N'19-12')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (96, 2, N'Ấu Triệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (97, 2, N'Bà Triệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (98, 2, N'Bạch Đằng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (99, 2, N'Bảo Khánh')
GO
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (100, 2, N'Bảo Linh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (101, 2, N'Bát Đàn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (102, 2, N'Bát Sứ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (103, 2, N'Cao Thắng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (104, 2, N'Cầu Đất')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (105, 2, N'Cầu Đông')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (106, 2, N'Cầu Gỗ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (107, 2, N'Chả Cá')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (108, 2, N'Chân Cầm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (109, 2, N'Chợ Gạo')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (110, 2, N'Chương Dương Độ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (111, 2, N'Cổ Tân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (112, 2, N'Cổng Đục')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (113, 2, N'Cửa Đông')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (114, 2, N'Cửa Nam')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (115, 2, N'Dã Tượng												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (116, 2, N'Đặng Thái Thân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (117, 2, N'Đào Duy Từ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (118, 2, N'Điện Biên Phủ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (119, 2, N'Đinh Công Tráng												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (120, 2, N'Đinh Lễ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (121, 2, N'Đinh Liệt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (122, 2, N'Đình Ngang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (123, 2, N'Đinh Tiên Hoàng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (124, 2, N'Đoàn Nhữ Hài')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (125, 2, N'Đông Thái')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (126, 2, N'Đồng Xuân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (127, 2, N'Đường Thành')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (128, 2, N'Gầm Cầu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (129, 2, N'Gia Ngư')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (130, 2, N'Hà Trung')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (131, 2, N'Hai Bà Trưng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (132, 2, N'Hàm Long')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (133, 2, N'Hàm Tử Quan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (134, 2, N'Hàn Thuyên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (135, 2, N'Hàng Bạc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (136, 2, N'Hàng Bài')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (137, 2, N'Hàng Bè')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (138, 2, N'Hàng Bồ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (139, 2, N'Hàng Bông')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (140, 2, N'Hàng Buồm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (141, 2, N'Hàng Bút')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (142, 2, N'Hàng Cá')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (143, 2, N'Hàng Cân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (144, 2, N'Hàng Chai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (145, 2, N'Hàng Chiếu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (146, 2, N'Hàng Chĩnh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (147, 2, N'Hàng Cót')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (148, 2, N'Hàng Da')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (149, 2, N'Hàng Đào')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (150, 2, N'Hàng Đậu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (151, 2, N'Hàng Điếu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (152, 2, N'Hàng Đồng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (153, 2, N'Hàng Đường')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (154, 2, N'Hàng Gà')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (155, 2, N'Hàng Gai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (156, 2, N'Hàng Giầy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (157, 2, N'Hàng Giấy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (158, 2, N'Hàng Hòm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (159, 2, N'Hàng Khay')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (160, 2, N'Hàng Khoai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (161, 3, N'An Dương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (162, 3, N'An Dương Vương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (163, 3, N'Âu Cơ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (164, 3, N'Bùi Trang Chước')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (165, 3, N'Đặng Thai Mai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (166, 3, N'Đồng Cổ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (167, 3, N'Hoàng Hoa Thám')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (168, 3, N'Hồng Hà')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (169, 3, N'Hùng Vương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (170, 3, N'Lạc Long Quân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (171, 3, N'Mai Xuân Thưởng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (172, 3, N'Nghi Tàm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (173, 3, N'Nguyễn Đình Thi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (174, 3, N'Nguyễn Hoàng Tôn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (175, 3, N'Nhật Chiêu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (176, 3, N'Phan Đình Phùng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (177, 3, N'Phú Gia')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (178, 3, N'Phú Thượng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (179, 3, N'Phú Xá')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (180, 3, N'Phúc Hoa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (181, 3, N'Quảng An')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (182, 3, N'Quảng Bá')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (183, 3, N'Quảng Khánh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (184, 3, N'												
Tam Đa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (185, 3, N'Tây Hồ												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (186, 3, N'Thanh Niên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (187, 3, N'Thượng Thụy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (188, 3, N'Thụy Khuê')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (189, 3, N'Tô Ngọc Vân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (190, 3, N'Trích Sài')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (191, 3, N'Trịnh Công Sơn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (192, 3, N'Từ Hoa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (193, 3, N'Tứ Liên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (194, 3, N'Văn Cao')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (195, 3, N'Vệ Hồ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (196, 3, N'Võ Chí Công')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (197, 3, N'Võng Thị')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (198, 3, N'Vũ Miên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (199, 3, N'Vũ Tuấn Chiêu')
GO
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (200, 3, N'Xuân Diệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (201, 3, N'Xuân La')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (202, 3, N'Yên Hoa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (203, 3, N'Yên Phụ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (204, 4, N'Ái Mộ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (205, 4, N'Bắc Cầu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (206, 4, N'Bát Khối')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (207, 4, N'Bồ Đề')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (208, 4, N'Bùi Thiện Ngộ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (209, 4, N'Cầu Bây')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (210, 4, N'Chu Huy Mân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (211, 4, N'Cổ Linh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (212, 4, N'Đàm Quang Trung')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (213, 4, N'Đặng Vũ Hỷ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (214, 4, N'Đào Văn Tập')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (215, 4, N'Đinh Đức Thiện')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (216, 4, N'Đoàn Khuê')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (217, 4, N'Đồng Dinh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (218, 4, N'Đức Giang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (219, 4, N'Gia Quất')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (220, 4, N'Gia Thượng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (221, 4, N'Gia Thụy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (222, 4, N'Giang Biên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (223, 4, N'Hoa Lâm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (224, 4, N'Hoàng Như Tiếp')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (225, 4, N'Hoàng Thế Thiện')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (226, 4, N'Hội Xá')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (227, 4, N'Hồng Tiến')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (228, 4, N'Huỳnh Tấn Phát')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (229, 4, N'Huỳnh Văn Nghệ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (230, 4, N'Kẻ Tạnh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (231, 4, N'Kim Quan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (232, 4, N'Kim Quan Thượng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (233, 4, N'Lâm Du')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (234, 4, N'Lâm Hạ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (235, 4, N'Lệ Mật')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (236, 4, N'Long Biên 1')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (239, 4, N'Long Biên 2')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (240, 4, N'Long Biên - Xuân Quan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (241, 4, N'Lưu Khánh Đàm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (242, 4, N'Lý Sơn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (243, 4, N'Mai Chí Thọ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (244, 4, N'Mai Phúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (245, 5, N'Bưởi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (246, 5, N'Cầu Giấy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (247, 5, N'Chùa Hà')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (248, 5, N'Đặng Thùy Trâm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (249, 5, N'Dịch Vọng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (250, 5, N'Dịch Vọng Hậu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (251, 5, N'Đinh Núp')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (252, 5, N'Đỗ Quang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (253, 5, N'Doãn Kế Thiện')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (254, 5, N'Dương Đình Nghệ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (255, 5, N'Dương Khuê')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (256, 5, N'Dương Quảng Hàm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (257, 5, N'Duy Tân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (258, 5, N'Đại lộ Thăng Long')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (259, 5, N'Hồ Tùng Mậu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (260, 5, N'Hoa Bằng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (261, 5, N'Hoàng Đạo Thúy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (262, 5, N'Hoàng Minh Giám')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (263, 5, N'Hoàng Ngân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (264, 5, N'Hoàng Quốc Việt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (265, 5, N'Hoàng Sâm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (266, 5, N'Khuất Duy Tiến')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (267, 5, N'Khúc Thừa Dụ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (268, 5, N'Lạc Long Quân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (269, 5, N'Lê Đức Thọ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (270, 5, N'Lê Văn Lương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (271, 5, N'Mạc Thái Tổ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (272, 5, N'Mạc Thái Tông')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (273, 5, N'Mai Dịch')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (274, 5, N'Nghĩa Đô')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (275, 5, N'Nghĩa Tân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (276, 5, N'Nguyễn Chánh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (277, 5, N'Nguyễn Đình Hoàn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (278, 5, N'Nguyễn Đỗ Cung')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (279, 5, N'Nguyễn Khả Trạc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (280, 5, N'Nguyễn Khang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (281, 5, N'Nguyễn Khánh Toàn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (282, 5, N'Nguyễn Ngọc Vũ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (283, 5, N'Yên Hòa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (284, 5, N'Xuân Thủy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (285, 5, N'Vũ Phạm Hàm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (286, 5, N'Võ Chí Công')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (287, 5, N'Tú Mỡ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (288, 5, N'Trương Công Giai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (289, 5, N'Trung Kính')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (290, 5, N'Trung Hòa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (291, 5, N'Trần Vỹ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (292, 5, N'Trần Tử Bình')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (293, 5, N'Trần Thái Tông')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (294, 5, N'Trần Quý Kiên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (295, 5, N'Trần Quốc Vượng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (296, 5, N'Trần Quốc Hoàn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (297, 5, N'Trần Kim Xuyến')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (298, 5, N'Trần Duy Hưng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (299, 5, N'Trần Đăng Ninh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (300, 5, N'Trần Cung')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (301, 5, N'Trần Bình')
GO
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (302, 5, N'Tôn Thất Thuyết')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (303, 5, N'Tô Hiệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (304, 5, N'Thọ Tháp')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (305, 5, N'Thành Thái')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (306, 5, N'Quan Nhân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (307, 5, N'Quan Hoa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (308, 5, N'Phùng Chí Kiên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (309, 5, N'Phan Văn Trường')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (310, 5, N'Phạm Văn Đồng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (311, 6, N'An Trạch')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (312, 6, N'Bích Câu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (313, 6, N'Cát Linh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (314, 6, N'Cầu Giấy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (315, 6, N'Cầu Mới')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (316, 6, N'Chợ Khâm Thiên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (317, 6, N'Chùa Bộc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (318, 6, N'Chùa Láng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (319, 6, N'Đặng Tiến Đông')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (320, 6, N'Đặng Trần Côn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (321, 6, N'Đặng Văn Ngữ												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (322, 6, N'Đào Duy Anh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (323, 6, N'Đoàn Thị Điểm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (324, 6, N'Đông Các')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (325, 6, N'Đông Tác')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (326, 6, N'Giải Phóng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (327, 6, N'Giảng Võ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (328, 6, N'Hàng Cháo')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (329, 6, N'Hào Nam')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (330, 6, N'Hồ Đắc Di')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (331, 6, N'Hồ Giám')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (332, 6, N'Hoàng Cầu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (333, 6, N'Hoàng Ngọc Phách')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (334, 6, N'Hoàng Tích Trí')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (335, 6, N'Huỳnh Thúc Kháng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (336, 6, N'Khâm Thiên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (337, 6, N'Khương Thượng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (338, 6, N'Kim Hoa												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (339, 6, N'La Thành')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (340, 6, N'Láng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (341, 6, N'Láng Hạ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (342, 6, N'Lê Duẩn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (343, 6, N'Lương Định Của')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (344, 6, N'Lý Văn Phức')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (345, 6, N'Mai Anh Tuấn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (346, 6, N'Nam Đồng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (347, 6, N'Ngô Sĩ Liên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (348, 6, N'Ngô Tất Tố')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (349, 6, N'Nguyễn Chí Thanh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (350, 6, N'Nguyên Hồng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (351, 6, N'Nguyễn Khuyến')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (352, 6, N'Nguyễn Lương Bằng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (353, 6, N'Nguyễn Ngọc Doãn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (354, 6, N'Nguyễn Như Đổ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (355, 6, N'Nguyễn Phúc Lai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (356, 6, N'Nguyễn Thái Học')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (357, 6, N'Nguyễn Trãi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (358, 6, N'Nguyễn Văn Tuyết')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (359, 6, N'Ô Chợ Dừa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (360, 6, N'Ô Đồng Lầm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (361, 6, N'Phạm Ngọc Thạch')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (362, 6, N'Phan Phù Tiên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (363, 6, N'Phan Văn Trị')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (364, 6, N'Pháo Đài Láng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (365, 6, N'Phương Mai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (366, 6, N'Quốc Tử Giám')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (367, 6, N'Tam Khương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (368, 6, N'Tây Sơn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (369, 6, N'Thái Hà')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (370, 6, N'Thái Thịnh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (371, 6, N'Tôn Đức Thắng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (372, 6, N'Tôn Thất Tùng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (373, 6, N'Trần Hữu Tước')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (374, 6, N'Trần Quang Diệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (375, 6, N'Trần Quý Cáp')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (376, 6, N'Trịnh Hoài Đức')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (377, 6, N'Trúc Khê')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (378, 6, N'Trung Liệt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (379, 6, N'Trung Phụng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (380, 6, N'Trường Chinh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (381, 6, N'Văn Miếu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (382, 6, N'Vĩnh Hồ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (383, 6, N'Võ Văn Dũng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (384, 6, N'Vọng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (385, 6, N'Vũ Ngọc Phan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (386, 6, N'Vũ Thạnh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (387, 6, N'Xã Đàn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (388, 6, N'Y Miếu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (389, 6, N'Yên Lãng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (390, 7, N'Bà Triệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (391, 7, N'Bạch Đằng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (392, 7, N'												
Bùi Ngọc Dương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (393, 7, N'Bùi Thị Xuân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (394, 7, N'Cảm Hội')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (395, 7, N'Cao Đạt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (396, 7, N'Chùa Vua')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (397, 7, N'Đại Cồ Việt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (398, 7, N'Đại La')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (399, 7, N'Đỗ Hành')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (400, 7, N'Đoàn Trần Nghiệp')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (401, 7, N'Đội Cung')
GO
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (402, 7, N'Giải Phóng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (403, 7, N'Hàn Thuyên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (404, 7, N'Hàng Chuối')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (405, 7, N'Hồ Xuân Hương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (406, 7, N'Hồng Mai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (407, 7, N'Hòa Mã')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (408, 7, N'Phố Huế')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (409, 7, N'Lê Đại Hành')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (410, 7, N'Lê Duẩn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (411, 7, N'Lò Đúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (412, 7, N'Lê Thanh Nghị')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (413, 7, N'Mai Hắc Đế')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (414, 7, N'Minh Khai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (415, 7, N'Ngô Thì Nhậm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (416, 7, N'Nguyễn An Ninh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (417, 7, N'Nguyễn Bỉnh Khiêm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (418, 7, N'Nguyễn Cao')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (419, 7, N'Nguyễn Công Trứ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (420, 8, N'Bằng Liệt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (421, 8, N'Bùi Huy Bích')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (422, 8, N'Bùi Xương Trạch')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (423, 8, N'Đại Từ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (424, 8, N'Đặng Xuân Bảng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (425, 8, N'Định Công')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (426, 8, N'Định Công Hạ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (427, 8, N'Định Công Thượng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (428, 8, N'Đông Thiên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (429, 8, N'Dương Văn Bé')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (430, 8, N'Giải Phóng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (431, 8, N'Giáp Bát')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (432, 8, N'Giáp Nhị')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (433, 8, N'Hoàng Liệt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (434, 8, N'Hoàng Mai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (435, 8, N'Hồng Quang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (436, 8, N'Hưng Phúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (437, 8, N'Hưng Thịnh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (438, 8, N'Khuyến Lương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (439, 8, N'Kim Đồng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (440, 8, N'Kim Giang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (441, 8, N'Linh Đàm												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (442, 8, N'Linh Đường')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (443, 8, N'Lĩnh Nam')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (444, 8, N'Lương Khánh Thiện')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (445, 8, N'Mai Động')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (446, 8, N'Nam Dư')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (447, 8, N'Nghiêm Xuân Yêm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (448, 8, N'Ngọc Hồi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (449, 8, N'Ngũ Nhạc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (450, 8, N'Nguyễn An Ninh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (451, 8, N'Nguyễn Cảnh Dị')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (452, 8, N'Nguyễn Chính')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (453, 8, N'Nguyễn Công Thái')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (454, 8, N'Nguyễn Đức Cảnh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (455, 8, N'Nguyễn Duy Trinh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (456, 8, N'Nguyễn Hữu Thọ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (457, 8, N'Nguyễn Khoái')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (458, 8, N'Nguyễn Xiển')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (459, 8, N'Sở Thượng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (460, 8, N'Tam Trinh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (461, 8, N'Tân Khai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (462, 8, N'Tân Mai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (463, 8, N'Tây Trà')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (464, 8, N'Thanh Đàm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (465, 8, N'Thanh Lân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (466, 8, N'Thịnh Liệt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (467, 8, N'Thúy Lĩnh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (468, 8, N'Trần Điền')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (469, 8, N'Trần Hòa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (470, 8, N'Trần Nguyên Đán')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (471, 8, N'Trần Thủ Độ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (472, 8, N'Trịnh Đình Cửu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (473, 8, N'Trương Định')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (474, 8, N'Tương Mai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (475, 8, N'Vĩnh Hưng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (476, 8, N'Vũ Tông Phan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (477, 8, N'Yên Duyên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (478, 8, N'Yên Sở')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (479, 9, N'Thanh Xuân												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (480, 9, N'Chính Kinh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (481, 9, N'Cù Chính Lan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (482, 9, N'Cự Lộc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (483, 9, N'Định Công')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (484, 9, N'Giải Phóng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (485, 9, N'Giáp Nhất')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (486, 9, N'Hạ Đình')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (487, 9, N'Hoàng Đạo Thành')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (488, 9, N'Hoàng Đạo Thúy')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (489, 9, N'Hoàng Minh Giám')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (490, 9, N'Hoàng Ngân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (491, 9, N'Hoàng Văn Thái')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (492, 9, N'Khuất Duy Tiến')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (493, 9, N'Khương Đình')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (494, 9, N'Khương Hạ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (495, 9, N'Khương Trung')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (496, 9, N'Kim Giang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (497, 9, N'Lê Trọng Tấn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (498, 9, N'Lê Văn Lương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (499, 9, N'Lê Văn Thiêm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (500, 9, N'Lương Thế Vinh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (501, 9, N'Ngụy Như Kon Tum')
GO
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (502, 9, N'Nguyễn Huy Tưởng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (503, 9, N'Nguyễn Lân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (504, 9, N'Nguyễn Ngọc Nại')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (505, 9, N'Nguyễn Quý Đức')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (506, 9, N'Nguyễn Thị Định')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (507, 9, N'Nguyễn Thị Thập')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (508, 9, N'Nguyễn Trãi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (509, 9, N'Nguyễn Tuân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (510, 9, N'Nguyễn Văn Trỗi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (511, 9, N'Nguyễn Viết Xuân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (512, 9, N'Nguyễn Xiển')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (513, 9, N'Nguyễn Xuân Linh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (514, 9, N'Nhân Hòa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (515, 9, N'Phan Đình Giót')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (516, 9, N'Phương Liệt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (517, 9, N'Quan Nhân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (518, 9, N'Thượng Đình')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (519, 9, N'Tố Hữu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (520, 9, N'Tô Vĩnh Diện')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (521, 9, N'Trần Điền')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (522, 9, N'Triều Khúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (523, 9, N'Trịnh Đình Cửu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (524, 9, N'Trường Chinh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (525, 9, N'Vọng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (526, 9, N'Vũ Hữu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (527, 9, N'Vũ Tông Phan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (528, 9, N'Vũ Trọng Phụng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (529, 9, N'Vương Thừa Vũ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (530, 18, N'Ao Sen')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (531, 18, N'Ba La')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (532, 18, N'Bà Triệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (533, 18, N'Bạch Thái Bưởi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (534, 18, N'Bế Văn Đàn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (535, 18, N'Biên Giang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (536, 18, N'Bùi Bằng Đoàn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (537, 18, N'Cao Thắng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (538, 18, N'Cầu Am')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (539, 18, N'Cầu Đơ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (540, 18, N'Chiến Thắng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (541, 18, N'Chu Văn An')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (542, 18, N'Cù Chính Lan')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (543, 18, N'Đa Sĩ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (544, 18, N'Đại An')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (545, 18, N'Đinh Tiên Hoàng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (546, 18, N'Dương Lâm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (547, 18, N'Dương Nội')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (548, 18, N'Hà Cầu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (549, 18, N'Hoàng Diệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (550, 18, N'Hoàng Hoa Thám')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (551, 18, N'Hoàng Văn Thụ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (552, 18, N'Huỳnh Thúc Kháng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (553, 18, N'La Dương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (554, 18, N'La Nội')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (555, 18, N'Lê Hồng Phong')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (556, 18, N'Lê Hữu Trác')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (557, 18, N'Lê Lai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (558, 18, N'Lê Lợi												
')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (559, 18, N'Lê Quý Đôn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (560, 18, N'Lê Trọng Tấn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (561, 18, N'Lụa')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (562, 18, N'Lương Ngọc Quyến')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (563, 18, N'Lương Văn Can')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (564, 18, N'Lý Thường Kiệt')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (565, 18, N'Lý Tự Trọng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (566, 18, N'Mậu Lương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (567, 18, N'Mộ Lao')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (568, 18, N'Ngô Đình Mẫn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (569, 18, N'Ngô Gia Khảm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (570, 18, N'Ngô Gia Tự')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (571, 18, N'Ngô Quyền')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (572, 18, N'Ngô Thì Nhậm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (573, 18, N'Ngô Thì Sĩ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (574, 18, N'Nguyễn Công Trứ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (575, 18, N'Nguyễn Du')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (576, 18, N'Nguyễn Khuyến')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (577, 18, N'Nguyễn Thái Học')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (578, 18, N'Nguyễn Thanh Bình')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (579, 18, N'Nguyễn Thị Minh Khai')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (580, 18, N'Nguyễn Thượng Hiền')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (581, 18, N'Nguyễn Trãi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (582, 18, N'Nguyễn Trực')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (583, 18, N'Nguyễn Văn Lộc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (584, 18, N'Nguyễn Văn Trác')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (585, 18, N'Nguyễn Văn Trỗi')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (586, 18, N'Nguyễn Viết Xuân')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (587, 18, N'Nhuệ Giang')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (588, 18, N'Phan Bội Châu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (589, 18, N'Phan Chu Trinh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (590, 18, N'Phan Đình Giót')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (591, 18, N'Phan Đình Phùng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (592, 18, N'Phan Huy Chú')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (593, 18, N'Phú Lương')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (594, 18, N'Phúc La')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (595, 18, N'Phùng Hưng')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (596, 18, N'Quang Trung')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (597, 18, N'Tản Đà')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (598, 18, N'Tây Sơn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (599, 18, N'Thanh Bình')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (600, 18, N'Thành Công')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (601, 18, N'Tiểu Công nghệ')
GO
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (602, 18, N'Tô Hiến Thành')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (603, 18, N'Tô Hiệu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (604, 18, N'Tố Hữu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (605, 18, N'Trần Đăng Ninh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (606, 18, N'Trần Hưng Đạo')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (607, 18, N'Trần Nhật Duật')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (608, 18, N'Trần Phú')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (609, 18, N'Trần Văn Chuông')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (610, 18, N'Trưng Nhị')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (611, 18, N'Trưng Trắc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (612, 18, N'Trương Công Định')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (613, 18, N'Văn Khê')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (614, 18, N'Văn La')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (615, 18, N'Văn Phú')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (616, 18, N'Vạn Phúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (617, 18, N'Văn Quán')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (618, 18, N'Văn Yên')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (619, 18, N'Võ Thị Sáu')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (620, 18, N'Vũ Trọng Khánh')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (621, 18, N'Vũ Văn Cẩn')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (622, 18, N'Xa La')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (623, 18, N'Xốm')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (624, 18, N'Ỷ La')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (625, 18, N'Yên Bình')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (626, 18, N'Yên Lộ')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (627, 18, N'Yên Phúc')
INSERT [dbo].[StreetDB] ([id], [district_id], [street_name]) VALUES (628, 18, N'Yết Kiêu')
SET IDENTITY_INSERT [dbo].[StreetDB] OFF
INSERT [dbo].[UserDetail] ([user_id], [name], [gender], [day_of_birth], [address], [phone_number], [email], [bank_account], [avatar_link]) VALUES (3, N'Trần Thị Thùy Trang', N'Nữ', CAST(N'1997-10-05' AS Date), N'114 Chu Manh Trinh Hưng Yên', N'0979401199', N'trangtttse05109@fpt.edu.vn', N'1251 0000 5863 28   ', N'https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.0-9/s960x960/88253677_2659646464269959_7844074986603020288_o.jpg?_nc_cat=110&_nc_sid=85a577&_nc_ohc=VrQQ-RGG4rkAX9yBXAR&_nc_ht=scontent.fsgn2-4.fna&_nc_tp=7&oh=cc0304f9c756df5bc312aa9aa097ca7c&oe=5EA029BE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[UserDetail] ([user_id], [name], [gender], [day_of_birth], [address], [phone_number], [email], [bank_account], [avatar_link]) VALUES (10, N'Hoàng TiếnThành', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [user_name], [password], [role_id], [status_id]) VALUES (3, N'trangse.405', N'$2a$12$/pbGXc2.kcKLZ4OK5kZCfuumCOAjDaLv0h0ipLP5AV0iEQEw1YsBW', 4, 1)
INSERT [dbo].[Users] ([user_id], [user_name], [password], [role_id], [status_id]) VALUES (5, N'huyduc.97', N'$2a$12$kIh68keZY4xX7z0iJlvxU.A067ymMKkh6eVUYBftad1j4.LDh2I8K', 4, 1)
INSERT [dbo].[Users] ([user_id], [user_name], [password], [role_id], [status_id]) VALUES (6, N'trungdd6996', N'$2a$12$diNQHnEd9PkSxSrz1entxuNHp/gyqr1bJyTiKLQA0ASzp/n71ng9K', 4, 1)
INSERT [dbo].[Users] ([user_id], [user_name], [password], [role_id], [status_id]) VALUES (8, N'truonghnn', N'$2a$12$kWIg/b.BGkfRr7cwrcOTLORe0.cz.E7cCaP.Wmd3C00yujHIvjUym', 2, 1)
INSERT [dbo].[Users] ([user_id], [user_name], [password], [role_id], [status_id]) VALUES (10, N'thanhhtse04588@gmail.com', N'$2a$12$45dIp1uWeLIMr7hMUTDis.QGNb.1qa68MVY.mqedY1ZXZ3DBEXlBe', 4, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[WardDB] ON 

INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (1, 1, N'Phúc Xá												
', N'Phường												
', N'21.0468', N'105.8481')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (2, 1, N'Trúc Bạch												
', N'Phường												
', N'21.0453', N'105.8415')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (3, 1, N'Vĩnh Phúc												
', N'Phường												
', N'21.040833', N'105.807222')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (4, 1, N'Cống Vị												
', N'Phường												
', N'21.0353', N'105.8092')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (5, 1, N'Liễu Giai												
', N'Phường												
', N'21.0380', N'105.8188')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (7, 1, N'Quán Thánh												
', N'Phường												
', N'21.0389', N'105.8393')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (8, 1, N'Ngọc Hà												
', N'Phường												
', N'21.036937', N'105.825967')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (9, 1, N'Điện Biên												
', N'Phường												
', N'21.030548', N'105.838348')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (10, 1, N'Đội Cấn												
', N'Phường												
', N'21.034694', N'105.830408')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (11, 1, N'Ngọc Khánh												
', N'Phường												
', N'21.029387', N'105.811096')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (12, 1, N'Kim Mã												
', N'Phường												
', N'21.0316', N'105.8246')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (13, 1, N'Giảng Võ												
', N'Phường												
', N'21.0271', N'105.8195')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (14, 1, N'Thành Công												
', N'Phường												
', N'21.0209', N'105.8158')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (15, 5, N'Nghĩa Đô												
', N'Phường												
', N'21.046070', N'105.802470')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (16, 5, N'Nghĩa Tân												
', N'Phường												
', N'21.043326', N'105.791548')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (17, 5, N'Mai Dịch												
', N'Phường												
', N'21.035833', N'105.773056')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (18, 5, N'Dịch Vọng												
', N'Phường												
', N'21.035', N'105.791111')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (19, 5, N'Dịch Vọng Hậu												
', N'Phường												
', N'21.0340', N'105.7850')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (20, 5, N'Quan Hoa												
', N'Phường												
', N'21.036111', N'105.8011')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (21, 5, N'Yên Hoà												
', N'Phường												
', N'21.023333', N'105.791111')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (22, 5, N'Trung Hoà												
', N'Phường												
', N'21.010278', N'105.798889')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (23, 6, N'Cát Linh												
', N'Phường												
', N'21.029782', N'105.829089')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (24, 6, N'Văn Miếu												
', N'Phường												
', N'21.0266', N'105.8400')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (25, 6, N'Quốc Tử Giám												
', N'Phường												
', N'21.0273', N'105.8327')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (26, 6, N'Láng Thượng												
', N'Phường												
', N'21.0220', N'105.8041')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (27, 6, N'Ô Chợ Dừa												
', N'Phường												
', N'21.0201', N'105.8246')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (28, 6, N'Văn Chương												
', N'Phường												
', N'21.0225', N'105.8371')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (29, 6, N'Hàng Bột												
', N'Phường												
', N'21.0217', N'105.8298')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (30, 6, N'Láng Hạ												
', N'Phường												
', N'21.0154', N'105.8129')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (31, 6, N'Khâm Thiên												
', N'Phường												
', N'21.0195', N'105.8386')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (32, 6, N'Thổ Quan												
', N'Phường												
', N'21.0170', N'105.8342')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (33, 6, N'Nam Đồng												
', N'Phường												
', N'21.0144', N'105.8312')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (34, 6, N'Trung Phụng												
', N'Phường												
', N'21.0151', N'105.8386')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (35, 6, N'Quang Trung												
', N'Phường												
', N'21.0120', N'105.8254')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (36, 6, N'Trung Liệt												
', N'Phường												
', N'21.0108', N'105.8224')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (37, 6, N'Phương Liên												
', N'Phường												
', N'21.0123', N'105.8371')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (38, 6, N'Thịnh Quang												
', N'Phường												
', N'21.0084', N'105.8180')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (39, 6, N'Trung Tự												
', N'Phường												
', N'21.0042', N'105.8312')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (40, 6, N'Kim Liên												
', N'Phường												
', N'21.0067', N'105.8356')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (41, 6, N'Phương Mai												
', N'Phường												
', N'21.0013', N'105.8393')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (42, 6, N'Ngã Tư Sở												
', N'Phường												
', N'21.0047', N'105.8221')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (43, 6, N'Khương Thượng												
', N'Phường												
', N'21.003044', N'105.8283')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (44, 7, N'Nguyễn Du												
', N'Phường												
', N'21.01944', N'105.84333')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (45, 7, N'Bạch Đằng												
', N'Phường												
', N'21.0133', N'105.8657')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (46, 7, N'Phạm Đình Hổ												
', N'Phường												
', N'21.016200', N'105.8577')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (47, 7, N'Bùi Thị Xuân												
', N'Phường												
', N'21.0149', N'105.8505')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (48, 7, N'Ngô Thì Nhậm												
', N'Phường												
', N'21.0166', N'21.0166')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (49, 7, N'Lê Đại Hành												
', N'Phường												
', N'21.0123', N'105.8452')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (50, 7, N'Đồng Nhân												
', N'Phường												
', N'21.0117', N'105.8558')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (51, 7, N'Phố Huế												
', N'Phường												
', N'21.0115', N'105.8533')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (52, 7, N'Đống Mác												
', N'Phường												
', N'21.0112', N'105.8602')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (53, 7, N'Thanh Lương												
', N'Phường												
', N'21.0069', N'105.8716')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (54, 7, N'Thanh Nhàn												
', N'Phường												
', N'21.0054', N'105.8569')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (55, 7, N'Cầu Dền												
', N'Phường												
', N'21.0067', N'105.8503')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (56, 7, N'Bách Khoa												
', N'Phường												
', N'21.0043', N'105.8459')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (57, 7, N'Đồng Tâm												
', N'Phường												
', N'20.996800', N'105.843300')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (58, 7, N'Vĩnh Tuy												
', N'Phường												
', N'20.9985', N'105.8687')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (59, 7, N'Bạch Mai												
', N'Phường												
', N'21.0008', N'105.8518')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (60, 7, N'Quỳnh Mai												
', N'Phường												
', N'21.0000', N'105.8606')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (61, 7, N'Quỳnh Lôi												
', N'Phường												
', N'21.0004', N'105.8562')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (62, 7, N'Minh Khai												
', N'Phường												
', N'20.9959', N'105.8577')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (63, 7, N'Trương Định												
', N'Phường												
', N'20.9938', N'105.8467')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (64, 2, N'Phúc Tân												
', N'Phường												
', N'21.0373', N'105.8569')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (65, 2, N'Đồng Xuân												
', N'Phường												
', N'21.0392', N'105.8498')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (66, 2, N'Hàng Mã												
', N'Phường												
', N'21.0376', N'105.8459')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (67, 2, N'Hàng Buồm												
', N'Phường												
', N'21.0356', N'105.8518')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (68, 2, N'Hàng Đào												
', N'Phường												
', N'21.0347', N'105.8499')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (69, 2, N'Hàng Bồ												
', N'Phường												
', N'21.0349', N'105.8477')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (70, 2, N'Cửa Đông												
', N'Phường												
', N'21.0329', N'105.8455')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (71, 2, N'Lý Thái Tổ												
', N'Phường												
', N'21.0310', N'105.8547')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (72, 2, N'Hàng Bạc												
', N'Phường												
', N'21.0329', N'105.8529')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (73, 2, N'Hàng Gai												
', N'Phường												
', N'21.0319', N'105.8485')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (74, 2, N'Chương Dương Độ												
', N'Phường												
', N'21.0265', N'105.8622')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (75, 2, N'Hàng Trống												
', N'Phường												
', N'21.0285', N'105.8503')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (76, 2, N'Cửa Nam												
', N'Phường												
', N'21.0252', N'105.8426')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (77, 2, N'Hàng Bông												
', N'Phường												
', N'21.0289', N'105.8459')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (78, 2, N'Tràng Tiền												
', N'Phường												
', N'21.0252', N'105.8547')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (79, 2, N'Trần Hưng Đạo												
', N'Phường												
', N'21.0230', N'105.8474')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (80, 2, N'Phan Chu Trinh												
', N'Phường												
', N'21.0205', N'105.8577')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (81, 2, N'Hàng Bài												
', N'Phường												
', N'21.0211', N'105.8518')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (82, 9, N'Nhân Chính												
', N'Phường												
', N'21.0046', N'105.8041')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (83, 9, N'Thượng Đình												
', N'Phường												
', N'21.0006', N'105.8158')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (84, 9, N'Khương Trung												
', N'Phường												
', N'20.9972', N'105.8217')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (85, 9, N'Khương Mai												
', N'Phường												
', N'20.9963', N'105.8305')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (86, 9, N'Thanh Xuân Trung												
', N'Phường												
', N'20.9959', N'105.8041')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (87, 9, N'Phương Liệt												
', N'Phường												
', N'20.9926', N'105.8393')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (88, 9, N'Hạ Đình												
', N'Phường												
', N'20.9867', N'105.8099')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (89, 9, N'Khương Đình												
', N'Phường												
', N'20.9887', N'105.8188')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (90, 9, N'Thanh Xuân Bắc												
', N'Phường												
', N'20.9936', N'105.7982')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (91, 9, N'Thanh Xuân Nam												
', N'Phường												
', N'20.9855', N'105.7989')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (92, 9, N'Kim Giang												
', N'Phường												
', N'20.9828', N'105.8122')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (93, 18, N'Nguyễn Trãi												
', N'Phường', N'20.9700', N'105.7799')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (94, 18, N'Mộ Lao												
', N'Phường', N'20.9834', N'105.7835')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (95, 18, N'Văn Quán												
', N'Phường', N'20.9796', N'105.7923')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (96, 18, N'Vạn Phúc												
', N'Phường', N'20.97952', N'105.77248')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (97, 18, N'Yết Kiêu												
', N'Phường', N'20.9746', N'105.7769')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (98, 18, N'Quang Trung												
', N'Phường', N'20.9653', N'105.7681')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (99, 18, N'La Khê												
', N'Phường', N'20.9724', N'105.7615')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (100, 18, N'Phú La												
', N'Phường', N'20.9561', N'105.7659')
GO
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (101, 18, N'Phúc La												
', N'Phường', N'20.9654', N'105.7894')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (102, 18, N'Hà Cầu												
', N'Phường', N'20.9636', N'105.7777')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (103, 18, N'Yên Nghĩa												
', N'Phường', N'20.9541', N'105.7410')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (104, 18, N'Kiến Hưng												
', N'Phường', N'20.9528', N'105.7850')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (105, 18, N'Phú Lãm												
', N'Phường', N'20.9427', N'105.7542')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (106, 18, N'Phú Lương												
', N'Phường', N'20.9429', N'105.7674')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (107, 18, N'Dương Nội												
', N'Phường', N'20.9799', N'105.7439')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (108, 18, N'Đồng Mai												
', N'Phường', N'20.9309', N'105.7410')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (109, 18, N'Biên Giang												
', N'Phường', N'20.9283', N'105.7219')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (110, 4, N'Thượng Thanh												
', N'Phường', N'21.0655', N'105.8883')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (111, 4, N'Ngọc Thuỵ												
', N'Phường', N'21.0589', N'105.8584')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (112, 4, N'Giang Biên												
', N'Phường', N'21.0675', N'105.9201')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (113, 4, N'Đức Giang												
', N'Phường', N'21.0702', N'105.9068')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (114, 4, N'Việt Hưng												
', N'Phường', N'21.0576', N'105.9024')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (115, 4, N'Gia Thuỵ												
', N'Phường', N'21.0490', N'105.8863')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (116, 4, N'Ngọc Lâm												
', N'Phường', N'21.0448', N'105.8687')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (117, 4, N'Phúc Lợi												
', N'Phường', N'21.0437', N'105.9259')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (118, 4, N'Bồ Đề												
', N'Phường', N'21.0372', N'105.8731')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (119, 4, N'Sài Đồng												
', N'Phường', N'21.0348', N'105.9127')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (120, 4, N'Long Biên												
', N'Phường', N'21.0187', N'105.8848')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (121, 4, N'Thạch Bàn												
', N'Phường', N'21.0217', N'105.9142')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (122, 4, N'Phúc Đồng												
', N'Phường', N'21.0407', N'105.8966')
INSERT [dbo].[WardDB] ([id], [district_id], [ward_name], [ward_type], [ward_latitude], [ward_longitude]) VALUES (123, 4, N'Cự Khối												
', N'Phường', N'21.0060', N'105.8966')
SET IDENTITY_INSERT [dbo].[WardDB] OFF
ALTER TABLE [dbo].[CheckingList]  WITH CHECK ADD  CONSTRAINT [FK_CheckingList_CheckingStatusStatus] FOREIGN KEY([checking_status_id])
REFERENCES [dbo].[CheckingStatus] ([checking_status_id])
GO
ALTER TABLE [dbo].[CheckingList] CHECK CONSTRAINT [FK_CheckingList_CheckingStatusStatus]
GO
ALTER TABLE [dbo].[CheckingList]  WITH CHECK ADD  CONSTRAINT [FK_CheckingList_Place] FOREIGN KEY([place_id])
REFERENCES [dbo].[Place] ([place_id])
GO
ALTER TABLE [dbo].[CheckingList] CHECK CONSTRAINT [FK_CheckingList_Place]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_ContractStatus] FOREIGN KEY([contract_status_id])
REFERENCES [dbo].[ContractStatus] ([contract_status_id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_ContractStatus]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Place] FOREIGN KEY([place_id])
REFERENCES [dbo].[Place] ([place_id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Place]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_User] FOREIGN KEY([owner_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_User]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_User1] FOREIGN KEY([renter_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_User1]
GO
ALTER TABLE [dbo].[CostOfLivingManagement]  WITH CHECK ADD  CONSTRAINT [FK_CostOfLivingManagement_Contract] FOREIGN KEY([contract_id])
REFERENCES [dbo].[Contract] ([contract_id])
GO
ALTER TABLE [dbo].[CostOfLivingManagement] CHECK CONSTRAINT [FK_CostOfLivingManagement_Contract]
GO
ALTER TABLE [dbo].[CostOfLivingManagement]  WITH CHECK ADD  CONSTRAINT [FK_CostOfLivingManagement_PaymentStatus] FOREIGN KEY([payment_status_id])
REFERENCES [dbo].[PaymentStatus] ([payment_status_id])
GO
ALTER TABLE [dbo].[CostOfLivingManagement] CHECK CONSTRAINT [FK_CostOfLivingManagement_PaymentStatus]
GO
ALTER TABLE [dbo].[EquipmentList]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentList_Place] FOREIGN KEY([place_id])
REFERENCES [dbo].[Place] ([place_id])
GO
ALTER TABLE [dbo].[EquipmentList] CHECK CONSTRAINT [FK_EquipmentList_Place]
GO
ALTER TABLE [dbo].[ImageLink]  WITH CHECK ADD  CONSTRAINT [FK_ImageLink_Place] FOREIGN KEY([place_id])
REFERENCES [dbo].[Place] ([place_id])
GO
ALTER TABLE [dbo].[ImageLink] CHECK CONSTRAINT [FK_ImageLink_Place]
GO
ALTER TABLE [dbo].[Map]  WITH CHECK ADD  CONSTRAINT [FK_Map_Place] FOREIGN KEY([place_id])
REFERENCES [dbo].[Place] ([place_id])
GO
ALTER TABLE [dbo].[Map] CHECK CONSTRAINT [FK_Map_Place]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_OrderStatus] FOREIGN KEY([order_status_id])
REFERENCES [dbo].[OrderStatus] ([order_status_id])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_OrderStatus]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_Place] FOREIGN KEY([place_id])
REFERENCES [dbo].[Place] ([place_id])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_Place]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_User] FOREIGN KEY([orderer_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_User]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_User1] FOREIGN KEY([staff_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_User1]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Place] FOREIGN KEY([place_id])
REFERENCES [dbo].[Place] ([place_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Place]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Users]
GO
ALTER TABLE [dbo].[Place]  WITH CHECK ADD  CONSTRAINT [FK_Place_RoleOfPlace] FOREIGN KEY([role_of_place_id])
REFERENCES [dbo].[RoleOfPlace] ([role_of_place_id])
GO
ALTER TABLE [dbo].[Place] CHECK CONSTRAINT [FK_Place_RoleOfPlace]
GO
ALTER TABLE [dbo].[Place]  WITH CHECK ADD  CONSTRAINT [FK_Place_StatusPlace] FOREIGN KEY([status_place_id])
REFERENCES [dbo].[StatusPlace] ([status_place_id])
GO
ALTER TABLE [dbo].[Place] CHECK CONSTRAINT [FK_Place_StatusPlace]
GO
ALTER TABLE [dbo].[Place]  WITH CHECK ADD  CONSTRAINT [FK_Place_User] FOREIGN KEY([owner_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Place] CHECK CONSTRAINT [FK_Place_User]
GO
ALTER TABLE [dbo].[StreetDB]  WITH CHECK ADD  CONSTRAINT [FK_StreetDB_DistrictDB] FOREIGN KEY([district_id])
REFERENCES [dbo].[DistrictDB] ([id])
GO
ALTER TABLE [dbo].[StreetDB] CHECK CONSTRAINT [FK_StreetDB_DistrictDB]
GO
ALTER TABLE [dbo].[UserDetail]  WITH CHECK ADD  CONSTRAINT [FK_UserDetail_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[UserDetail] CHECK CONSTRAINT [FK_UserDetail_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_RoleOfUser] FOREIGN KEY([role_id])
REFERENCES [dbo].[RoleOfUser] ([role_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_RoleOfUser]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_StatusOfUser] FOREIGN KEY([status_id])
REFERENCES [dbo].[StatusOfUser] ([status_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_StatusOfUser]
GO
ALTER TABLE [dbo].[WardDB]  WITH CHECK ADD  CONSTRAINT [FK_WardDB_DistrictDB] FOREIGN KEY([district_id])
REFERENCES [dbo].[DistrictDB] ([id])
GO
ALTER TABLE [dbo].[WardDB] CHECK CONSTRAINT [FK_WardDB_DistrictDB]
GO
/****** Object:  StoredProcedure [dbo].[searchTest]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchTest]
@title nvarchar(50) 
AS
BEGIN

SELECT * FROM Place where title LIKE @title

END
GO
/****** Object:  StoredProcedure [dbo].[searchUltimate]    Script Date: 4/6/2020 6:19:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchUltimate]
@title NVARCHAR(50) , @districtID int , @roleID int , @mina float , @maxa float , @minp float , @maxp float

AS
BEGIN

IF(@title = '' AND @districtID!= -1 AND @roleID != -1 )
SELECT *  FROM Place where district_id = @districtID and role_of_place_id = @roleID and (area BETWEEN @mina AND @maxa) AND (price BETWEEN @minp AND @maxp)  AND status_place_id = 1

ELSE IF(@title = '' AND @districtID = -1 AND @roleID != -1 )
SELECT *  FROM Place where  role_of_place_id = @roleID and (area BETWEEN @mina AND @maxa) AND (price BETWEEN @minp AND @maxp) AND status_place_id = 1

ELSE IF(@title = '' AND @districtID = -1 AND @roleID = -1 )
SELECT *  FROM Place where   (area BETWEEN @mina AND @maxa) AND (price BETWEEN @minp AND @maxp) AND status_place_id = 1

ELSE IF(@title != '' AND @districtID != -1 AND @roleID = -1 )
SELECT *  FROM Place where title LIKE @title  and  district_id = @districtID and (area BETWEEN @mina AND @maxa) AND (price BETWEEN @minp AND @maxp) AND status_place_id = 1

ELSE IF(@title != '' AND @districtID != -1 AND @roleID != -1 )
SELECT *  FROM Place where title LIKE @title and  district_id = @districtID and role_of_place_id = @roleID and (area BETWEEN @mina AND @maxa) AND (price BETWEEN @minp AND @maxp) AND status_place_id = 1

ELSE IF(@title != '' AND @districtID = -1 AND @roleID = -1 )
SELECT *  FROM Place where title LIKE @title and (area BETWEEN @mina AND @maxa) AND (price BETWEEN @minp AND @maxp) AND status_place_id = 1

ELSE IF(@title != '' AND @districtID = -1 AND @roleID != -1 )
SELECT *  FROM Place where title LIKE @title and role_of_place_id = @roleID and(area BETWEEN @mina AND @maxa) AND (price BETWEEN @minp AND @maxp) AND status_place_id = 1

ELSE IF(@title = '' AND @districtID != -1 AND @roleID = -1 )
SELECT *  FROM Place where  district_id = @districtID and (area BETWEEN @mina AND @maxa) AND (price BETWEEN @minp AND @maxp) AND status_place_id = 1


End

GO
