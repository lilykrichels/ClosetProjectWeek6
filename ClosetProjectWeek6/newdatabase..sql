USE [master]
GO
/****** Object:  Database [ClosetProject]    Script Date: 5/16/2017 9:47:25 AM ******/
CREATE DATABASE [ClosetProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClosetProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClosetProject.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClosetProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClosetProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ClosetProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClosetProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClosetProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClosetProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClosetProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClosetProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClosetProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClosetProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ClosetProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClosetProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClosetProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClosetProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClosetProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClosetProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClosetProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClosetProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClosetProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ClosetProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClosetProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClosetProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClosetProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClosetProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClosetProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClosetProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClosetProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClosetProject] SET  MULTI_USER 
GO
ALTER DATABASE [ClosetProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClosetProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClosetProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClosetProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ClosetProject] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ClosetProject]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/16/2017 9:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/16/2017 9:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/16/2017 9:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/16/2017 9:47:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](150) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Collar', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGp0lt13PPeQR_5i47_d2oSecchIgdzaaJ-Mwnd1U7FVo6Syst', N'Dog', N'Pink and Purple', N'All Season', N'Any occasion that calls for a stroll.')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Cone of Shame', N'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Cone_of_shame_%286199000223%29.jpg/800px-Cone_of_shame_%286199000223%29.jpg', N'Medical', N'White', N'All Season', N'After vet appointments')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Hat', N'https://s-media-cache-ak0.pinimg.com/736x/93/f8/f2/93f8f222bc3f220f1b4be70d0f5f053a.jpg', N'Cat', N'Harringbone', N'Fall/Spring/Winter', N'Casual')
INSERT [dbo].[Accessories] ([AccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Tuxedo Set', N'http://www.catster.com/wp-content/uploads/2015/06/ff07391d076f318e42d9df78862abda1.jpg', N'Cat', N'White and Red', N'Cotillion ', N'Formal')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Pink Dress', N'https://images.incuboom.com/global/images/products/large/cotton-candy-dog-dress-pink-2.jpg', N'Dog', N'Pink', N'Spring/Summer', N'Formal')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Pink Tutu', N'https://c1.staticflickr.com/1/40/121669444_2310b01f8c.jpg', N'Dog', N'Pink', N'Cotillion ', N'Formal')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Striped Cat Diaper', N'http://1.bp.blogspot.com/-dKUI4z5L-Wg/UTEzHqmR_RI/AAAAAAAAArg/kgiq0hyqaO8/s1600/PD+Outlaw022413+(2).jpg', N'Cat', N'Blue and White', N'All Seasons', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Overalls', N'http://3.bp.blogspot.com/-1QTAZhHWJQk/UlllZjHni3I/AAAAAAAABn0/qSV-ai9OoS8/s400/pudgycat.jpg', N'Cat', N'Blue', N'All Seasons', N'Work')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Red Boots', N'http://maxpixel.freegreatpicture.com/static/photo/1x/Pet-Dog-Animal-Red-Shoes-Wildlife-Photography-1607219.jpg', N'Dog', N'Red', N'Winter', N'Outdoor')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Soft Claws', N'https://c1.staticflickr.com/2/1179/1461731665_80bb72d3a0_b.jpg', N'Feline', N'Pink and Purple', N'All Season', N'Indoor')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Rubber Boots', N'http://i.dailymail.co.uk/i/pix/2014/03/06/article-2574653-1C1440B400000578-353_964x557.jpg', N'Galoshes ', N'Red', N'Spring/Summer', N'Outdoor')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Poncho', N'https://3.bp.blogspot.com/-mWkBEIChms4/UQNmlLKUh7I/AAAAAAAABf8/NKCg6uTPvnw/s1600/ponchocat.JPG', N'Cat', N'Yellow', N'Spring/Summer', N'Outdoor')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'T-Rex Costume', N'http://static.dudeiwantthat.com/img/gear/pets/raptor-dog-costume-4939.jpg', N'Dog', N'Brown', N'Halloween', N'Trick o'' Treating/Disguise ')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Hawaiian Shirt', N'https://img0.etsystatic.com/059/0/7665942/il_fullxfull.745400780_58l3.jpg', N'Dog', N'Multi-Colored', N'Summer', N'Vacation/Luau')
SET IDENTITY_INSERT [dbo].[Tops] OFF
USE [master]
GO
ALTER DATABASE [ClosetProject] SET  READ_WRITE 
GO
