USE [CapstoneDB]
GO
/****** Object:  Table [dbo].[CheckingList]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[CheckingStatus]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[Contract]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[ContractStatus]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[CostOfLivingManagement]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[DistrictDB]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[EquipmentList]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[ImageLink]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[Map]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[OrderList]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[PaymentStatus]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[Place]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[RoleOfPlace]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[RoleOfUser]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[StatusOfUser]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[StatusPlace]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[StreetDB]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[UserDetail]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  Table [dbo].[WardDB]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[searchTest]    Script Date: 4/6/2020 5:30:31 PM ******/
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
/****** Object:  StoredProcedure [dbo].[searchUltimate]    Script Date: 4/6/2020 5:30:31 PM ******/
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
