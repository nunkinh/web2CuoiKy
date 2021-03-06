USE [DAn_Web2]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[Accounts]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[ChungLoai]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[Loai]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  View [dbo].[View_CTDH]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  View [dbo].[viewAdProduct]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  View [dbo].[viewLoai]    Script Date: 19/06/2017 5:14:18 CH ******/
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
/****** Object:  View [dbo].[viewUser]    Script Date: 19/06/2017 5:14:18 CH ******/
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
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'ciao', N'ciao', N'ciao@gmail.com', N'0985442814     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', 0)
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'hoangthienkiem', N'Hoàng Thiên Kiếm', N'hoangthienkiem@gmail.com', N'01223334444    ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', 0)
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'ngockay', N'ukinh', N'ukinh@gmail.com.vn', N'0123456789     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', 0)
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'user001', N'user001', N'user001@gmail.com', N'0985442814     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', 0)
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'user002', N'user002', N'user002@gmail.com', N'0985442814     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', 0)
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'user003', N'user003', N'user003@gmail.com', N'0985442814     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', 0)
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'user004', N'user004', N'user004@gmail.com', N'0123456789     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', 0)
INSERT [dbo].[Accounts] ([UserName], [HoTen], [Email], [DienThoai], [DiaChi], [Admin]) VALUES (N'user007', N'tao la 007 nè mấy ku', N'007@gmail.com.vn', N'0123456789     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', 0)
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'24430318-1c2c-40ed-9831-1d6a1845d9d3', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'e03efe9d-a371-4e34-a50a-dd77f18f24d2', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f8f763d2-1210-42c3-84bb-3fa5f6843638', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a74c1949-3dfa-4435-866a-3c64beda8728', N'f8f763d2-1210-42c3-84bb-3fa5f6843638')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'219e2cbc-873f-4491-b4d9-a81a0484ab67', N'hoangthienkiem', N'AJBrPwPF30sW3I7Bmz70sFL5SwBCGlGeE0u/I4W6oojQBtVo1M0FKOcmOYDUZfVf0g==', N'cf3e3744-799e-4f47-ae47-f80e315bee7f', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'35263b50-5f5f-45cd-8ac7-32d3c1f1c25c', N'user007', N'ANTexYSJMj3frtM712Zp5RjNtqU/Ag1F8qqmplMaLWRJBykJ1OcZZwyWkkerwKU8ag==', N'0d2a7754-94bf-4335-af21-b28bf66fb725', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'3b9c836a-cd1b-4ba5-875e-a7bab3e66c8b', N'user001', N'ABg4xFjMhhSSaaVmc77OBI1SK/rTtL+72nudhCJUGaGD8hwsJ22eGCFXZXHawoKInw==', N'e92be1db-bd5a-4ec4-8339-ca3bd30e994c', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'69794eb2-b7cb-4655-ae1a-a8092b31cc02', N'user004', N'AIrvQLrRnrTppQOKNfaSynQKkiiVhlUH7sDID46xIz7zgSUlGr+YTMiX6PLnD6//Fg==', N'b43f0f51-a347-4108-b9c1-592855c0e2ed', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'a1412525-c750-41d0-acc4-48c3fb0c72ae', N'user002', N'ALwME440fDs+4Krmko+DMFxfuGsuuGNpqge6xU+JBRcjTSXiQGK0ZkrtorF+PKpfAQ==', N'93d6f8d1-b6c1-498c-9e8f-2f1e8e5b43d8', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'a74c1949-3dfa-4435-866a-3c64beda8728', N'ngockay', N'APgTYmYxc+Fz7dTRFdziZdhpaYHE+sfbwhe+3DJv4YdgxpFuVNpOr66ds4q9os2fZA==', N'6b6e2947-aeb2-446c-84b5-0aa04ca941ac', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'ea35da03-2aa4-476a-a1b7-cb57d06006d3', N'ciao', N'AL9Qc8fyhfVgxCaLfetVH+6gnetpH36a8j21lIMKCrea8G5KEewn1wLZW9A2QgzGzA==', N'd7a1c065-d6ba-407b-9d09-f80b432147fa', N'ApplicationUser')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [PasswordHash], [SecurityStamp], [Discriminator]) VALUES (N'f972c172-8a5a-4d37-86b9-b496e5f22c92', N'user003', N'ANuI6G8ZMDIg5agtR2GDfTI0q1kpI2VTls8z83yp3jQgK27ByEjj4WrHtN3FKPC+RQ==', N'07a6ba68-a544-4e9c-96db-d9eda3db0796', N'ApplicationUser')
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'htc02', 1, N'9990000', 9990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'oppo03', 1, N'8490000', 8490000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'oppo04', 1, N'6990000', 6990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'oppo01', 1, N'10000000', 10000000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (6, N'asus01', 1, N'7490000', 7490000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (7, N'bphone03', 1, N'22290000', 22290000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (8, N'htc01', 2, N'16990000', 33980000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (8, N'bphone02', 3, N'13990000', 41970000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (8, N'bphone01', 2, N'10990000', 21980000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (8, N'nokia01', 1, N'10990000', 10990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (8, N'sony08', 1, N'7190000', 7190000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (8, N'oppo04', 1, N'6990000', 6990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (9, N'htc02', 10, N'10101011', 101010110)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (9, N'oppo03', 9, N'8490000', 76410000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (9, N'oppo04', 10, N'6990000', 69900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (9, N'oppo01', 2, N'10000000', 20000000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (9, N'sony01', 1, N'19590000', 19590000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (10, N'htc02', 1, N'10101011', 10101011)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (10, N'oppo04', 6, N'6990000', 41940000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (10, N'oppo01', 2, N'10000000', 20000000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (11, N'htc02', 1000, N'10101011', 1511076408)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (11, N'iphone03', -1000, N'12990000', -105098112)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone007', 4, N'22190000', 88760000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone005', 4, N'8990000', 35960000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone012', 4, N'9900000', 39600000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone008', 1, N'23100900', 23100900)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone010', 1, N'7900000', 7900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone011', 1, N'7890000', 7890000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone006', 5, N'17900000', 89500000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone004', 1, N'1090000', 1090000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (12, N'aiphone003', 1, N'8900000', 8900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone007', 4, N'22190000', 88760000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone005', 4, N'8990000', 35960000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone012', 4, N'9900000', 39600000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone008', 1, N'23100900', 23100900)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone010', 1, N'7900000', 7900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone011', 1, N'7890000', 7890000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone006', 5, N'17900000', 89500000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone004', 1, N'1090000', 1090000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'aiphone003', 1, N'8900000', 8900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'nokia006', 1, N'7999000', 7999000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'nokia004', 1, N'5679000', 5679000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'nokia003', 1, N'7897000', 7897000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'nokia02', 1, N'7990000', 7990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'nokia001', 1, N'14999000', 14999000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (13, N'nokia002', 1, N'14500000', 14500000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone007', 4, N'22190000', 88760000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone005', 4, N'8990000', 35960000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone012', 4, N'9900000', 39600000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone008', 1, N'23100900', 23100900)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone010', 1, N'7900000', 7900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone011', 1, N'7890000', 7890000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone006', 5, N'17900000', 89500000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone004', 1, N'1090000', 1090000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'aiphone003', 1, N'8900000', 8900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'nokia006', 1, N'7999000', 7999000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'nokia004', 1, N'5679000', 5679000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'nokia003', 1, N'7897000', 7897000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'nokia02', 1, N'7990000', 7990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'nokia001', 1, N'14999000', 14999000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'nokia002', 1, N'14500000', 14500000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'htc002', 1, N'499', 499)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'htc003', 1, N'399', 399)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (14, N'htc004', 1, N'359', 359)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone007', 4, N'22190000', 88760000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone005', 4, N'8990000', 35960000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone012', 4, N'9900000', 39600000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone008', 1, N'23100900', 23100900)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone010', 1, N'7900000', 7900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone011', 1, N'7890000', 7890000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone006', 5, N'17900000', 89500000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone004', 1, N'1090000', 1090000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'aiphone003', 1, N'8900000', 8900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'nokia006', 1, N'7999000', 7999000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'nokia004', 1, N'5679000', 5679000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'nokia003', 1, N'7897000', 7897000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'nokia02', 1, N'7990000', 7990000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'nokia001', 1, N'14999000', 14999000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'nokia002', 1, N'14500000', 14500000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'htc002', 1, N'499', 499)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'htc003', 1, N'399', 399)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'htc004', 1, N'359', 359)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'samsung010', 1, N'17900000', 17900000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'samsung008', 1, N'8980000', 8980000)
INSERT [dbo].[ChiTietDH] ([MaDH], [MaSP], [SoLuong], [DonGia], [TongTien]) VALUES (15, N'samsung005', 1, N'18900000', 18900000)
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (1, N'Điện thoại')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (2, N'Máy tính bảng')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (3, N'Phụ kiện')
INSERT [dbo].[ChungLoai] ([MaCL], [TenCL]) VALUES (4, N'Máy tính xách tay')
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (6, N'ngockay', CAST(N'2017-06-16 15:14:36.763' AS DateTime), N'ngockay', N'0123456789     ', N'as1d 234 s5f6 7ds 8g', N'ngockay@mail.com', NULL, N'', 42960000)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (7, N'ngockay', CAST(N'2017-06-18 12:02:25.607' AS DateTime), N'ngockay', N'0123456789     ', N'as1d 234 s5f6 7ds 8g', N'ngockay@mail.com', NULL, N'', 22290000)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (8, N'ngockay', CAST(N'2017-06-18 12:21:01.317' AS DateTime), N'ngockay', N'0123456789     ', N'as1d 234 s5f6 7ds 8g', N'ngockay@mail.com', NULL, N'hàng dễ vỡ', 123100000)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (9, N'user007', CAST(N'2017-06-19 11:42:13.903' AS DateTime), N'tao la 007', N'0123456789     ', N'abc xyz', N'007@gmail.com', NULL, N'', 286910110)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (10, N'user007', CAST(N'2017-06-19 11:50:22.177' AS DateTime), N'tao la 007 nè mấy ku', N'0123456789     ', N'abc xyz', N'007@gmail.com.vn', NULL, N'', 72041011)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (11, N'ngockay', CAST(N'2017-06-19 13:11:57.167' AS DateTime), N'ukinh', N'0123456789     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', N'ukinh@gmail.com.vn', NULL, N'', 1405978296)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (12, N'user001', CAST(N'2017-06-19 17:05:55.447' AS DateTime), N'user001', N'0985442814     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', N'user001@gmail.com', NULL, N'Hàng dễ vỡ', 302700900)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (13, N'user002', CAST(N'2017-06-19 17:07:15.210' AS DateTime), N'user002', N'0985442814     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', N'user002@gmail.com', NULL, N'giao trong buổi trưa', 361764900)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (14, N'user003', CAST(N'2017-06-19 17:08:05.493' AS DateTime), N'user003', N'0985442814     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', N'user003@gmail.com', NULL, N'giao sáng chủ nhật', 361766157)
INSERT [dbo].[DonDatHang] ([MaDH], [Username], [NgayDatHang], [HoTen], [SDT], [DiaChi], [Email], [TinhTrang], [GhiChu], [Tongtien]) VALUES (15, N'user004', CAST(N'2017-06-19 17:08:58.333' AS DateTime), N'user004', N'0123456789     ', N'27 Truong Chinh, P. Tan Thoi Nhat, Q.12', N'user004@gmail.com', NULL, N'giao cuối tháng
', 407546157)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'bphone', N'BPhone', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'htc', N'HTC', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'iphone', N'Iphone', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'nokia', N'Nokia - Microsoft', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'oppo', N'Oppo', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'samsung', N'Samsung', 1)
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MaCL]) VALUES (N'sony', N'Sony', 1)
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone001', N'IPHONE 5S 16GB', N'5590000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :4 inch (640 x 1136 pixels )</li>
	<li>Camera :Ch&iacute;nh : 8 MP, Phụ 1.2 MP</li>
	<li>RAM :1 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A7</li>
	<li>CPU :Dual-core 1.3Ghz</li>
	<li>GPU :PowerVR G6430</li>
	<li>K&iacute;ch thước :123.8 x 58.6 x 7.6 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :DVGA</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :640 x 1136 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Quay phim :Full HD 1080p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :1.2 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Tự động c&acirc;n bằng s&aacute;ng</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :Dual-core 1.3Ghz</li>
	<li>Số nh&acirc;n :2 Nh&acirc;n</li>
	<li>Chipset :Apple A7</li>
	<li>RAM :1GB</li>
	<li>Chip đồ họa (GPU) :PowerVR G6430</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :~10 GB</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :123.8 x 58.6 x 7.6 mm</li>
	<li>Trọng lượng :112 g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-ion</li>
	<li>Dung lượng pin :1560 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Thời gian chờ :Up to 250 h (2G) / Up to 250 h (3G)</li>
	<li>Thời gian đ&agrave;m thoại :Up to 10 h (2G) / Up to 10 h (3G)</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850 / 900 / 1700 / 1900 / 2100, LTE</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano-SIM</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :C&oacute;, v4.0 with A2DP</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Kh&ocirc;ng</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
</ul>
', N'iphone', N'22_05.png', N'IOS', 2, CAST(N'2017-06-19 16:05:50.343' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone002', N'iPhone SE 16GB', N'6000000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'22_05.png', N'IOS', 2, CAST(N'2017-06-19 16:09:09.193' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone003', N'iPhone 6s 16GB', N'8900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'22_03.png', N'IOS', 3, CAST(N'2017-06-19 16:09:30.973' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone004', N'iPhone 6s Plus 64GB', N'1090000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'22_07.png', N'IOS', 2, CAST(N'2017-06-19 16:09:44.733' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone005', N'iPhone SE 128GB', N'8990000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'22_05.png', N'IOS', 3, CAST(N'2017-06-19 16:11:48.290' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone006', N'iPhone 7 16GB', N'17900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'Product_05.png', N'IOS', 3, CAST(N'2017-06-19 16:10:02.130' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone007', N'iPhone 7Plus 64GB', N'22190000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :4.7 inch (1334 x 750 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 7.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS 10</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :138.3 x 67.1 x 7.1 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Panorama, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :2 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :138.3 x 67.1 x 7.1 mm</li>
	<li>Trọng lượng :138g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :7.45 Wh (1960 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM / EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS/HSPA+/DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :802.11a / b / g / n / ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Kh&ocirc;ng</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA, AAC, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'Product_07.png', N'IOS', 3, CAST(N'2017-06-19 16:13:06.423' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone008', N'iPhone 7 Plus 128GB', N'23100900', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'Product_05.png', N'IOS', 2, CAST(N'2017-06-19 16:10:22.797' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone009', N'iPhone 6s Plus 32GB', N'13900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'22_03.png', N'IOS', 3, CAST(N'2017-06-19 16:08:43.647' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone010', N'iPhone 6 16GB', N'7900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'22_07.png', N'IOS', 2, CAST(N'2017-06-19 16:10:47.373' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone011', N'iPhone 6s 64GB', N'7890000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'Product_17.png', N'IOS', 2, CAST(N'2017-06-19 16:11:11.180' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'aiphone012', N'iPhone 6s Plus 128GB', N'9900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1334 x 750 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :Apple A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :PowerVR Series7XT Plus</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM/EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
</ul>
', N'iphone', N'Product_17.png', N'IOS', 3, CAST(N'2017-06-19 16:11:29.643' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone01', N'Bphone - 16GB', N'10990000', N'<p>M&agrave;n h&igrave;nh: IPS-LCD, 5.0&quot;, 1080 x 1920 pixels CPU: Snapdragon 801, 4 nh&acirc;n, 2.5 GHz RAM 3GB Hệ điều h&agrave;nh: BOS (Android 5.0) Camera ch&iacute;nh: 13 MP, Quay phim FullHD 1080p@60fps Camera phụ: 5 MP Bộ nhớ trong: 16 GB Thẻ nhớ ngo&agrave;i: Kh&ocirc;ng Dung lượng pin: 3000 mAh</p>
', N'bphone', N'bphone.png', N'Android', 7, CAST(N'2017-06-19 16:14:42.953' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone02', N'Bphone - 64GB', N'13990000', N'<p>M&agrave;n h&igrave;nh: IPS-LCD, 5.0&quot;, 1080 x 1920 pixels CPU: Snapdragon 801, 4 nh&acirc;n, 2.5 GHz RAM 3GB Hệ điều h&agrave;nh: BOS (Android 5.0) Camera ch&iacute;nh: 13 MP, Quay phim FullHD 1080p@60fps Camera phụ: 5 MP Bộ nhớ trong: 16 GB Thẻ nhớ ngo&agrave;i: Kh&ocirc;ng Dung lượng pin: 3000 mAh</p>
', N'bphone', N'bphone.png', N'Android', 5, CAST(N'2017-06-19 16:15:04.677' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'bphone03', N'Bphone-128GB Mạ vàng', N'22290000', N'<p>M&agrave;n h&igrave;nh: IPS-LCD, 5.0&quot;, 1080 x 1920 pixels CPU: Snapdragon 801, 4 nh&acirc;n, 2.5 GHz RAM 3GB Hệ điều h&agrave;nh: BOS (Android 5.0) Camera ch&iacute;nh: 13 MP, Quay phim FullHD 1080p@60fps Camera phụ: 5 MP Bộ nhớ trong: 16 GB Thẻ nhớ ngo&agrave;i: Kh&ocirc;ng Dung lượng pin: 3000 mAh</p>
', N'bphone', N'bphone.png', N'Android', 16, CAST(N'2017-06-19 16:15:17.057' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'ht006', N'HTC One A9s', N'379', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</li>
	<li>RAM :6 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.1.1 (Nougat)</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>CPU :64 bit octa-core, l&ecirc;n đến 2.45 Ghz</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2K</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1440 x 2560 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP (f/1.7)</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :16.0 MP (f/2.0)</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :L&ecirc;n đến 2.45 Ghz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>RAM :6 GB</li>
	<li>Cảm biến :Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>Trọng lượng :169g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 3.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850/900/1900/2100</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 SIM Nano (SIM 2 chung khe thẻ nhớ)</li>
	<li>Wifi :802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</li>
	<li>GPS :A-GPS, GLONASS, BeiDou</li>
	<li>Bluetooth :Bluetooth 4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :DLNA, AirPlay, Miracast</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Chức năng kh&aacute;c :K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</li>
</ul>
', N'htc', N'htc_16.png', N'Android', 1, CAST(N'2017-06-19 15:38:27.960' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc001', N'HTC U Ultra Sapphire', N'800', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</li>
	<li>RAM :6 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.1.1 (Nougat)</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>CPU :64 bit octa-core, l&ecirc;n đến 2.45 Ghz</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2K</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1440 x 2560 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP (f/1.7)</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :16.0 MP (f/2.0)</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :L&ecirc;n đến 2.45 Ghz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>RAM :6 GB</li>
	<li>Cảm biến :Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>Trọng lượng :169g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 3.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850/900/1900/2100</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 SIM Nano (SIM 2 chung khe thẻ nhớ)</li>
	<li>Wifi :802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</li>
	<li>GPS :A-GPS, GLONASS, BeiDou</li>
	<li>Bluetooth :Bluetooth 4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :DLNA, AirPlay, Miracast</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Chức năng kh&aacute;c :K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</li>
</ul>
', N'htc', N'htc_03.png', N'Android', 5, CAST(N'2017-06-19 15:28:01.067' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc002', N'HTC DESIRE 820 PLUS', N'499', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</li>
	<li>RAM :6 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.1.1 (Nougat)</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>CPU :64 bit octa-core, l&ecirc;n đến 2.45 Ghz</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2K</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1440 x 2560 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP (f/1.7)</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :16.0 MP (f/2.0)</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :L&ecirc;n đến 2.45 Ghz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>RAM :6 GB</li>
	<li>Cảm biến :Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>Trọng lượng :169g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 3.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850/900/1900/2100</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 SIM Nano (SIM 2 chung khe thẻ nhớ)</li>
	<li>Wifi :802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</li>
	<li>GPS :A-GPS, GLONASS, BeiDou</li>
	<li>Bluetooth :Bluetooth 4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :DLNA, AirPlay, Miracast</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Chức năng kh&aacute;c :K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</li>
</ul>
', N'htc', N'main_thums.jpg', N'Android', 1, CAST(N'2017-06-19 15:44:41.483' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc003', N'HTC DESIRE 820', N'399', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</li>
	<li>RAM :6 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.1.1 (Nougat)</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>CPU :64 bit octa-core, l&ecirc;n đến 2.45 Ghz</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2K</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1440 x 2560 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP (f/1.7)</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :16.0 MP (f/2.0)</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :L&ecirc;n đến 2.45 Ghz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>RAM :6 GB</li>
	<li>Cảm biến :Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>Trọng lượng :169g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 3.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850/900/1900/2100</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 SIM Nano (SIM 2 chung khe thẻ nhớ)</li>
	<li>Wifi :802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</li>
	<li>GPS :A-GPS, GLONASS, BeiDou</li>
	<li>Bluetooth :Bluetooth 4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :DLNA, AirPlay, Miracast</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Chức năng kh&aacute;c :K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</li>
</ul>
', N'htc', N'main_thums.jpg', N'Android', 2, CAST(N'2017-06-19 15:43:34.323' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc004', N'HTC DESIRE 626G', N'359', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</li>
	<li>RAM :6 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.1.1 (Nougat)</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>CPU :64 bit octa-core, l&ecirc;n đến 2.45 Ghz</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2K</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1440 x 2560 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP (f/1.7)</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :16.0 MP (f/2.0)</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :L&ecirc;n đến 2.45 Ghz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>RAM :6 GB</li>
	<li>Cảm biến :Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>Trọng lượng :169g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 3.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850/900/1900/2100</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 SIM Nano (SIM 2 chung khe thẻ nhớ)</li>
	<li>Wifi :802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</li>
	<li>GPS :A-GPS, GLONASS, BeiDou</li>
	<li>Bluetooth :Bluetooth 4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :DLNA, AirPlay, Miracast</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Chức năng kh&aacute;c :K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</li>
</ul>
', N'htc', N'main_thums.jpg', N'Android', 1, CAST(N'2017-06-19 15:41:35.963' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc005', N'HTC Desire 728G', N'299', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</li>
	<li>RAM :6 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.1.1 (Nougat)</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>CPU :64 bit octa-core, l&ecirc;n đến 2.45 Ghz</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2K</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1440 x 2560 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP (f/1.7)</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :16.0 MP (f/2.0)</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :L&ecirc;n đến 2.45 Ghz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>RAM :6 GB</li>
	<li>Cảm biến :Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>Trọng lượng :169g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 3.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850/900/1900/2100</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 SIM Nano (SIM 2 chung khe thẻ nhớ)</li>
	<li>Wifi :802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</li>
	<li>GPS :A-GPS, GLONASS, BeiDou</li>
	<li>Bluetooth :Bluetooth 4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :DLNA, AirPlay, Miracast</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Chức năng kh&aacute;c :K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</li>
</ul>
', N'htc', N'main_thums.jpg', N'Android', 1, CAST(N'2017-06-19 15:40:56.477' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc007', N'HTC One ME', N'599', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :32 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 810</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Quad HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 810</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :32 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2 TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Khả năng chống nước :Chuẩn IP57</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3200 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 2.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :C&oacute;</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
</ul>
', N'htc', N'htc_17.png', N'Android', 1, CAST(N'2017-06-19 15:37:59.447' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc008', N'HTC 10 evo', N'809', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :32 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 810</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Quad HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 810</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :32 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2 TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Khả năng chống nước :Chuẩn IP57</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3200 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 2.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :C&oacute;</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
</ul>
', N'htc', N'htc_15.png', N'Android', 1, CAST(N'2017-06-19 15:37:31.063' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc009', N'HTC Desire 10 Pro', N'789', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (720 x 1280 pixels)</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android OS</li>
	<li>Chipset :Mediatek MT6592</li>
	<li>CPU :Octa-Core 1.7 GHz</li>
	<li>K&iacute;ch thước :157.7 x 78.74 x 7.74 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :HD</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Điện dung đa điểm</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :Octa-Core 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Mediatek MT6592</li>
	<li>RAM :1 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD (T-Flash)</li>
	<li>Hỗ trợ thẻ nhớ tối đa :32 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :157.7 x 78.74 x 7.74 mm</li>
	<li>Trọng lượng :154.5g</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-ion</li>
	<li>Dung lượng pin :2600 mAh</li>
	<li>Thời gian chờ :600 giờ</li>
	<li>Thời gian đ&agrave;m thoại :32 giờ</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850/ 900/ 1800/ 1900 MHz</li>
	<li>Băng tần 3G :HSDPA 850/ 900/ 2100 MHz</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Sim</li>
	<li>Wifi :802.11 b/g/n</li>
	<li>GPS :A-GPS</li>
	<li>Bluetooth :v4.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :MicroUSB</li>
	<li>Cổng kết nối kh&aacute;c :Kh&ocirc;ng</li>
	<li>Cổng sạc :microUSB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
</ul>
', N'htc', N'htc_09.png', N'Android', 1, CAST(N'2017-06-19 15:37:05.107' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc01', N'HTC One M9', N'16990000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</li>
	<li>RAM :6 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.1.1 (Nougat)</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>CPU :64 bit octa-core, l&ecirc;n đến 2.45 Ghz</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2K</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1440 x 2560 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP (f/1.7)</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :16.0 MP (f/2.0)</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :L&ecirc;n đến 2.45 Ghz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>RAM :6 GB</li>
	<li>Cảm biến :Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>Trọng lượng :169g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 3.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850/900/1900/2100</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 SIM Nano (SIM 2 chung khe thẻ nhớ)</li>
	<li>Wifi :802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</li>
	<li>GPS :A-GPS, GLONASS, BeiDou</li>
	<li>Bluetooth :Bluetooth 4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :DLNA, AirPlay, Miracast</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Chức năng kh&aacute;c :K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</li>
</ul>
', N'htc', N'htc_15.png', N'Android', 17, CAST(N'2017-06-19 15:28:24.503' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc010', N'HTC U Ultra', N'457', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (720 x 1280 pixels)</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android OS</li>
	<li>Chipset :Mediatek MT6592</li>
	<li>CPU :Octa-Core 1.7 GHz</li>
	<li>K&iacute;ch thước :157.7 x 78.74 x 7.74 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :HD</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Điện dung đa điểm</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :Octa-Core 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Mediatek MT6592</li>
	<li>RAM :1 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD (T-Flash)</li>
	<li>Hỗ trợ thẻ nhớ tối đa :32 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :157.7 x 78.74 x 7.74 mm</li>
	<li>Trọng lượng :154.5g</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-ion</li>
	<li>Dung lượng pin :2600 mAh</li>
	<li>Thời gian chờ :600 giờ</li>
	<li>Thời gian đ&agrave;m thoại :32 giờ</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850/ 900/ 1800/ 1900 MHz</li>
	<li>Băng tần 3G :HSDPA 850/ 900/ 2100 MHz</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Sim</li>
	<li>Wifi :802.11 b/g/n</li>
	<li>GPS :A-GPS</li>
	<li>Bluetooth :v4.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :MicroUSB</li>
	<li>Cổng kết nối kh&aacute;c :Kh&ocirc;ng</li>
	<li>Cổng sạc :microUSB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
</ul>
', N'htc', N'htc_07.png', N'Android', 1, CAST(N'2017-06-19 15:36:40.930' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc011', N'HTC U11', N'389', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (720 x 1280 pixels)</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android OS</li>
	<li>Chipset :Mediatek MT6592</li>
	<li>CPU :Octa-Core 1.7 GHz</li>
	<li>K&iacute;ch thước :157.7 x 78.74 x 7.74 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :HD</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Điện dung đa điểm</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :Octa-Core 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Mediatek MT6592</li>
	<li>RAM :1 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD (T-Flash)</li>
	<li>Hỗ trợ thẻ nhớ tối đa :32 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :157.7 x 78.74 x 7.74 mm</li>
	<li>Trọng lượng :154.5g</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-ion</li>
	<li>Dung lượng pin :2600 mAh</li>
	<li>Thời gian chờ :600 giờ</li>
	<li>Thời gian đ&agrave;m thoại :32 giờ</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850/ 900/ 1800/ 1900 MHz</li>
	<li>Băng tần 3G :HSDPA 850/ 900/ 2100 MHz</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Sim</li>
	<li>Wifi :802.11 b/g/n</li>
	<li>GPS :A-GPS</li>
	<li>Bluetooth :v4.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :MicroUSB</li>
	<li>Cổng kết nối kh&aacute;c :Kh&ocirc;ng</li>
	<li>Cổng sạc :microUSB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
</ul>
', N'htc', N'htc_05.png', N'Android', 2, CAST(N'2017-06-19 15:36:08.110' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'htc02', N'HTC Desire Eye', N'500', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (2560 x 1440 pixels)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 16.0 MP</li>
	<li>RAM :6 GB</li>
	<li>Bộ nhớ trong :128 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.1.1 (Nougat)</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>CPU :64 bit octa-core, l&ecirc;n đến 2.45 Ghz</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2K</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1440 x 2560 pixels</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :12.0 MP (f/1.7)</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Lấy n&eacute;t tự động si&ecirc;u tốc độ UltraSpeed,BSI,OIS,hẹn giờ chụp,Nhận diện khu&ocirc;n mặt,HDR,Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :16.0 MP (f/2.0)</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Chế độ make up trực tiếp,selfie tự động,selfie bằng giọng n&oacute;i,hẹn giờ chụp selfie,HDR,Panorama</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :L&ecirc;n đến 2.45 Ghz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 835</li>
	<li>RAM :6 GB</li>
	<li>Cảm biến :Cảm biến cạnh viền, &aacute;nh s&aacute;ng, tiệm cận, chuyển động, la b&agrave;n, con quay hồi chuyển, từ trường, v&acirc;n tay</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :128 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :2TB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :153.9 x 75.9 x 7.9 mm</li>
	<li>Trọng lượng :169g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Chế độ sạc nhanh :Quick Charge 3.0</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :HSDPA 850/900/1900/2100</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 SIM Nano (SIM 2 chung khe thẻ nhớ)</li>
	<li>Wifi :802.11 a/b/g/n/ac (2.4 &amp; 5 GHz)</li>
	<li>GPS :A-GPS, GLONASS, BeiDou</li>
	<li>Bluetooth :Bluetooth 4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :DLNA, AirPlay, Miracast</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :USB Type-C</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Midi, Lossless, MP3, WAV, WMA9, WMA, AAC, AAC+, AAC++, eAAC+</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Chức năng kh&aacute;c :K&iacute;ch hoạt th&ocirc;ng minh, tắt chu&ocirc;ng khi bắt m&aacute;y, chế độ trong t&uacute;i, &uacute;p xuống để tắt tiếng, t&ugrave;y biến m&agrave;u sắc</li>
</ul>
', N'htc', N'htc_16.png', N'Android', 147, CAST(N'2017-06-19 15:28:12.250' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone01', N'Iphone 6 Plus 16GB', N'19590000', N'<ul>
	<li>h&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :32 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1920 x 1080 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :M10</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :32 GB</li>
	<li>Bộ nhớ c&ograve;n lại :~28 GB</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM / EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
</ul>
', N'iphone', N'22_07.png', N'IOS', 2, CAST(N'2017-06-19 15:51:31.817' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone02', N'iPhone 6 Plus 64GB', N'22190000', N'<ul>
	<li>h&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :32 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1920 x 1080 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :M10</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :32 GB</li>
	<li>Bộ nhớ c&ograve;n lại :~28 GB</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM / EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
</ul>
', N'iphone', N'22_07.png', N'IOS', 11, CAST(N'2017-06-19 15:50:55.173' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'iphone03', N'iPhone 5S 16GB', N'12990000', N'<ul>
	<li>h&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :5.5 inch (1920 x 1080 pixels)</li>
	<li>Camera :Ch&iacute;nh: Dual Camera 12.0MP; Phụ: 7.0MP</li>
	<li>RAM :3 GB</li>
	<li>Bộ nhớ trong :32 GB</li>
	<li>Hệ điều h&agrave;nh :iOS</li>
	<li>Chipset :Apple A10</li>
	<li>CPU :Quad-core 2.3 GHz</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>GPU :PowerVR Series7XT Plus</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Retina</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1920 x 1080 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :3D Touch</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :K&iacute;nh oleophobic (ion cường lực)</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS)</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :7.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie ngược s&aacute;ng HDR, Tự động lấy n&eacute;t, Quay video Full HD, Nhận diện khu&ocirc;n mặt, Retina Flash</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :2.3 GHz</li>
	<li>Số nh&acirc;n :4 Nh&acirc;n</li>
	<li>Chipset :A10</li>
	<li>RAM :3 GB</li>
	<li>Chip đồ họa (GPU) :M10</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :32 GB</li>
	<li>Bộ nhớ c&ograve;n lại :~28 GB</li>
	<li>Thẻ nhớ ngo&agrave;i :Kh&ocirc;ng</li>
	<li>Hỗ trợ thẻ nhớ tối đa :Kh&ocirc;ng</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :158.2 x 77.9 x 7.3 mm</li>
	<li>Trọng lượng :188 g</li>
	<li>Khả năng chống nước :Chuẩn IP67</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :11.1 Wh (2900 mAh)</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM / EDGE (850, 900, 1800, 1900 MHz)</li>
	<li>Băng tần 3G :UMTS / HSPA + / DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :1 Sim</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :v4.2</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute; (Apple Pay)</li>
	<li>Kết nối USB :Lightning</li>
	<li>Cổng kết nối kh&aacute;c :Air Play, OTG, HDMI</li>
	<li>Cổng sạc :Lightning</li>
	<li>Jack (Input &amp; Output) :Lightning</li>
</ul>
', N'iphone', N'22_05.png', N'IOS', 13, CAST(N'2017-06-19 15:52:11.467' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia001', N'950 XL 128GB', N'14999000', N'<ul>
	<li>M&agrave;n h&igrave;nh :5.2 inch, 720 x 1280 pixels</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android&trade; 7.1.1 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :13.0 MP (f2.0)</li>
	<li>Quay phim :C&oacute;</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP (f2.0)</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :128 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :LTE Cat 4</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n</li>
	<li>GPS :A-GPS, GLONASS/ BDS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :microUSB v2.0</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
</ul>
', N'nokia', N'950xl-1.jpg', N'WindowsPhone', 0, CAST(N'2017-06-19 16:58:56.953' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia002', N'Nokia 950 XL 128GB', N'14500000', N'<ul>
	<li>M&agrave;n h&igrave;nh :5.2 inch, 720 x 1280 pixels</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android&trade; 7.1.1 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :13.0 MP (f2.0)</li>
	<li>Quay phim :C&oacute;</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP (f2.0)</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :128 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :LTE Cat 4</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n</li>
	<li>GPS :A-GPS, GLONASS/ BDS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :microUSB v2.0</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
</ul>
', N'nokia', N'950xl-1.jpg', N'WindowsPhone', 0, CAST(N'2017-06-19 16:59:36.703' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia003', N'Nokia 1020 128GB', N'7897000', N'<ul>
	<li>M&agrave;n h&igrave;nh :5.2 inch, 720 x 1280 pixels</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android&trade; 7.1.1 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :13.0 MP (f2.0)</li>
	<li>Quay phim :C&oacute;</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP (f2.0)</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :128 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :LTE Cat 4</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n</li>
	<li>GPS :A-GPS, GLONASS/ BDS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :microUSB v2.0</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
</ul>
', N'nokia', N'1020.png', N'WindowsPhone', 1, CAST(N'2017-06-19 17:00:20.477' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia004', N'Nokia 830 128GB', N'5679000', N'<ul>
	<li>M&agrave;n h&igrave;nh :5.2 inch, 720 x 1280 pixels</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android&trade; 7.1.1 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :13.0 MP (f2.0)</li>
	<li>Quay phim :C&oacute;</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP (f2.0)</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :128 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :LTE Cat 4</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n</li>
	<li>GPS :A-GPS, GLONASS/ BDS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :microUSB v2.0</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
</ul>
', N'nokia', N'830.png', N'WindowsPhone', 1, CAST(N'2017-06-19 17:01:04.870' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia005', N'Nokia 920 XL 128GB', N'8900000', N'<ul>
	<li>M&agrave;n h&igrave;nh :5.2 inch, 720 x 1280 pixels</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android&trade; 7.1.1 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :13.0 MP (f2.0)</li>
	<li>Quay phim :C&oacute;</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP (f2.0)</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :128 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :LTE Cat 4</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n</li>
	<li>GPS :A-GPS, GLONASS/ BDS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :microUSB v2.0</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
</ul>
', N'bphone', N'920.jpg', N'Khác', 0, CAST(N'2017-06-19 17:01:28.137' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia006', N'Nokia 930 128GB', N'7999000', N'<ul>
	<li>M&agrave;n h&igrave;nh :5.2 inch, 720 x 1280 pixels</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android&trade; 7.1.1 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :13.0 MP (f2.0)</li>
	<li>Quay phim :C&oacute;</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP (f2.0)</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :128 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :LTE Cat 4</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n</li>
	<li>GPS :A-GPS, GLONASS/ BDS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :microUSB v2.0</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
</ul>
', N'nokia', N'lumia-930.jpg', N'WindowsPhone', 1, CAST(N'2017-06-19 17:02:17.433' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia01', N'Nokia Lumia 930', N'10990000', N'<ul>
	<li>M&agrave;n h&igrave;nh :5.2 inch, 720 x 1280 pixels</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android&trade; 7.1.1 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :13.0 MP (f2.0)</li>
	<li>Quay phim :C&oacute;</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP (f2.0)</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :128 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :LTE Cat 4</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n</li>
	<li>GPS :A-GPS, GLONASS/ BDS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :microUSB v2.0</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
</ul>
', N'nokia', N'lumia-930.jpg', N'WindowsPhone', 2, CAST(N'2017-06-19 16:57:14.747' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'nokia02', N'Nokia Lumia 830', N'7990000', N'<ul>
	<li>M&agrave;n h&igrave;nh :5.2 inch, 720 x 1280 pixels</li>
	<li>Camera :Ch&iacute;nh: 13.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ trong :16 GB</li>
	<li>Hệ điều h&agrave;nh :Android&trade; 7.1.1 Nougat</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Chuẩn HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1280 x 720 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :13.0 MP (f2.0)</li>
	<li>Quay phim :C&oacute;</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP (f2.0)</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 430</li>
	<li>RAM :2 GB</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :16 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :128 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>Chất liệu :Hợp kim nh&ocirc;m nguy&ecirc;n khối (mặt k&iacute;nh cong 2,5D)</li>
	<li>K&iacute;ch thước :149.7 x 72.5 x 8.05 mm</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Dung lượng pin :3000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :Kh&ocirc;ng</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :C&oacute;</li>
	<li>Băng tần 4G :LTE Cat 4</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n</li>
	<li>GPS :A-GPS, GLONASS/ BDS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :microUSB v2.0</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :C&oacute;</li>
	<li>Nghe nhạc :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
</ul>
', N'nokia', N'830.png', N'WindowsPhone', 2, CAST(N'2017-06-19 16:57:29.260' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo001', N'OPPO Neo 7', N'12900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_05.png', N'Android', 1, CAST(N'2017-06-19 16:48:35.500' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo002', N'OPPO 39', N'11000000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_09.png', N'Android', 1, CAST(N'2017-06-19 16:48:16.470' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo003', N'OPPO F3 Plus 32GB', N'8900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_07.png', N'Android', 1, CAST(N'2017-06-19 16:48:04.330' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo004', N'OPPO F3 Plus 64GB', N'6780000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_05.png', N'Android', 1, CAST(N'2017-06-19 16:47:50.223' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo005', N'OPPO A37', N'12999000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_09.png', N'Android', 1, CAST(N'2017-06-19 16:47:35.900' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo006', N'OPPO F3 Plus 128GB', N'14909000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_07.png', N'Android', 1, CAST(N'2017-06-19 16:47:11.573' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo007', N'OPPO F2 Plus', N'13400500', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_03.png', N'Android', 1, CAST(N'2017-06-19 16:46:57.533' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo008', N'OPPO F3s Plus', N'13500000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_07.png', N'Android', 1, CAST(N'2017-06-19 16:46:44.013' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo009', N'OPPO F1 Plus', N'8989000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_09.png', N'Android', 2, CAST(N'2017-06-19 16:46:27.237' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo01', N'OPPO R5', N'10000000', N'<p>M&agrave;n h&igrave;nh: Full HD, 5.2&quot;, 1080 x 1920 pixels CPU: Snapdragon 615, 8 nh&acirc;n, 1.5 GHz RAM 2 GB Hệ điều h&agrave;nh: Android 4.4 (KitKat) Camera ch&iacute;nh: 13 MP, Quay phim FullHD 1080p@60fps Camera phụ: 5 MP Bộ nhớ trong: 16 GB Thẻ nhớ ngo&agrave;i: Kh&ocirc;ng Dung lượng pin: 2000 mAh</p>
', N'oppo', N'oppo_07.png', N'Android', 36, CAST(N'2017-06-19 16:49:49.990' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo010', N'OPPO F3 Plus', N'15600000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.0 inch (1080 x 1920 pixels)</li>
	<li>Camera :Ch&iacute;nh: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 6.0 (Marshmallow)</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>CPU :Octa-core</li>
	<li>GPU :Adreno 510</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :IPS LCD (Cong 2,5D)</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :Full HD</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :1080 x 1920 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Cảm ứng điện dung, đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :16.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@30fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :Dual 16.0 MP + 8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Selfie bằng cử chỉ, Camera k&eacute;p, Nhận diện khu&ocirc;n mặt, Chế độ l&agrave;m đẹp, Camera g&oacute;c rộng, HDR</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 1.95 GHz v&agrave; 4 nh&acirc;n 1.40 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Qualcomm Snapdragon 653</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Adreno 510</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Kim loại nguy&ecirc;n khối</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :163.63 x 80.8 x 7.35 mm</li>
	<li>Trọng lượng :185g</li>
	<li>Khả năng chống nước :Kh&ocirc;ng</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :4000 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :VOOC</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 2G :GSM 850 / 900 / 1800 / 1900</li>
	<li>Băng tần 3G :WCDMA 850/ 900 / 1700 / 1900 / 2100 GHz</li>
	<li>Băng tần 4G :LTE B1/2/3/4/5/7/8/20/28</li>
	<li>Hỗ trợ SIM :2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :C&oacute;, hỗ trợ A-GPS v&agrave; GLONASS</li>
	<li>Bluetooth :Bluetooth v4.1</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :Kh&ocirc;ng</li>
	<li>Kết nối USB :Micro USB</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :Micro USB</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :H.265, 3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, WMV9, Xvid</li>
	<li>Nghe nhạc :Lossless, Midi, MP3, WAV, WMA</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :Kh&ocirc;ng</li>
</ul>
', N'oppo', N'oppo_05.png', N'Android', 1, CAST(N'2017-06-19 16:46:11.033' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo02', N'OPPO Find 7a', N'8990000', N'<p>M&agrave;n h&igrave;nh: Full HD, 5.5&quot;, 1080 x 1920 pixels CPU: Qualcomm Snapdragon 801, 4 nh&acirc;n, 2.3 GHz RAM 2 GB Hệ điều h&agrave;nh: Android 4.3 (Jelly Bean) Camera ch&iacute;nh: 13 MP, Quay phim 4K 2160p@30fps Camera phụ: 5 MP Bộ nhớ trong: 16 GB Thẻ nhớ ngo&agrave;i: 128 GB Dung lượng pin: 2800 mAh</p>
', N'oppo', N'oppo_09.png', N'Android', 16, CAST(N'2017-06-19 16:49:40.847' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'oppo04', N'OPPO R1', N'6990000', N'<p>M&agrave;n h&igrave;nh: HD, 5.0&quot;, 720 x 1280 pixels CPU: Qualcomm Snapdragon 400, 4 nh&acirc;n, 1.6 GHz RAM 1 GB Hệ điều h&agrave;nh: Android 4.3 (Jelly Bean) Camera ch&iacute;nh: 13 MP, Quay phim HD 720p@30fps Camera phụ: 5 MP Bộ nhớ trong: 16 GB Thẻ nhớ ngo&agrave;i: Kh&ocirc;ng Dung lượng pin: 2410 mAh</p>
', N'oppo', N'oppo_05.png', N'Android', 28, CAST(N'2017-06-19 16:49:21.827' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung001', N'Samsung S8 Edge 256GB', N'23900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_03.png', N'Android', 2, CAST(N'2017-06-19 16:31:49.743' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung002', N'Samsung A10 128GB', N'10900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss2_03.png', N'Android', 3, CAST(N'2017-06-19 16:31:58.457' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung003', N'Samsung S6 Edge 128GB', N'11900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_18.png', N'Android', 3, CAST(N'2017-06-19 16:32:33.013' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung004', N'Samsung S7 Edge 128GB', N'12900500', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_11.png', N'Android', 3, CAST(N'2017-06-19 16:32:50.527' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung005', N'Samsung S8 64GB', N'18900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_03.png', N'Android', 2, CAST(N'2017-06-19 16:33:20.743' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung0056', N'Samsung S8 Edge', N'17900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_03.png', N'Android', 2, CAST(N'2017-06-19 16:32:58.190' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung006', N'Samsung S8 32GB', N'14900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_21.png', N'Android', 2, CAST(N'2017-06-19 16:33:11.513' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung007', N'Samsung S7 Edge', N'12900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_09.png', N'Android', 2, CAST(N'2017-06-19 16:31:41.230' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung008', N'Samsung A10', N'8980000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss2_16.png', N'Android', 2, CAST(N'2017-06-19 16:33:33.150' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung009', N'Samsung S6 64GB', N'6990000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss2_05.png', N'Android', 3, CAST(N'2017-06-19 16:32:10.727' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung010', N'Samsung s8 128GB', N'17900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_03.png', N'Android', 2, CAST(N'2017-06-19 16:33:43.730' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung011', N'Samsung S7 64GB', N'16900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_06.png', N'Android', 3, CAST(N'2017-06-19 16:32:21.627' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'samsung012', N'Samsung S8 Edge 128GB', N'21900000', N'<ul>
	<li>Th&ocirc;ng số cơ bản</li>
	<li>M&agrave;n h&igrave;nh :6.2 inch Super AMOLED (2560 x 1440 pixel)</li>
	<li>Camera :Ch&iacute;nh: 12.0 MP, Phụ: 8.0 MP</li>
	<li>RAM :4 GB</li>
	<li>Bộ nhớ trong :64 GB</li>
	<li>Hệ điều h&agrave;nh :Android 7.0 (Nougat)</li>
	<li>Chipset :Exynos 8895</li>
	<li>CPU :L&otilde;i T&aacute;m (l&otilde;i Tứ 2.3GHz + l&otilde;i Tứ 1.7GHz), 64 bit, vi xử l&yacute; 10nm</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>GPU :Mali&trade; G71</li>
</ul>

<ul>
	<li>M&agrave;n h&igrave;nh</li>
	<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh :Super AMOLED</li>
	<li>M&agrave;u m&agrave;n h&igrave;nh :16 Triệu m&agrave;u</li>
	<li>Chuẩn m&agrave;n h&igrave;nh :2k</li>
	<li>Độ ph&acirc;n giải m&agrave;n h&igrave;nh :2560 x 1440 pixels</li>
	<li>C&ocirc;ng nghệ cảm ứng :Đa điểm</li>
	<li>Mặt k&iacute;nh m&agrave;n h&igrave;nh :Corning Gorilla Glass 5</li>
	<li>Camera Sau</li>
	<li>Độ ph&acirc;n giải :Dual 12.0 MP</li>
	<li>Quay phim :Quay phim 4K 2160p@60fps</li>
	<li>Đ&egrave;n Flash :C&oacute;</li>
	<li>Chụp ảnh n&acirc;ng cao :Chụp trước lấy n&eacute;t sau, Chụp ảnh x&oacute;a ph&ocirc;ng, Chụp phơi s&aacute;ng, Tự động lấy n&eacute;t, Chạm lấy n&eacute;t, Nhận diện khu&ocirc;n mặt, HDR, Panorama, Chống rung quang học (OIS), Chế độ chụp chuy&ecirc;n nghiệp</li>
	<li>Camera Trước</li>
	<li>Video Call :C&oacute;</li>
	<li>Độ ph&acirc;n giải :8.0 MP</li>
	<li>Th&ocirc;ng tin kh&aacute;c :Camera g&oacute;c rộng, Chế độ l&agrave;m đẹp, Nhận diện khu&ocirc;n mặt, Selfie bằng cử chỉ, Flash m&agrave;n h&igrave;nh</li>
	<li>Cấu h&igrave;nh phần cứng</li>
	<li>Tốc độ CPU :4 nh&acirc;n 2.3 GHz v&agrave; 4 nh&acirc;n 1.7 GHz</li>
	<li>Số nh&acirc;n :8 Nh&acirc;n</li>
	<li>Chipset :Exynos 8895</li>
	<li>RAM :4 GB</li>
	<li>Chip đồ họa (GPU) :Mali&trade; G71</li>
	<li>Bộ nhớ &amp; Lưu trữ</li>
	<li>Danh bạ lưu trữ :Kh&ocirc;ng giới hạn</li>
	<li>ROM :64 GB</li>
	<li>Bộ nhớ c&ograve;n lại :Đang cập nhật</li>
	<li>Thẻ nhớ ngo&agrave;i :MicroSD</li>
	<li>Hỗ trợ thẻ nhớ tối đa :256 GB</li>
	<li>Thiết kế &amp; Trọng lượng</li>
	<li>Chất liệu :Nguy&ecirc;n khối viền kim loại</li>
	<li>Kiểu d&aacute;ng :Thanh (thẳng) + Cảm ứng</li>
	<li>K&iacute;ch thước :159.5 x 73.4 x 8.1mm</li>
	<li>Trọng lượng :173 g</li>
	<li>Khả năng chống nước :IP68 - bụi / chống nước hơn 1,5 m&eacute;t v&agrave; 30 ph&uacute;t</li>
	<li>Th&ocirc;ng tin pin</li>
	<li>Loại pin :Li-Ion</li>
	<li>Dung lượng pin :3500 mAh</li>
	<li>Pin c&oacute; thể th&aacute;o rời :Kh&ocirc;ng</li>
	<li>Chế độ sạc nhanh :C&oacute;</li>
	<li>Kết nối &amp; Cổng giao tiếp</li>
	<li>Băng tần 4G :C&oacute;</li>
	<li>Hỗ trợ SIM :Nano Sim</li>
	<li>Khe cắm sim :2 Khe</li>
	<li>Wifi :Wi-Fi 802.11 a/b/g/n/ac</li>
	<li>GPS :A-GPS, GLONASS, BDS</li>
	<li>Bluetooth :v5.0</li>
	<li>GPRS/EDGE :C&oacute;</li>
	<li>NFC :C&oacute;</li>
	<li>Kết nối USB :USB Type-C</li>
	<li>Cổng kết nối kh&aacute;c :Hỗ trợ OTG</li>
	<li>Cổng sạc :USB Type-C</li>
	<li>Jack (Input &amp; Output) :3.5 mm</li>
	<li>Giải tr&iacute; &amp; Ứng dụng</li>
	<li>Xem phim :MP4/DivX/XviD/H.265 player</li>
	<li>Nghe nhạc :MP3/WAV/eAAC+/Flac player</li>
	<li>Ghi &acirc;m :C&oacute;</li>
	<li>FM radio :C&oacute;</li>
	<li>Đ&egrave;n pin :C&oacute;</li>
	<li>Chức năng kh&aacute;c :Photo/video editor, Document viewer</li>
</ul>
', N'samsung', N'ss_03.png', N'Android', 3, CAST(N'2017-06-19 16:32:40.943' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony01', N'Xperia Z3', N'19590000', N'Xperia Z3', N'sony', N'S01-I01.jpg', N'Android', 1, CAST(N'2015-06-15 21:46:37.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony02', N'Sony Xperia Z3 Plus', N'19590000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57 RAM	3GB Hệ điều hành:	Android 5.0 (Lollipop) Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps Camera phụ:	5 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	128 GB Dung lượng pin:	2930mAh', N'sony', N'S01-I02.jpg', N'Android', 1, CAST(N'2015-06-15 22:34:31.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony03', N'Sony Xperia Z2', N'10990000', N'Màn hình:	Full HD, 5.2", 1080 x 1920 pixels CPU:	Qualcomm MSM8974AB, 4 nhân, 2.3 GHz RAM	3GB Hệ điều hành:	Android 4.4 (KitKat) Camera chính:	20.7 MP, Quay phim 4K 2160p@30fps Camera phụ:	2.2 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3200 mAh', N'sony', N'S02-I01.jpg', N'Android', 1, CAST(N'2015-06-15 22:37:30.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony04', N'Sony Xperia Z1', N'8990000', N'Màn hình:	Full HD, 5.0", 1080 x 1920 pixels CPU:	Qualcomm MSM8974, 4 nhân, 2.2 GHz RAM	2 GB Hệ điều hành:	Android 4.2.2 (Jelly Bean) Camera chính:	20.7 MP, Quay phim FullHD 1080p@30fps Camera phụ:	2.0 MP Bộ nhớ trong:	16 GB Thẻ nhớ ngoài:	64 GB Dung lượng pin:	3000 mAh', N'sony', N'S02-I02.jpg', N'Android', 3, CAST(N'2015-06-15 22:38:26.000' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony05', N'Sony Xperia XA1 Ultra', N'8900000', N'<p>M&agrave;n h&igrave;nh: qHD, 4.8&quot;, 540 x 960 pixels CPU: Qualcomm Snapdragon 400, 4 nh&acirc;n, 1.2 GHz RAM 1 GB Hệ điều h&agrave;nh: Android 4.4 (KitKat) Camera ch&iacute;nh: 8.0 MP, Quay phim FullHD 1080p@30fps Camera phụ: 1.1 MP Bộ nhớ trong: 8 GB Thẻ nhớ ngo&agrave;i: 32 GB Dung lượng pin: 2300 mAh</p>
', N'sony', N'sony_05.png', N'Android', 11, CAST(N'2017-06-19 16:37:55.487' AS DateTime))
INSERT [dbo].[Product] ([MaSP], [TenSP], [Gia], [MoTa], [LoaiSP], [Hinh], [HeDieuHanh], [LuotXem], [NgayDangSP]) VALUES (N'sony06', N'Sony Xperia XZs', N'24900000', N'<p>M&agrave;n h&igrave;nh: HD, 5.0&quot;, 720 x 1280 pixels CPU: Snapdragon 615, 8 nh&acirc;n, Quad-core 1.5GHz + Quad-core 1.0GHz RAM 2 GB Hệ điều h&agrave;nh: Android 5.0 (Lollipop) Camera ch&iacute;nh: 13 MP, Quay phim FullHD 1080p@30fps Camera phụ: 5 MP Bộ nhớ trong: 8 GB Thẻ nhớ ngo&agrave;i: 128 GB Dung lượng pin: 2400 mAh</p>
', N'sony', N'sony_03.png', N'Android', 3, CAST(N'2017-06-19 16:37:22.330' AS DateTime))
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
