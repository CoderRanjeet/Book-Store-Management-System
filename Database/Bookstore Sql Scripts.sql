USE [master]
GO
/****** Object:  Database [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF]    Script Date: 12-05-2024 03:36:12 PM ******/
CREATE DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookStore', FILENAME = N'D:\Projects\Navi Project\PROG8750-23F-Sec7 Group-9\BookStore\BookStore\App_Data\BookStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookStore_log', FILENAME = N'D:\Projects\Navi Project\PROG8750-23F-Sec7 Group-9\BookStore\BookStore\App_Data\BookStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET QUERY_STORE = OFF
GO
USE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF]
GO
/****** Object:  Table [dbo].[TblCategory]    Script Date: 12-05-2024 03:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cat_Name] [nvarchar](50) NULL,
	[Book_Name] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[Description] [nvarchar](max) NULL,
	[Book_Image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCustomers]    Script Date: 12-05-2024 03:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCustomers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo] [varchar](20) NULL,
	[Address] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UserEmail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblOrders]    Script Date: 12-05-2024 03:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOrders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](150) NULL,
	[Qty] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Total] [decimal](18, 2) NULL,
	[CustomerId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[OrderStatus] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUsers]    Script Date: 12-05-2024 03:36:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUsers](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo] [varchar](20) NULL,
	[Address] [varchar](50) NULL,
	[Password] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblCategory] ON 

INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (1, N'Fantasy', N'Harry Potter', CAST(100.00 AS Decimal(18, 2)), N'It is a story about Harry Potter, an orphan brought up by his aunt and uncle because his parents were killed when he was a baby. Harry is unloved by his uncle and aunt but everything changes when he is invited to join Hogwarts School of Witchcraft and Wizardry and he finds out he''s a wizard.', N'Images/Harry_Potter.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (2, N'Fantasy', N'The Lord of the Rings', CAST(80.00 AS Decimal(18, 2)), N'The Lord of the Rings is the saga of a group of sometimes reluctant heroes who set forth to save their world from consummate evil. Its many worlds and creatures were drawn from Tolkien''s extensive knowledge of philology and folklore.', N'Images/The_Lord_of_the_Rings_book.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (3, N'Fantasy', N'A Song of Ice and Fire', CAST(120.00 AS Decimal(18, 2)), N'A Song of Ice and Fire takes place in a fictional world in which seasons last for years and end unpredictably. Nearly three centuries before the events of the first novel, the Seven Kingdoms of Westeros were united under the Targaryen dynasty, establishing military supremacy through their control of dragons.', N'Images/A_Song_of_Ice_and_Fire.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (4, N'Fantasy', N'Mistborne', CAST(200.00 AS Decimal(18, 2)), N'The first Mistborn trilogy chronicles the efforts of a secret group of Allomancers who attempt to overthrow a dystopian empire and establish themselves in a world covered by ash.', N'Images/Mistborne.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (5, N'Science Friction', N'Dune', CAST(150.00 AS Decimal(18, 2)), N'Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world where the only thing of value is the “spice” melange, a drug capable of extending life and enhancing consciousness.', N'Images/Dune.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (6, N'Science Friction', N'1984 By George Orwell', CAST(230.00 AS Decimal(18, 2)), N'The book is set in 1984 in Oceania, one of three perpetually warring totalitarian states (the other two are Eurasia and Eastasia). Oceania is governed by the all-controlling Party, which has brainwashed the population into unthinking obedience to its leader, Big Brother.', N'Images/1984.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (7, N'Science Friction', N'Neuromancer By William Gibson', CAST(130.00 AS Decimal(18, 2)), N'It was Gibson''s debut novel and the beginning of the Sprawl trilogy. Set in the future, the novel follows Henry Case, a washed-up hacker hired for one last job, which brings him in contact with a powerful artificial intelligence.', N'Images/Neuromancer.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (8, N'Science Friction', N'Foundation', CAST(140.00 AS Decimal(18, 2)), N'Foundation, novel by Isaac Asimov, first published in 1951. It was the first volume of his famed Foundation trilogy (1951–53), describing the collapse and rebirth of a vast interstellar empire in the universe of the future.', N'Images/Foundation.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (9, N'Science Friction', N'Children of Time', CAST(120.00 AS Decimal(18, 2)), N'The last remnants of the human race left a dying Earth, desperate to find a new home among the stars. Following in the footsteps of their ancestors, they discover the greatest treasure of the past age', N'Images/Children_of_Time.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (10, N'Romance', N'Pride and Prejudice', CAST(110.00 AS Decimal(18, 2)), N'Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy, a rich aristocratic landowner.', N'Images/Pride_and_Prejudice.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (11, N'Romance', N'Outlander', CAST(80.00 AS Decimal(18, 2)), N'The Outlander series focuses on 20th-century British nurse Claire Randall, who time travels to 18th-century Scotland and finds adventure and romance with the dashing Highland warrior Jamie Fraser.', N'Images/Outlander.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (12, N'Romance', N'The Notebook', CAST(155.00 AS Decimal(18, 2)), N'The Notebook is an achingly tender story about the enduring power of love, a story of miracles that will stay with you forever. Set amid the austere beauty of coastal North Carolina in 1946, The Notebook begins with the story of Noah Calhoun.', N'Images/The_Notebook.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (13, N'Romance', N'Beach Read', CAST(75.00 AS Decimal(18, 2)), N'A romance writer who no longer believes in love and a literary writer stuck in a rut engage in a summer-long challenge that may just upend everything they believe about happily ever afters. Augustus Everett is an acclaimed author of literary fiction. January Andrews writes bestselling romance.', N'Images/Beach_Read.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (14, N'Horror', N'Dracula', CAST(150.00 AS Decimal(18, 2)), N'Dracula is a novel by Bram Stoker, published in 1897. An epistolary novel, the narrative is related through letters, diary entries, and newspaper articles. It has no single protagonist, but opens with solicitor Jonathan Harker taking a business trip to stay at the castle of a Transylvanian nobleman, Count Dracula.', N'Images/Dracula.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (15, N'Horror', N'House of Leaves', CAST(135.00 AS Decimal(18, 2)), N'House of Leaves is the debut novel by American author Mark Z. Danielewski, published in March 2000 by Pantheon Books. A bestseller, it has been translated into a number of languages, and is followed by a companion piece, The Whalestoe Letters.', N'Images/House_of_Leaves.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (16, N'Horror', N'Ring', CAST(180.00 AS Decimal(18, 2)), N'Ring is a Japanese mystery horror novel by Koji Suzuki first published in 1991, and set in modern-day Japan. The novel was the first in the Ring novel series, and the first of a trilogy, along with two sequels: Spiral and Loop. ', N'Images/Ring.png')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (17, N'Horror', N'The Haunting of Hill House.', CAST(165.00 AS Decimal(18, 2)), N'The Haunting of Hill House is a 1959 gothic horror novel by American author Shirley Jackson. A finalist for the National Book Award and considered one of the best literary ghost stories published during the 20th century, it has been made into two feature films and a play, and is the basis of a Netflix series.', N'Images/The_Haunting_of_Hill_House.jpg')
INSERT [dbo].[TblCategory] ([Id], [Cat_Name], [Book_Name], [Price], [Description], [Book_Image]) VALUES (18, N'Science', N'The Magic Tree.', CAST(150.00 AS Decimal(18, 2)), N'A magical story of personal transformation through positive affirmations. ', N'Images/download.jpeg')
SET IDENTITY_INSERT [dbo].[TblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[TblCustomers] ON 

INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (1, N'PremLal', N'prem@gmail.com', N'9876543212', N'chandrapur', CAST(N'2023-11-05T00:10:39.423' AS DateTime), NULL)
INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (2, N'PremLal', N'prem@gmail.com', N'9876543212', N'chandrapur', CAST(N'2023-11-05T00:13:02.727' AS DateTime), NULL)
INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (3, N'PremLal', N'prem@gmail.com', N'9876543212', N'chandrapur', CAST(N'2023-11-05T10:10:47.410' AS DateTime), NULL)
INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (4, N'PremLal', N'prem@gmail.com', N'9876543212', N'chandrapur', CAST(N'2023-11-05T10:13:08.177' AS DateTime), NULL)
INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (5, N'Prempal', N'prem@gmail.com', N'7476777576', N'chandrapur', CAST(N'2023-11-05T10:53:18.863' AS DateTime), N'navdeepbains@gmail.com')
INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (6, N'PremLal', N'prem@gmail.com', N'9876543212', N'chandrapur', CAST(N'2023-11-24T10:02:21.097' AS DateTime), N'navdeepbains@gmail.com')
INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (7, N'PremLal', N'prem@gmail.com', N'9876543212', N'chandrapur', CAST(N'2023-11-24T10:06:39.933' AS DateTime), N'navdeepbains@gmail.com')
INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (8, N'Rahul', N'prem@gmail.com', N'9876543210', N'chandrapur', CAST(N'2023-12-19T09:18:01.493' AS DateTime), N'navdeepbains@gmail.com')
INSERT [dbo].[TblCustomers] ([CustomerId], [Name], [Email], [MobileNo], [Address], [CreatedDate], [UserEmail]) VALUES (9, N'Ranjeet', N'abc@Gmail.com', N'9845353445', N'Nagpur', CAST(N'2024-05-12T15:31:06.383' AS DateTime), N'rajzade@gmail.com')
SET IDENTITY_INSERT [dbo].[TblCustomers] OFF
GO
SET IDENTITY_INSERT [dbo].[TblOrders] ON 

INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (1, N'The Lord of the Rings', 1, CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-05T00:10:39.430' AS DateTime), N'Shippped')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (2, N'The Lord of the Rings', 1, CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 2, CAST(N'2023-11-05T00:13:02.730' AS DateTime), N'Returned')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (3, N'Foundation', 2, CAST(140.00 AS Decimal(18, 2)), CAST(280.00 AS Decimal(18, 2)), 2, CAST(N'2023-11-05T00:13:02.733' AS DateTime), N'Pending')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (4, N'Outlander', 1, CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 2, CAST(N'2023-11-05T00:13:02.740' AS DateTime), N'Shippped')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (5, N'The Lord of the Rings', 1, CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 3, CAST(N'2023-11-05T10:10:48.970' AS DateTime), N'Returned')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (6, N'The Lord of the Rings', 1, CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 4, CAST(N'2023-11-05T10:13:08.193' AS DateTime), N'Shippped')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (7, N'The Lord of the Rings', 1, CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 5, CAST(N'2023-11-05T10:53:27.427' AS DateTime), N'Returned')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (9, N'The Lord of the Rings', 1, CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 6, CAST(N'2023-11-24T10:04:31.147' AS DateTime), N'Processing')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (10, N'Dune', 1, CAST(150.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 7, CAST(N'2023-11-24T10:06:47.930' AS DateTime), N'Processing')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (11, N'The Lord of the Rings', 1, CAST(80.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 8, CAST(N'2023-12-19T09:18:01.507' AS DateTime), N'Processing')
INSERT [dbo].[TblOrders] ([OrderId], [BookName], [Qty], [Price], [Total], [CustomerId], [CreatedDate], [OrderStatus]) VALUES (12, N'Dune', 2, CAST(150.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 9, CAST(N'2024-05-12T15:31:06.397' AS DateTime), N'Processing')
SET IDENTITY_INSERT [dbo].[TblOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[TblUsers] ON 

INSERT [dbo].[TblUsers] ([UserId], [Name], [Email], [MobileNo], [Address], [Password], [CreatedDate]) VALUES (1004, N'Navdeep', N'navdeepbains@gmail.com', N'4372597677', N'24 Clydesdale circle', N'123', CAST(N'2023-10-06T16:22:50.503' AS DateTime))
INSERT [dbo].[TblUsers] ([UserId], [Name], [Email], [MobileNo], [Address], [Password], [CreatedDate]) VALUES (1005, N'raj', N'rajzade@gmail.com', N'9876543222', N'Nagpur', N'123', CAST(N'2023-11-14T09:01:47.757' AS DateTime))
INSERT [dbo].[TblUsers] ([UserId], [Name], [Email], [MobileNo], [Address], [Password], [CreatedDate]) VALUES (1006, N'admin', N'admin@gmail.com', N'8755432664', N'Nagpur', N'123', CAST(N'2023-11-14T09:01:47.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblUsers] OFF
GO
USE [master]
GO
ALTER DATABASE [D:\PROJECTS\NAVI PROJECT\PROG8750-23F-SEC7 GROUP-9\BOOKSTORE\BOOKSTORE\APP_DATA\BOOKSTORE.MDF] SET  READ_WRITE 
GO
