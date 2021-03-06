USE [master]
GO
/****** Object:  Database [CSMS.DB.System]    Script Date: 2/27/2020 3:20:39 PM ******/
CREATE DATABASE [CSMS.DB.System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSMS.DB.System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CSMS.DB.System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CSMS.DB.System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CSMS.DB.System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CSMS.DB.System] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSMS.DB.System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSMS.DB.System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSMS.DB.System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSMS.DB.System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSMS.DB.System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSMS.DB.System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET RECOVERY FULL 
GO
ALTER DATABASE [CSMS.DB.System] SET  MULTI_USER 
GO
ALTER DATABASE [CSMS.DB.System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSMS.DB.System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSMS.DB.System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSMS.DB.System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CSMS.DB.System] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CSMS.DB.System', N'ON'
GO
ALTER DATABASE [CSMS.DB.System] SET QUERY_STORE = OFF
GO
USE [CSMS.DB.System]
GO
/****** Object:  Table [dbo].[CSMS_Branch]    Script Date: 2/27/2020 3:20:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSMS_Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Enabled] [bit] NULL,
	[Add_Country] [nvarchar](50) NULL,
	[Add_Province] [nvarchar](100) NULL,
	[Add_District] [nvarchar](100) NULL,
	[Add_Ward] [nvarchar](100) NULL,
	[Add_Detail] [nvarchar](200) NULL,
	[Deleted] [bit] NOT NULL,
 CONSTRAINT [PK_CSMS_Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CSMS_Branch_PhoneNumber]    Script Date: 2/27/2020 3:20:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSMS_Branch_PhoneNumber](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BranchId] [int] NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CSMS_Branch_PhoneNumber] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CSMS_Branch] ON 

INSERT [dbo].[CSMS_Branch] ([Id], [ShortName], [Name], [Description], [Enabled], [Add_Country], [Add_Province], [Add_District], [Add_Ward], [Add_Detail], [Deleted]) VALUES (1, N'CN001', N'Panda Võ Văn Ngân', N'des.', 1, NULL, N'Hồ Chí Minh', N'Thủ Đức', N'Linh Chiểu', N'01 Võ Văn Ngân', 0)
INSERT [dbo].[CSMS_Branch] ([Id], [ShortName], [Name], [Description], [Enabled], [Add_Country], [Add_Province], [Add_District], [Add_Ward], [Add_Detail], [Deleted]) VALUES (2, N'CN002', N'Panda Lê Văn Khương', NULL, 1, NULL, N'Hồ Chí Minh', N'Quận 12', N'Hiệp Thành', N'167/4 Lê Văn Khương', 0)
INSERT [dbo].[CSMS_Branch] ([Id], [ShortName], [Name], [Description], [Enabled], [Add_Country], [Add_Province], [Add_District], [Add_Ward], [Add_Detail], [Deleted]) VALUES (3, N'CN003', N'Panda Trần Duy Hưng', NULL, 1, NULL, N'Hồ Chí Minh', N'Quận 1', N'Phạm Ngũ Lão', N'98 Trần Duy Hưng', 0)
INSERT [dbo].[CSMS_Branch] ([Id], [ShortName], [Name], [Description], [Enabled], [Add_Country], [Add_Province], [Add_District], [Add_Ward], [Add_Detail], [Deleted]) VALUES (4, N'CN004', N'Panda Trường Chinh', NULL, 1, NULL, N'Hồ Chí Minh', N'Tân Bình', N'Phường 8', N'165 Trường Chinh', 0)
INSERT [dbo].[CSMS_Branch] ([Id], [ShortName], [Name], [Description], [Enabled], [Add_Country], [Add_Province], [Add_District], [Add_Ward], [Add_Detail], [Deleted]) VALUES (5, N'CN005', N'Panda Hàng Xanh', NULL, 1, NULL, N'Hồ Chí Minh', N'Bình Thạnh', N'Phường 21', N'02 Hàng Xanh', 0)
INSERT [dbo].[CSMS_Branch] ([Id], [ShortName], [Name], [Description], [Enabled], [Add_Country], [Add_Province], [Add_District], [Add_Ward], [Add_Detail], [Deleted]) VALUES (6, N'CN006', N'Panda Aeon Tân Phú', NULL, 1, NULL, N'Hồ Chí Minh', N'Tân Phú', N'Tân Quý', N'12 Tòa nhà Aeon Mall', 0)
SET IDENTITY_INSERT [dbo].[CSMS_Branch] OFF
ALTER TABLE [dbo].[CSMS_Branch] ADD  CONSTRAINT [DF_CSMS_Branch_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[CSMS_Branch_PhoneNumber]  WITH CHECK ADD  CONSTRAINT [FK_CSMS_Branch_PhoneNumber_CSMS_Branch] FOREIGN KEY([BranchId])
REFERENCES [dbo].[CSMS_Branch] ([Id])
GO
ALTER TABLE [dbo].[CSMS_Branch_PhoneNumber] CHECK CONSTRAINT [FK_CSMS_Branch_PhoneNumber_CSMS_Branch]
GO
USE [master]
GO
ALTER DATABASE [CSMS.DB.System] SET  READ_WRITE 
GO
