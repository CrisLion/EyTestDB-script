/****** Object:  Database [ProjectDB]    Script Date: 26/08/2024 19:35:12 ******/
CREATE DATABASE [ProjectDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectDB', FILENAME = N'D:\Development\sql-server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProjectDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectDB_log', FILENAME = N'D:\Development\sql-server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProjectDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProjectDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProjectDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProjectDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectDB', N'ON'
GO
ALTER DATABASE [ProjectDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProjectDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 26/08/2024 19:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[BrandName] [nvarchar](100) NOT NULL,
	[TaxIdentification] [bigint] NOT NULL,
	[TelephoneNumber] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Website] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[AnnualBillingInDollars] [float] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26/08/2024 19:35:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](120) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 
GO
INSERT [dbo].[Suppliers] ([Id], [CompanyName], [BrandName], [TaxIdentification], [TelephoneNumber], [Email], [Website], [Country], [AnnualBillingInDollars], [UserId], [CreatedAt], [UpdatedAt]) VALUES (4, N'Totota', N'Toyata inc', 20078000014, N'9134567611', N'anonimo@mail.com', N'https://github.com/', N'Peru', 21421414, 2, CAST(N'2024-08-26T10:08:27.0305419' AS DateTime2), NULL)
GO
INSERT [dbo].[Suppliers] ([Id], [CompanyName], [BrandName], [TaxIdentification], [TelephoneNumber], [Email], [Website], [Country], [AnnualBillingInDollars], [UserId], [CreatedAt], [UpdatedAt]) VALUES (5, N'Pedro', N'nosenose', 13000000000, N'6019521325', N'test@example.us', N'https://www.upc.edu.pe/', N'Estados Unidos', 12323, 1, CAST(N'2024-08-26T13:59:11.1765834' AS DateTime2), CAST(N'2024-08-26T14:00:13.0019226' AS DateTime2))
GO
INSERT [dbo].[Suppliers] ([Id], [CompanyName], [BrandName], [TaxIdentification], [TelephoneNumber], [Email], [Website], [Country], [AnnualBillingInDollars], [UserId], [CreatedAt], [UpdatedAt]) VALUES (6, N'TechCorp', N'Techies', 13000000001, N'6019521321', N'contact@techcorp.us', N'https://www.techcorp.us/', N'Estados Unidos', 5000000, 2, CAST(N'2024-08-26T19:09:09.7367521' AS DateTime2), NULL)
GO
INSERT [dbo].[Suppliers] ([Id], [CompanyName], [BrandName], [TaxIdentification], [TelephoneNumber], [Email], [Website], [Country], [AnnualBillingInDollars], [UserId], [CreatedAt], [UpdatedAt]) VALUES (7, N'GreenFields', N'Greenies', 13000000002, N'6019521322', N'info@greenfields.us', N'https://www.greenfields.us/', N'Estados Unidos', 12000000, 2, CAST(N'2024-08-26T19:09:25.7924933' AS DateTime2), NULL)
GO
INSERT [dbo].[Suppliers] ([Id], [CompanyName], [BrandName], [TaxIdentification], [TelephoneNumber], [Email], [Website], [Country], [AnnualBillingInDollars], [UserId], [CreatedAt], [UpdatedAt]) VALUES (8, N'UrbanEats', N'UrbanChefs', 13000000003, N'6019521323', N'hello@urbaneats.us', N'https://www.urbaneats.us/', N'Estados Unidos', 8500000, 2, CAST(N'2024-08-26T19:09:41.5826198' AS DateTime2), NULL)
GO
INSERT [dbo].[Suppliers] ([Id], [CompanyName], [BrandName], [TaxIdentification], [TelephoneNumber], [Email], [Website], [Country], [AnnualBillingInDollars], [UserId], [CreatedAt], [UpdatedAt]) VALUES (9, N'BlueSky', N'BlueAviation', 13000000004, N'6019521324', N'support@bluesky.us', N'https://www.bluesky.us/', N'Estados Unidos', 7000000, 2, CAST(N'2024-08-26T19:09:54.2197688' AS DateTime2), NULL)
GO
INSERT [dbo].[Suppliers] ([Id], [CompanyName], [BrandName], [TaxIdentification], [TelephoneNumber], [Email], [Website], [Country], [AnnualBillingInDollars], [UserId], [CreatedAt], [UpdatedAt]) VALUES (10, N'EcoSolutions', N'EcoWorld', 13000000005, N'6019521325', N'sales@ecosolutions.us', N'https://www.ecosolutions.us/', N'Estados Unidos', 9200000, 2, CAST(N'2024-08-26T19:10:05.2409839' AS DateTime2), NULL)
GO
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (1, N'string', N'$2a$10$/F1TfEYFttE6YSNjWfQ7y.C82L7SV2bKXv1xACjaTNJbZ5LDjNkOO', CAST(N'2024-08-24T20:04:23.2910809' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (2, N'Cris', N'$2a$10$yjwlnUzyiY0A2oV945.df.koYcUOzCSOvoKB1XedfQB2mV8rC1D0u', CAST(N'2024-08-25T15:07:53.6717818' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (3, N'Mario', N'$2a$10$YnaWuzw.lt3EEtiKuJv5EOyq2kC1btUqTe/xfDeQ.ET07oKxiFPWq', CAST(N'2024-08-26T09:06:15.6362983' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (4, N'Carlos', N'$2a$10$J4dctUYhU8FFgwOaPDCbCOHeKbC7nYk8i3BnT3rPu5fIb9T7WJSNy', CAST(N'2024-08-26T09:14:48.8634136' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (5, N'Lola', N'$2a$10$mhczHZW2VN0xp1XA/f2gjemPuH33JGqHLDQBN/Xa6nY/jfWxDKhl.', CAST(N'2024-08-26T09:16:30.7374801' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (6, N'Mario1', N'$2a$10$Et1nFBiYTmCByolFYJupseSHcBRPr3ONG1o1UREdsGPo6eqGszrRu', CAST(N'2024-08-26T09:27:34.9707696' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (7, N'johndoe', N'$2a$10$c7fU0QkFtwP8DkeRmE0ORenoY/YnZxISzNn6WRvyc5ET/v7sXHX.K', CAST(N'2024-08-26T18:57:13.9420194' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (8, N'janesmith', N'$2a$10$hcvArA/zuu35il8NFPGCh.q950eYrceljanC26JXLVpNZ1pX7THQe', CAST(N'2024-08-26T18:57:26.2727150' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (9, N'michaelbrown', N'$2a$10$0R3eYJQf3X.Yd9rwL.p6LeYAWhFGNXDsPKF8AXPYmDjgUi6sMcWIW', CAST(N'2024-08-26T18:57:38.2530917' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (10, N'emilydavis', N'$2a$10$x5ajRAVr.dbyDwXbjVkTc.zYn9oM3Q//Dzf3m5B2CuIwYPvnuHGJ6', CAST(N'2024-08-26T18:57:47.0692066' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (11, N'williamjohnson', N'$2a$10$S6KpNIA2ZZGvmlDljXeRs.rVRdmo7q9YW2IEYIr6I/UG1kYXc2WYa', CAST(N'2024-08-26T18:59:18.4773490' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (12, N'oliviagarcia', N'$2a$10$VYr5FUOZeK5rKHjcCB8SLuuweMU1g6QUZ7nqX8meAninfPp7FTThu', CAST(N'2024-08-26T18:59:25.9892058' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (13, N'jamesmartinez', N'$2a$10$Bo.451oMIP3B6rInmVGaPeKvUB9gfq0zqv.WFTgQpQFTtXva8G6/S', CAST(N'2024-08-26T18:59:33.1996681' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (14, N'isabellawilson', N'$2a$10$gTdkTNKpxBCXEc1dAfLF1uauTSHOd.AmnGl.Z25kIMUsdlrFZlwmC', CAST(N'2024-08-26T18:59:41.0973672' AS DateTime2), NULL)
GO
INSERT [dbo].[Users] ([Id], [Username], [Password], [CreatedAt], [UpdatedAt]) VALUES (15, N'benjaminanderson', N'$2a$10$cC4iAU0F39m15REmEZU97OJZ5WIdAKbzp/MbaClhc5VEOXXCzGy/K', CAST(N'2024-08-26T18:59:49.8867766' AS DateTime2), NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Suppliers_UserId]    Script Date: 26/08/2024 19:35:12 ******/
CREATE NONCLUSTERED INDEX [IX_Suppliers_UserId] ON [dbo].[Suppliers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Users_UserId]
GO
ALTER DATABASE [ProjectDB] SET  READ_WRITE 
GO
