USE [DAn_Web2]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/16/2017 10:48:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/16/2017 10:48:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[UserName] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[DienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Admin] [int] NOT NULL CONSTRAINT [DF_User_Admin]  DEFAULT ((0)),
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[User_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[MaDH] [int] NULL,
	[MaSP] [varchar](100) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [varchar](50) NULL,
	[TongTien] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChungLoai]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChungLoai](
	[MaCL] [int] NOT NULL,
	[TenCL] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChungLoai] PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[IDCmt] [int] IDENTITY(1,1) NOT NULL,
	[UserCmt] [varchar](50) NOT NULL,
	[NoiDung] [nvarchar](4000) NOT NULL,
	[MaSP] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[IDCmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[NgayDatHang] [datetime] NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [char](15) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[TinhTrang] [int] NULL,
	[GhiChu] [nvarchar](1000) NULL,
	[Tongtien] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [nvarchar](100) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[MaCL] [int] NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[MaSP] [varchar](100) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[Gia] [varchar](50) NOT NULL,
	[MoTa] [nvarchar](4000) NULL,
	[LoaiSP] [nvarchar](100) NOT NULL,
	[Hinh] [varchar](1000) NULL,
	[HeDieuHanh] [nvarchar](100) NULL,
	[LuotXem] [int] NULL,
	[NgayDangSP] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[View_CTDH]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_CTDH]
AS
SELECT        dbo.ChiTietDH.*, dbo.Product.TenSP, dbo.Product.Hinh
FROM            dbo.ChiTietDH INNER JOIN
                         dbo.Product ON dbo.ChiTietDH.MaSP = dbo.Product.MaSP

GO
/****** Object:  View [dbo].[viewAdProduct]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewAdProduct]
AS
SELECT        dbo.Product.*, dbo.Loai.TenLoai, dbo.ChungLoai.TenCL
FROM            dbo.ChungLoai INNER JOIN
                         dbo.Loai ON dbo.ChungLoai.MaCL = dbo.Loai.MaCL INNER JOIN
                         dbo.Product ON dbo.Loai.MaLoai = dbo.Product.LoaiSP

GO
/****** Object:  View [dbo].[viewLoai]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewLoai]
AS
SELECT        dbo.Loai.MaLoai, dbo.Loai.TenLoai, dbo.ChungLoai.TenCL
FROM            dbo.ChungLoai INNER JOIN
                         dbo.Loai ON dbo.ChungLoai.MaCL = dbo.Loai.MaCL

GO
/****** Object:  View [dbo].[viewUser]    Script Date: 6/16/2017 10:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewUser]
AS
SELECT        dbo.Accounts.UserName, dbo.Accounts.HoTen, dbo.Accounts.Email, dbo.Accounts.DienThoai, dbo.Accounts.DiaChi, dbo.Accounts.Admin, dbo.AspNetUsers.Id AS UserId
FROM            dbo.Accounts CROSS JOIN
                         dbo.AspNetUsers

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201703301442272_InitialCreate', N'SmartShop.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB72DB36107DEF4CFF81C3A7A433116DE725F548C938B2DD7A1ADB99D0C96B0626211953126409C895BFAD0FFDA4FE4201DE495C088AD42D2F1E895CEC2E760F16B723FFF7CFBFD30FEB30B09E6142508467F6E9E4C4B620F6221FE1E5CC5ED1C59B77F687F73FFF34BDF2C3B5F5AD907BCBE5584B4C66F613A5F1B9E310EF0986804C42E42511891674E245A103FCC8393B39F9D5393D75205361335D9635FDB2C2148530FDC2BECE23ECC198AE40701BF93020F973F6C64DB55A77208424061E9CD96E0812EA3E45F12493B5AD8B0001E6870B83856D018C230A28F3F2FC2B812E4D22BC7463F600040F2F3164720B1010987B7F5E899B76E4E48C77C4A91A6E1408BBEC22EBE4150B067DE1EEA51D9DD9373E4C1F7D8902589764B27FC097C603F6E87312C53061D27051B6B72DA7D9CE69372C9BD5DA7017582069C2B26F5BB760FD09E2257D62B8387B675BD7680DFDE2491EC5AF1831B0B0463459B1AF77AB20008F012CDF3B5A9BFCAFC62AFB38DCEAD4A9C2AB0DFA451C07C84B53CA9093D8D6474060EE1B83D6A4484AF6D2314A20979D070085BBCFE20DA66FCF24B1A90D10974609FC0D6298000AFDCF805298E0CAF9AEECA51DE3C64648A181A56F20586DC1D41D7846CB341E2DA3599EBFC0207D499E502C0142EAD9F74CF43A89423E6225E94F25BEBBD12AF1781722ADD8034896906E88E2064A7FE0D2C1FB3752F9D01BFA0C08F93B4AFCDF0179DABA31177AAB8465CFA5208C7788F5147D645CB41730EE407B31284C5DFD142D11EE763515D3BA5A49685DAD89F575952BEBF6944B691D2D05B47E5652323737AA1F69D7372922BCB15848A4A2A90DF6F819F9ED6955D1A210669EF42F558567BB2E57AD6EEEDA7C23665B373E6C4AED35727553AA64800F1E129BAEC87B8C086E629359785FD02EFCDD1FACD2A41895D94C525366D33F3A505552324C0D067F8FC9A0D3CBDEC8BF2024F250EA9E6A36F82E59575E61DF321BA4F2CD5436CD58B7AB8022BE05638F67F62F42603BCD94B3A36ACFD6B4706AB7C7E23DBE8401A4D0BAF0B2138139201EF04524B2F8F9CD276CF8C284DB02C19C25972600612A8E75843D1483C0A81FADD686AB75EE5D69A7FDE612C61073A346F932714059D79CD2562B745D919A3A35189AA3B31ADE26A8918C753968B282B11934C552213122337058C814BAB163600AB932B12F9F44F7854BE3A229A9EE5BC2E5F1574CA11BFBC0E5D1D6CBDA56DE0433B2532C3968B2E3CE0DA1293B3ED835369501CD164D2C0994A50026E2B1F1E5237F09D75408296FE842DA3C17A81661D239410858538910369DC65A627AA8EDD2D84B59716EA3D5982F057BA8ED8A65552C5B4A6B49D6389CAFC56BC2FA1D6B1B84C66BE3B28FF2A809F5C27835AC502CE86CC09E89F78C566D7BA50F9662A1D663A9A6E8518E04C348898BB39A5AA9AA3102648226C58AA1C79A61BC00ED0349F543667DA45473589F594CD1A9A2A21A064B326F8D10AD629F5E4E39D5BDB8935D8C1717E88EE2067D7A0BE218E165ED463D7F62B9D975FAFC8DDBFF023BCC74381E91DC6397DE9696689480256CBD65A699A7D72821F41250F008F889CFDC0F05B13E136C61B23ECF8A192CA68A429A7FCEEF5F5AE482E6942C2EF0720DD7AC7F215F25A637AA92CCCB9B5B9CDF00029048EED3E651B00AB17AD1AA6E9DDD8AD5DB674F440D53A7E5BFB028156225AC9C9A81374A4B73380C4A4FFBCE7EF30CC99B0FCE10C3AB8FD225787A7D2D6119D4D55C22E225284418302FB791B18EF8DE10FEF97EF14A390EB8CFAF0F2FCCD2D6DC963818AAA7E69A9A77C0756DCD37E61A5B17BD7595AD573B078136F787977A61843577283B1D5E2314C47CE1315AC224ECA3DE5953E8D8CEA8ADB18AEA4A6A8F7BEACA794382B2FCF941A220DFF68D8602C94D7E6F142874E8AA6F1B09AAD32FB596D6BD795D59077340ADB37119DE28E66A66C181E062C415ADFC36BB372AFAAD6CC7014571B85FD7A23AF0DF7EDA9ADBB78ECA9EEF6BFB14EFBC49EF02CDB7AA4265D66D59C5C81995F75485FC4CBBE6C1C6CE290FD7379E7BD47EB5F7E262BE852D795BA4445BB9356F6DC1A7F976B89BE92EEC8F3311DB2AEA1443CF0BA1309C708189FB57300F108B6125700B305A40421FA23F219ED96727A7672DBAFC06D47587103F3864FE3A7E0689F70412918432809E5E287D1582F5EBB128E7FB25EB8E16A76A4BD511AB4DF9B683144A39B58334B6F61183A2B91156F6F49302C46B4BE78F067A8247F815C1A0D488BF1418A4AE9CDB769FE31F9E7C3B5AF991726B47D32EA1CEEE12064743381D2DE04D3EE9C8B11E95E2B81FE28CE6E67728C5723027672FA4C5E322DE981315B3DBF47D7006D537C20309698300A638ADD83AC9EB47261C1E5209DB37BEF651C08CF17530F5AB2771F090009633E08611178F0E62AA1B2039C6142779A383AC758C566CDF044A88E2885C76D0D445A8CC8ECF66B6FF183110644BC70B12DF412AE77BA98C65E8551ACB8F6B95C6E42C209DB11C995A8BB98CDEAC9CD5D44DDB34636DEA6DCB998C9DDC4E236AA7DEB23CBBFBE47F2AD961FD889E7AD6E831103CEB191609537DA88A5AD6E3B1503987E362D7A1D822597378301A75537169B61536A678C5C366CADABF3C62F33541CB4A0527B160E835E6C852E6062FA262AE6E795488B44E506E21053E9B402F128A16C0A3ECB50709497F979B9364AEC247E8DFE0FB158D57947519868F41E3448F4FF93AFB29E5B4E9F3F43E4E7FD93A4617989B887501DEE38F2B14F8A5DFD792A31E850ABE96C8CFA9792E293FAF5EBE949AEE226CA8280F5FB9047A80611C3065E41EBBE019AA7DEB8E613362D34B0496090849AEA36ACFBE32F8F9E1FAFDFF0D840336B44B0000, N'6.0.0-20911')
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'hoangthienkiem', N'Hoàng Thiên Kiếm', N'hoangthienkiem@gmail.com', N'01223334444    ', N'1234 wertyu', 0)
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'ngockay', N'ngockay', N'ngockay@mail.com', N'0123456789     ', N'as1d 234 s5f6 7ds 8g', 0)
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'24430318-1c2c-40ed-9831-1d6a1845d9d3', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'e03efe9d-a371-4e34-a50a-dd77f18f24d2', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f8f763d2-1210-42c3-84bb-3fa5f6843638', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a74c1949-3dfa-4435-866a-3c64beda8728', N'f8f763d2-1210-42c3-84bb-3fa5f6843638')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'219e2cbc-873f-4491-b4d9-a81a0484ab67', N'hoangthienkiem', N'AJBrPwPF30sW3I7Bmz70sFL5SwBCGlGeE0u/I4W6oojQBtVo1M0FKOcmOYDUZfVf0g==', N'cf3e3744-799e-4f47-ae47-f80e315bee7f', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'a74c1949-3dfa-4435-866a-3c64beda8728', N'ngockay', N'AAq//dpDq3ue4UynUxpzyY/JMnVp7DcNyn/J2F/Z1bvOkuOUJba/lAD9qbQxqltsng==', N'47ba6fcd-048c-4596-93b4-a114ccbe5379', N'ApplicationUser')
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'htc02', 1, N'9990000', 9990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'oppo03', 1, N'8490000', 8490000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'oppo04', 1, N'6990000', 6990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'oppo01', 1, N'10000000', 10000000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'asus01', 1, N'7490000', 7490000)
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (1, N'Điện thoại')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (2, N'Máy tính bảng')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (3, N'Phụ kiện')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (4, N'Máy tính xách tay')
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([IDCmt], [UserCmt], [NoiDung], [MaSP]) VALUES (1010, N'ngockay', N'Camera ngon, pin trâu', N'htc02')
INSERT [dbo].[Comment] ([IDCmt], [UserCmt], [NoiDung], [MaSP]) VALUES (1011, N'hoangthienkiem', N'Kiểu dáng đẹp, nhưng ít màu để chọn lựa', N'htc02')
INSERT [dbo].[Comment] ([IDCmt], [UserCmt], [NoiDung], [MaSP]) VALUES (1012, N'hoangthienkiem', N'Camera trước xấu khi chụp ban đêm, lấy nét lâu', N'htc02')
INSERT [dbo].[Comment] ([IDCmt], [UserCmt], [NoiDung], [MaSP]) VALUES (1035, N'hoangthienkiem', N'sdaf dsf asdf', N'htc02')
INSERT [dbo].[Comment] ([IDCmt], [UserCmt], [NoiDung], [MaSP]) VALUES (1036, N'hoangthienkiem', N'sadfsdafsad  sadfsadf', N'htc02')
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (6, N'ngockay', CAST(N'2017-06-16 15:14:36.763' AS DateTime), N'ngockay', N'0123456789     ', N'as1d 234 s5f6 7ds 8g', N'ngockay@mail.com', NULL, N'', 42960000)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'asus', N'Asus', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'bphone', N'BPhone', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'htc', N'HTC', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'iphone', N'Iphone', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'nokia', N'Nokia - Microsoft', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'oppo', N'Oppo', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'samsung', N'Samsung', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'sony', N'Sony', 1)
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'asus01', N'Asus Zenfone 2 2.3Ghz', N'7490000', N'Màn hình:	IPS+ LCD, 16 triệu màu, 5.5", 1080 x 1920 pixels CPU:	Intel Atom Z3580, 4 nhân, 2.3 GHz RAM	4GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	5 MP Bộ nhớ trong:	64 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3000 mAh', N'asus', N'A01-I01-T.jpg', N'Android', 17, CAST(N'2015-06-16 23:23:47.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'asus02', N'Asus Zenfone 6', N'5490000', N'Màn hình:	HD, 6.0", 720 x 1280 pixels CPU:	Intel Atom Z2560, 2 nhân, 1.6 GHz RAM	2 GB Hệ điều hành:	Android 4.3 (Jelly Bean) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	2.0 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3300 mAh', N'asus', N'A01-I01-T.png', N'Android', 3, CAST(N'2015-06-16 23:25:46.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone01', N'Bphone - 16GB', N'10990000', N'Màn hình:	IPS-LCD, 5.0", 1080 x 1920 pixels CPU:	Snapdragon 801, 4 nhân, 2.5 GHz RAM	3GB Hệ điều hành:	BOS (Android 5.0) Camera chính:	13 MP, Quay phim FullHD 1080p@60fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	3000 mAh', N'bphone', N'A01-I02-T.jpg', N'Android', 6, CAST(N'2015-06-15 22:51:25.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone02', N'Bphone - 64GB', N'13990000', N'Màn hình:	IPS-LCD, 5.0", 1080 x 1920 pixels CPU:	Snapdragon 801, 4 nhân, 2.5 GHz RAM	3GB Hệ điều hành:	BOS (Android 5.0) Camera chính:	13 MP, Quay phim FullHD 1080p@60fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	3000 mAh', N'bphone', N'A01-I03-T.jpg', N'Android', 4, CAST(N'2015-06-15 22:54:29.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone03', N'Bphone-128GB Mạ vàng', N'22290000', N'Màn hình:	IPS-LCD, 5.0", 1080 x 1920 pixels CPU:	Snapdragon 801, 4 nhân, 2.5 GHz RAM	3GB Hệ điều hành:	BOS (Android 5.0) Camera chính:	13 MP, Quay phim FullHD 1080p@60fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	3000 mAh', N'bphone', N'A02-I01.jpg', N'Android', 15, CAST(N'2015-06-16 22:59:07.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc01', N'HTC One M9', N'16990000', N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels CPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps Camera phụ:	4 Ultra pixel Bộ nhớ trong:	32 GB Thẻ nhớ ngoài:	2 TB Dung lượng pin:	2840 mAh', N'htc', N'A02-I01-T.png', N'Android', 10, CAST(N'2015-06-16 23:27:03.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc02', N'HTC Desire Eye', N'9990000', N'<p>M&agrave;n h&igrave;nh: Full HD, 5.2&quot;, 1080 x 1920 pixels CPU: Qualcomm Snapdragon 801, 4 nh&acirc;n, 2.26 GHz RAM 2 GB Hệ điều h&agrave;nh: Android 4.4 (KitKat) Camera ch&iacute;nh: 13 MP, Quay phim FullHD 1080p@30fps Camera phụ: 13 MP Bộ nhớ trong: 16 GB Thẻ nhớ ngo&agrave;i: 128 GB Dung lượng pin: 2400 mAh</p>
', N'htc', N'H02-I01.png', N'Android', 96, CAST(N'2017-04-25 19:28:28.337' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone01', N'Iphone 6 Plus 16GB', N'19590000', N'Iphone 6 Plus 16GB', N'iphone', N'A02-I02.jpg', N'IOS', 1, CAST(N'2015-06-15 21:45:58.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone02', N'iPhone 6 Plus 64GB', N'22190000', N'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels
CPU:	Apple A8, 2 nhân, 1.4 GHz
RAM	1 GB
Hệ điều hành:	iOS 8.0
Camera chính:	8.0 MP, Quay phim FullHD 1080p@60fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	64 GB
Thẻ nhớ ngoài:	Không
Dung lượng pin:	2915 mAh', N'iphone', N'A02-I02-T.png', N'IOS', 10, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone03', N'iPhone 5S 16GB', N'12990000', N'Màn hình:	DVGA, 4.0", 640 x 1136 pixels
CPU:	Apple A7, 2 nhân, 1.3 GHz
RAM	1 GB
Hệ điều hành:	iOS 8.0
Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài:	Không
Dung lượng pin:	1560 mAh', N'iphone', N'A03-I03.jpg', N'IOS', 10, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia01', N'Nokia Lumia 930', N'10990000', N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels
CPU:	Qualcomm Snapdragon 800, 4 nhân, 2.2 GHz
RAM	2 GB
Hệ điều hành:	Windows Phone 8.1
Camera chính:	20 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.2 MP
Bộ nhớ trong:	32 GB
Thẻ nhớ ngoài:	Không
Dung lượng pin:	2420 mAh', N'nokia', N'B01-I01.jpg', N'WindowsPhone', 1, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia02', N'Nokia Lumia 830', N'7990000', N'Màn hình:	HD, 5.0", 720 x 1280 pixels
CPU:	Qualcomm Snapdragon 400, 4 nhân, Quad-core 1.2 GHz
RAM	1 GB
Hệ điều hành:	Windows Phone 8.1
Camera chính:	10 MP, Quay phim FullHD 1080p@30fps
Camera phụ:	1.0 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài:	128 GB
Dung lượng pin:	2200 mAh', N'nokia', N'B01-I02.jpg', N'WindowsPhone', 1, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo01', N'OPPO R5', N'10000000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Snapdragon 615, 8 nhân, 1.5 GHz RAM	2 GB Hệ điều hành:	Android 4.4 (KitKat) Camera chính:	13 MP, Quay phim FullHD 1080p@60fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2000 mAh', N'oppo', N'B02-I01.jpg', N'Android', 20, CAST(N'2015-06-16 23:01:50.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo02', N'OPPO Find 7a', N'8990000', N'Màn hình:	Full HD, 5.5", 1080 x 1920 pixels CPU:	Qualcomm Snapdragon 801, 4 nhân, 2.3 GHz RAM	2 GB Hệ điều hành:	Android 4.3 (Jelly Bean) Camera chính:	13 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2800 mAh', N'oppo', N'B02-I02.png', N'Android', 15, CAST(N'2015-06-16 23:03:27.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo03', N'OPPO N1 Mini', N'8490000', N'Màn hình:	HD, 5.0", 720 x 1280 pixels CPU:	Qualcomm Snapdragon 400, 4 nhân, 1.6 GHz RAM	2 GB Hệ điều hành:	Android 4.3 (Jelly Bean) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	13 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2140mAh', N'oppo', N'B03-I01.png', N'Android', 28, CAST(N'2015-06-16 23:04:28.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo04', N'OPPO R1', N'6990000', N'Màn hình:	HD, 5.0", 720 x 1280 pixels CPU:	Qualcomm Snapdragon 400, 4 nhân, 1.6 GHz RAM	1 GB Hệ điều hành:	Android 4.3 (Jelly Bean) Camera chính:	13 MP, Quay phim HD 720p@30fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2410 mAh', N'oppo', N'IP01-I02.png', N'Android', 26, CAST(N'2015-06-16 23:05:45.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung01', N'Samsung Galaxy S6 32GB', N'16590000', N'Màn hình:	Quad HD, 5.1", 1440 x 2560 pixels CPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	16 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	32 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2550mAh', N'samsung', N'IP02-I01.jpg', N'Android', 3, CAST(N'2015-06-15 22:40:16.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung02', N'Samsung Galaxy S6 Edge 64GB', N'20990000', N'Màn hình:	Quad HD, 5.1", 1440 x 2560 pixels CPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	16 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	64 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2600 mAh', N'samsung', N'IP03-I01.jpg', N'Android', 5, CAST(N'2015-06-15 22:40:53.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung03', N'Samsung Galaxy S6 Edge 32GB', N'19990000', N'Màn hình:	Quad HD, 5.1", 1440 x 2560 pixels CPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	16 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	32 GB Thẻ nhớ ngoài:	Không Dung lượng pin:	2600 mAh', N'samsung', N'IP03-I02.jpg', N'Android', 10, CAST(N'2015-06-15 22:41:46.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony01', N'Xperia Z3', N'19590000', N'Xperia Z3', N'sony', N'S01-I01.jpg', N'Android', 1, CAST(N'2015-06-15 21:46:37.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony02', N'Sony Xperia Z3 Plus', N'19590000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2930mAh', N'sony', N'S01-I02.jpg', N'Android', 1, CAST(N'2015-06-15 22:34:31.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony03', N'Sony Xperia Z2', N'10990000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Qualcomm MSM8974AB, 4 nhân, 2.3 GHz RAM	3GB Hệ điều hành:	Android 4.4 (KitKat) Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps Camera phụ:	2.2 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3200 mAh', N'sony', N'S02-I01.jpg', N'Android', 1, CAST(N'2015-06-15 22:37:30.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony04', N'Sony Xperia Z1', N'8990000', N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels CPU:	Qualcomm MSM8974, 4 nhân, 2.2 GHz RAM	2 GB Hệ điều hành:	Android 4.2.2 (Jelly Bean) Camera chính:	20.7 MP, Quay phim FullHD 1080p@30fps Camera phụ:	2.0 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3000 mAh', N'sony', N'S02-I02.jpg', N'Android', 2, CAST(N'2015-06-15 22:38:26.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony05', N'Sony Xperia M2', N'5990000', N'Màn hình:	qHD, 4.8", 540 x 960 pixels CPU:	Qualcomm Snapdragon 400, 4 nhân, 1.2 GHz RAM	1 GB Hệ điều hành:	Android 4.4 (KitKat) Camera chính:	8.0 MP, Quay phim FullHD 1080p@30fps Camera phụ:	1.1 MP Bộ nhớ trong:	8 GB Thẻ nhớ ngoài:	32 GB Dung lượng pin:	2300 mAh', N'sony', N'S03-I01.jpg', N'Android', 10, CAST(N'2015-06-15 22:46:38.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony06', N'Sony Xperia M4 Aqua Dual', N'6490000', N'Màn hình:	HD, 5.0", 720 x 1280 pixels CPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz RAM	2 GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	13 MP, Quay phim FullHD 1080p@30fps Camera phụ:	5 MP Bộ nhớ trong:	8 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2400 mAh', N'sony', N'S03-I02.png', N'Android', 2, CAST(N'2015-06-15 22:50:06.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony07', N'Sony Xperia Z3 Compact', N'11990000', N'Màn hình:	HD, 4.6", 720 x 1280 pixels
CPU:	Qualcomm Snapdragon 801, 4 nhân, 2.5 GHz
RAM	2 GB
Hệ điều hành:	Android 4.4 (KitKat)
Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps
Camera phụ:	2.2 MP
Bộ nhớ trong:	16 GB
Thẻ nhớ ngoài:	64 GB
Dung lượng pin:	2600 mAh', N'sony', N'S04-I01.jpg', N'Android', 9, NULL)
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony08', N'Sony Xperia C4 Dual', N'7190000', N'Màn hình:	Full HD, 5.5", 1080 x 1920 pixels CPU:	MTK 6752, 8 nhân, 1.7 GHz RAM	2 GB Hệ điều hành:	Android 5.0 (Lollipop) SIM:	2 SIM 2 sóng Camera:	13 MP, Quay phim FullHD 1080p@30fps Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2600 mAh', N'sony', N'S04-I02.jpg', N'Android', 7, CAST(N'2015-06-16 22:59:19.000' AS DateTime))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_DonDatHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonDatHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_Product] FOREIGN KEY([MaSP])
REFERENCES [dbo].[Product] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_Product]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product] FOREIGN KEY([MaSP])
REFERENCES [dbo].[Product] ([MaSP])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Product]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([UserCmt])
REFERENCES [dbo].[Accounts] ([UserName])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[Loai]  WITH CHECK ADD  CONSTRAINT [FK_Loai_ChungLoai] FOREIGN KEY([MaCL])
REFERENCES [dbo].[ChungLoai] ([MaCL])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Loai] CHECK CONSTRAINT [FK_Loai_ChungLoai]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product] FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[Loai] ([MaLoai])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietDH"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Product"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CTDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CTDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChungLoai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Loai"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Product"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewAdProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewAdProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChungLoai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Loai"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewLoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewLoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Accounts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AspNetUsers"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewUser'
GO
