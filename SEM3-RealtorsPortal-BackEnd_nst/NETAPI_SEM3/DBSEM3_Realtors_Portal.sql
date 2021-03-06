USE [master]
GO
/****** Object:  Database [DoAnSem3]    Script Date: 5/5/2021 11:27:18 AM ******/
CREATE DATABASE [DoAnSem3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoAnSem3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DoAnSem3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DoAnSem3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DoAnSem3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DoAnSem3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAnSem3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAnSem3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoAnSem3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoAnSem3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoAnSem3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoAnSem3] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoAnSem3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DoAnSem3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoAnSem3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoAnSem3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoAnSem3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoAnSem3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoAnSem3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoAnSem3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoAnSem3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoAnSem3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DoAnSem3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoAnSem3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoAnSem3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoAnSem3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoAnSem3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoAnSem3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoAnSem3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoAnSem3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoAnSem3] SET  MULTI_USER 
GO
ALTER DATABASE [DoAnSem3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoAnSem3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoAnSem3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoAnSem3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DoAnSem3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DoAnSem3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DoAnSem3] SET QUERY_STORE = OFF
GO
USE [DoAnSem3]
GO
/****** Object:  Table [dbo].[Ad_Package]    Script Date: 5/5/2021 11:27:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ad_Package](
	[Package_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name_AdPackage] [text] NULL,
	[Period] [int] NULL,
	[Price] [money] NULL,
	[Description] [text] NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Ad_Package] PRIMARY KEY CLUSTERED 
(
	[Package_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [text] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[City_Id] [varchar](50) NOT NULL,
	[Name] [text] NULL,
	[Region_Id] [varchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country_Id] [varchar](50) NOT NULL,
	[Name] [text] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Contact]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Contact](
	[Contact_Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [varchar](150) NULL,
	[Customer_Phone] [varchar](50) NULL,
	[Category_Id] [int] NULL,
	[Customer_Content] [text] NULL,
 CONSTRAINT [PK_Customer_Contact] PRIMARY KEY CLUSTERED 
(
	[Contact_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Invoice_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Created] [date] NOT NULL,
	[Total] [money] NOT NULL,
	[Payment_Id] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[MemberA_Id] [int] NOT NULL,
	[MemberB_Id] [int] NOT NULL,
	[Property_Id] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Invoice_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Member_Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Id] [int] NULL,
	[Username] [varchar](250) NOT NULL,
	[Password] [varchar](250) NULL,
	[FullName] [varchar](250) NULL,
	[Email] [varchar](250) NULL,
	[Status] [bit] NOT NULL,
	[Photo] [varchar](250) NULL,
	[Birthday] [date] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Member_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member_Package_Detail]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Package_Detail](
	[Member_Id] [int] NOT NULL,
	[Package_Id] [int] NOT NULL,
	[Payment_Id] [int] NULL,
	[Expiry_Date] [date] NULL,
 CONSTRAINT [PK_Account_Package_Detail] PRIMARY KEY CLUSTERED 
(
	[Member_Id] ASC,
	[Package_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Payment_Id] [int] IDENTITY(1,1) NOT NULL,
	[Payment_Method] [varchar](50) NULL,
	[Total_Price] [text] NULL,
	[Paypal_Card] [varchar](50) NULL,
	[Member_Id] [int] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Payment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[Property_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [text] NULL,
	[City_Id] [varchar](50) NULL,
	[Price] [money] NULL,
	[Promotion] [float] NULL,
	[Room_Number] [int] NULL,
	[Area] [float] NULL,
	[Status_Id] [int] NULL,
	[Description] [text] NULL,
	[Category_Id] [int] NOT NULL,
	[Member_Id] [int] NULL,
 CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED 
(
	[Property_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property_Image]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property_Image](
	[Image_Id] [int] IDENTITY(1,1) NOT NULL,
	[Property_Id] [int] NULL,
	[Path] [varchar](250) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Property_Image] PRIMARY KEY CLUSTERED 
(
	[Image_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Region_Id] [varchar](50) NOT NULL,
	[Name] [text] NULL,
	[Country_Id] [varchar](50) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Region_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Setting_Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[Setting_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 5/5/2021 11:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Region] FOREIGN KEY([Region_Id])
REFERENCES [dbo].[Region] ([Region_Id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Region]
GO
ALTER TABLE [dbo].[Customer_Contact]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Contact_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Category_Id])
GO
ALTER TABLE [dbo].[Customer_Contact] CHECK CONSTRAINT [FK_Customer_Contact_Category]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Member] FOREIGN KEY([MemberA_Id])
REFERENCES [dbo].[Member] ([Member_Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Member]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Member1] FOREIGN KEY([MemberB_Id])
REFERENCES [dbo].[Member] ([Member_Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Member1]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Payment] FOREIGN KEY([Payment_Id])
REFERENCES [dbo].[Payment] ([Payment_Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Payment]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Property] FOREIGN KEY([Property_Id])
REFERENCES [dbo].[Property] ([Property_Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Property]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Role] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Role] ([Role_Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Role]
GO
ALTER TABLE [dbo].[Member_Package_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Account_Package_Detail_Account] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Member] ([Member_Id])
GO
ALTER TABLE [dbo].[Member_Package_Detail] CHECK CONSTRAINT [FK_Account_Package_Detail_Account]
GO
ALTER TABLE [dbo].[Member_Package_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Account_Package_Detail_Ad_Package] FOREIGN KEY([Package_Id])
REFERENCES [dbo].[Ad_Package] ([Package_Id])
GO
ALTER TABLE [dbo].[Member_Package_Detail] CHECK CONSTRAINT [FK_Account_Package_Detail_Ad_Package]
GO
ALTER TABLE [dbo].[Member_Package_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Member_Package_Detail_Payment] FOREIGN KEY([Payment_Id])
REFERENCES [dbo].[Payment] ([Payment_Id])
GO
ALTER TABLE [dbo].[Member_Package_Detail] CHECK CONSTRAINT [FK_Member_Package_Detail_Payment]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Category_Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Category]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_City] FOREIGN KEY([City_Id])
REFERENCES [dbo].[City] ([City_Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_City]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Member] FOREIGN KEY([Member_Id])
REFERENCES [dbo].[Member] ([Member_Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Member]
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Property_Status] FOREIGN KEY([Status_Id])
REFERENCES [dbo].[Status] ([Status_Id])
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Property_Status]
GO
ALTER TABLE [dbo].[Property_Image]  WITH CHECK ADD  CONSTRAINT [FK_Property_Image_Property] FOREIGN KEY([Property_Id])
REFERENCES [dbo].[Property] ([Property_Id])
GO
ALTER TABLE [dbo].[Property_Image] CHECK CONSTRAINT [FK_Property_Image_Property]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Country] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Country] ([Country_Id])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Country]
GO
USE [master]
GO
ALTER DATABASE [DoAnSem3] SET  READ_WRITE 
GO
