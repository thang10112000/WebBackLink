USE [master]
GO
/****** Object:  Database [affiliate_marketing_shop]    Script Date: 10/6/2021 8:00:00 PM ******/
CREATE DATABASE [affiliate_marketing_shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'affiliate_marketing_shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\affiliate_marketing_shop.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'affiliate_marketing_shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\affiliate_marketing_shop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [affiliate_marketing_shop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [affiliate_marketing_shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [affiliate_marketing_shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [affiliate_marketing_shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [affiliate_marketing_shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [affiliate_marketing_shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [affiliate_marketing_shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [affiliate_marketing_shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [affiliate_marketing_shop] SET  MULTI_USER 
GO
ALTER DATABASE [affiliate_marketing_shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [affiliate_marketing_shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [affiliate_marketing_shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [affiliate_marketing_shop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [affiliate_marketing_shop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [int] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](10) NULL,
	[Link] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [int] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/6/2021 8:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount_1]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price_1]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount_1]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_DisplayOrder_1]  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
USE [master]
GO
ALTER DATABASE [affiliate_marketing_shop] SET  READ_WRITE 
GO
