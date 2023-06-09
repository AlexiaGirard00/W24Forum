USE [master]
GO
/****** Object:  Database [ForumAlexia]    Script Date: 2022-11-20 01:24:39 ******/
CREATE DATABASE [ForumAlexia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Forum1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Forum1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Forum1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Forum1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ForumAlexia] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ForumAlexia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ForumAlexia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ForumAlexia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ForumAlexia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ForumAlexia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ForumAlexia] SET ARITHABORT OFF 
GO
ALTER DATABASE [ForumAlexia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ForumAlexia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ForumAlexia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ForumAlexia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ForumAlexia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ForumAlexia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ForumAlexia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ForumAlexia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ForumAlexia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ForumAlexia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ForumAlexia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ForumAlexia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ForumAlexia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ForumAlexia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ForumAlexia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ForumAlexia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ForumAlexia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ForumAlexia] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ForumAlexia] SET  MULTI_USER 
GO
ALTER DATABASE [ForumAlexia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ForumAlexia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ForumAlexia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ForumAlexia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ForumAlexia] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ForumAlexia] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ForumAlexia] SET QUERY_STORE = OFF
GO
USE [ForumAlexia]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatNom] [nchar](25) NOT NULL,
	[CatDesc] [nchar](500) NULL,
	[CatImg] [nchar](255) NULL,
	[CatActif] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MsgID] [int] IDENTITY(1,1) NOT NULL,
	[SujetID] [int] NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[MsgActif] [bit] NOT NULL,
	[MsgTexte] [nvarchar](1000) NOT NULL,
	[MsgDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MsgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sujets]    Script Date: 2022-11-20 01:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sujets](
	[SujetID] [int] IDENTITY(1,1) NOT NULL,
	[CatID] [int] NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[SujetNom] [nvarchar](450) NOT NULL,
	[SujetDate] [datetime] NOT NULL,
	[SujetView] [int] NULL,
	[SujetActif] [bit] NOT NULL,
 CONSTRAINT [PK_Sujets] PRIMARY KEY CLUSTERED 
(
	[SujetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.9')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', N'ADMIN', N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ddb9bdd9-6725-45b7-992f-def0e798ddef', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'11c13515-7020-4697-865f-e624b6ad61f8', N'jean-remi', N'JEAN-REMI', N'jeanremi@jeanremi.com', N'JEANREMI@JEANREMI.COM', 1, N'AQAAAAEAACcQAAAAEE1YnT4wvInKKnwq8eGt6A5uoHv7/kWCGkwCzzzWdixH4hZKFqOqydwOHPRbPGpi9w==', N'WEAZ6HZGPMC63H3PWVAEXPO3IHDRQEAX', N'77c0c5b1-87ba-45e6-8672-14bb229ff2b7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'49b176b5-6507-49ff-86ed-12b2d3416c4a', N'JeanRoger', N'JEANROGER', N'jean@jean.com', N'JEAN@JEAN.COM', 1, N'AQAAAAEAACcQAAAAEH2a786gcd1y+5AjSTCQeFKeBarXqc03ohxy/hXYGTbWB/zqb2PeLf/g60TnDvOsTQ==', N'B45PBS2XPN7JNAUZDQDATYKN6TZB7T5M', N'feab7799-f9c4-408c-a70e-e2c598f7bf4b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'510f9ad3-89b5-436d-9b47-bf482ea74607', N'Simon444', N'SIMON444', N'user@user.com', N'USER@USER.COM', 0, N'AQAAAAEAACcQAAAAECNkw04F2e+UHa3r0NYeILP8nZhl2+qYHIRNXYa6pn3mdV3Ic41EREE+vOGvcRwwHg==', N'VVFPDUJKWQGKAMAC33WOQX6O2MQOHF6H', N'7f054123-b3e1-4f9f-b395-cc8c3e635e24', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57a355ec-830d-49d4-9855-de173dde0759', N'Simon7', N'SIMON7', N'simon@simon.com', N'SIMON@SIMON.COM', 1, N'AQAAAAEAACcQAAAAEEZ7znZZe0VP4P+ndzGD/h9PvQVxfjBoN5UtbwRhkwHMB94gKtfsuROVeHERONrVNg==', N'NBE6GRODNELQDETY2XOUJKBEOYVZIJHP', N'6bbe44d4-b51f-4a53-8af6-1e3403e285ab', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6ebccfec-eab1-42b1-b4a7-fea8d30ce268', N'Ginette', N'GINETTE', N'gin@gin.com', N'GIN@GIN.COM', 1, N'AQAAAAEAACcQAAAAEOJv93yW5TK/L7lxE6r6KaUIkkQcXzEHwcB9cKLAMzCFnEHhGhYPPBqpxAmHWdK5dQ==', N'AEXJXBMVZ2CZKOBSTEOLCMQOE2ZQPIYU', N'7105a8f7-6532-4aaa-aa05-bc9acfbca0dd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'81c681b1-3561-48d1-bc2d-69e05cd905d1', N'tijoe', N'TIJOE', N'tijoe@tijoe.com', N'TIJOE@TIJOE.COM', 1, N'AQAAAAEAACcQAAAAEBMxYqnmBkvxGBJHC5Pstj1Vz7mMVBINjr7AoirCXWQwIR/77V+8kkgLE9nqL27vtw==', N'AFVK5FKHHBF2YKTL6Q4L3UY76NXZXVCX', N'a1fa5342-8b4b-4263-95e6-7e9b955cb599', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'97221b18-e661-4982-ba37-8c46f6167c73', N'Simon44', N'SIMON44', N'user@user.com', N'USER@USER.COM', 0, N'AQAAAAEAACcQAAAAELdIU3tjYo+huzDn4pL/zV7AMYm7XhQJZSjt4mQRpS7CPk92+xhOEueg74Ve7HAK+Q==', N'E4GHA72XLFQHYLCCZUYW4IBI3ZIH5ST3', N'a8638c23-f830-4a8a-8efd-0e20cc10ae0b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd69720e4-72a9-4ea2-b693-c8444029bfe6', N'yaya', N'YAYA', N'yaya@yaya.com', N'YAYA@YAYA.COM', 1, N'AQAAAAEAACcQAAAAEAJUoOy427LRijoSpncenfL0JPj2yzsrCsm30utAw/c/fb1IYXgMgP5Bg7OFszPCaA==', N'LNJESEYS7ZVF7GB2VCON52H7U5O5C4GF', N'fbd4ddce-bf17-4410-b3c2-f16204333e3d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ddb9bdd9-6725-45b7-992f-def0e798ddef', N'Admin', N'ADMIN', N'admin@admin.com', N'ADMIN@ADMIN.COM', 1, N'AQAAAAEAACcQAAAAEJc026Tgrpg6/hFyfoDQwX43djOAHW4h2nglSD0t3ucZAzaBVa1Oy99n356+LO2aaw==', N'NDLY45FMMNKTMK7BJTGOJHDFHLBSAKMO', N'b5f7b543-8e63-4a53-aa55-98420a6a4975', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ed76c33b-41a1-4618-946b-b889cf9bca0d', N'Yolanda12', N'YOLANDA12', N'yo@yo.com', N'YO@YO.COM', 1, N'AQAAAAEAACcQAAAAEOaEHyKb0Zv7TBRd3t5CDP5ZRjPANpFqY8uXOwJNoRtSvY4WiD4So9rfGiocGG0sNA==', N'OD3ZLSUJUVLK5LAC4KHHCMNU7UITZRBI', N'0a8454d8-3334-4550-874f-4d592a9f0cd1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'Hector328', N'Hector328', N'HECTOR328', N'user@user.com', N'USER@USER.COM', 1, N'AQAAAAEAACcQAAAAECutVrjZTQIUAMS14X6XBFISqO7oWalmfEMyj6Gvw3sNe8ZB4xXnCiCd6Kajjswg1A==', N'5V6M5U65U2OBLHVE7454LVIOM2H2M4BY', N'6127626c-5e54-45bc-b66a-48970e478446', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (1, N'Design Dilemmas          ', N'From picking a house color to creating a functional room layout, share and receive advice.                                                                                                                                                                                                                                                                                                                                                                                                                          ', NULL, 1)
INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (2, N'Fourniture               ', N'Discuss all things furniture and explore matters like child proofing, materials and custom designs.                                                                                                                                                                                                                                                                                                                                                                                                                 ', NULL, 1)
INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (4, N'Kitchen                  ', N'Explore kitchen-related subjects with discussions on color schemes, layout, organization and more.                                                                                                                                                                                                                                                                                                                                                                                                                  ', NULL, 1)
INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (6, N'Bathroom                 ', N'Shower curtains, faucet finishes, sink brands... Anything and everything related to bathrooms.                                                                                                                                                                                                                                                                                                                                                                                                                      ', NULL, 1)
INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (10, N'Self-Build               ', N'Exchange info (and moral support) with fellow homeowners on matters like permits, floor plans, etc.                                                                                                                                                                                                                                                                                                                                                                                                                 ', NULL, 1)
INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (13, N'Other                    ', N'For the home design and gardening discussions that are just too unique for any other topic.                                                                                                                                                                                                                                                                                                                                                                                                                         ', NULL, 1)
INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (16, N'Test                     ', N'<p>test</p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', NULL, 0)
INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (17, N'Mini chair               ', N'<p><span style="font-family: tahoma, arial, helvetica, sans-serif;"><em><strong>Mini chair</strong></em></span></p>                                                                                                                                                                                                                                                                                                                                                                                                 ', NULL, 0)
INSERT [dbo].[Categories] ([CatID], [CatNom], [CatDesc], [CatImg], [CatActif]) VALUES (18, N'Test                     ', N'<p>test</p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', NULL, 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (13, 12, N'ddb9bdd9-6725-45b7-992f-def0e798ddef', 0, N'<p>helloo</p>', CAST(N'2022-11-18T18:38:08.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (14, 12, N'ddb9bdd9-6725-45b7-992f-def0e798ddef', 0, N'<p>hi</p>', CAST(N'2022-11-18T18:39:39.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (16, 23, N'57a355ec-830d-49d4-9855-de173dde0759', 1, N'<p>Get rid of unnecessary things.</p>', CAST(N'2022-11-18T19:36:54.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (17, 21, N'57a355ec-830d-49d4-9855-de173dde0759', 1, N'<p>If you&rsquo;re transitioning to living in a tiny house full-time, you&rsquo;ll want to start whittling down your possessions. Unless you want to keep everything and spend a fortune on storage !</p>
<p>&nbsp;</p>', CAST(N'2022-11-18T19:37:44.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (18, 23, N'6ebccfec-eab1-42b1-b4a7-fea8d30ce268', 1, N'<p>Duh Simon...</p>', CAST(N'2022-11-18T19:39:24.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (19, 21, N'6ebccfec-eab1-42b1-b4a7-fea8d30ce268', 1, N'<p>Visit or spend a night in a tiny house rental (or as many as you can) ! There is no better way to get a sense of what might work and what might not than by actually being inside a tiny house (especially for people who aren&rsquo;t very visual).</p>
<p>&nbsp;</p>', CAST(N'2022-11-18T19:39:57.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (21, 25, N'49b176b5-6507-49ff-86ed-12b2d3416c4a', 1, N'<p>In winter, I wouldn''t live without my heated floor! Tiny houses are sometimes poorly insulated.</p>
<p>&nbsp;</p>', CAST(N'2022-11-18T19:47:41.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (22, 26, N'ed76c33b-41a1-4618-946b-b889cf9bca0d', 1, N'<p>Build Strategic Storage! Avoid bulky storage pieces and go with floating shelves or built-in bookcases to give yourself organization options without taking up floor space. Multipurpose furniture pieces that can be both a seat or table and a storage solution are also helpful, such as a bench, trunk or ottoman.</p>
<p>&nbsp;</p>', CAST(N'2022-11-19T19:58:09.997' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (23, 25, N'ed76c33b-41a1-4618-946b-b889cf9bca0d', 1, N'<p>Nope. Costs way too much.</p>', CAST(N'2022-11-18T19:51:41.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (24, 26, N'ddb9bdd9-6725-45b7-992f-def0e798ddef', 0, N'<p>h</p>', CAST(N'2022-11-18T20:55:53.000' AS DateTime))
INSERT [dbo].[Messages] ([MsgID], [SujetID], [UserID], [MsgActif], [MsgTexte], [MsgDate]) VALUES (25, 32, N'ddb9bdd9-6725-45b7-992f-def0e798ddef', 0, N'<p>okkk</p>', CAST(N'2022-11-19T20:49:18.503' AS DateTime))
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[Sujets] ON 

INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (12, 1, N'Matinee                                                                                                                                                                                                                                                                                                                                                                                                                                                           ', N'How to transform furniture into multifunctional furniture?                                                                                                                                                                                                     ', CAST(N'2022-09-26T15:38:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (21, 10, N'81c681b1-3561-48d1-bc2d-69e05cd905d1', N'What are the things I should consider before building my first tiny house?', CAST(N'2022-11-18T19:30:47.300' AS DateTime), NULL, 1)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (22, 13, N'Hector328', N'Why tiny house are so expensive ?', CAST(N'2022-11-18T19:32:01.090' AS DateTime), NULL, 1)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (23, 1, N'Hector328', N'How can I make more more space in my tiny house ?', CAST(N'2022-11-18T19:32:39.470' AS DateTime), NULL, 1)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (24, 1, NULL, N' What kind of toilet is best for a tiny house ?', CAST(N'2022-11-18T19:37:26.197' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (25, 2, N'6ebccfec-eab1-42b1-b4a7-fea8d30ce268', N'Are heated floors really worth it?', CAST(N'2022-11-18T19:39:10.197' AS DateTime), NULL, 1)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (26, 1, NULL, N'Displaying objects in a small home', CAST(N'2022-11-18T19:48:43.807' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (27, 1, NULL, N'Test', CAST(N'2022-11-19T19:56:18.147' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (28, 1, NULL, N'Test', CAST(N'2022-11-19T20:07:57.923' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (29, 1, NULL, N'Test', CAST(N'2022-11-19T20:36:32.773' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (30, 1, NULL, N'Test', CAST(N'2022-11-19T20:43:38.330' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (31, 1, NULL, N'Test', CAST(N'2022-11-19T20:44:50.157' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (32, 1, N'ddb9bdd9-6725-45b7-992f-def0e798ddef', N'Test', CAST(N'2022-11-19T20:47:09.807' AS DateTime), NULL, 0)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (33, 1, N'11c13515-7020-4697-865f-e624b6ad61f8', N'What kind of toilet is best for a tiny house ?', CAST(N'2022-11-19T20:50:18.017' AS DateTime), NULL, 1)
INSERT [dbo].[Sujets] ([SujetID], [CatID], [UserID], [SujetNom], [SujetDate], [SujetView], [SujetActif]) VALUES (34, 1, N'6ebccfec-eab1-42b1-b4a7-fea8d30ce268', N'Displaying objects in a small home', CAST(N'2022-11-19T20:50:46.777' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Sujets] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2022-11-20 01:24:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2022-11-20 01:24:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2022-11-20 01:24:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2022-11-20 01:24:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2022-11-20 01:24:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2022-11-20 01:24:39 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2022-11-20 01:24:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_CatActif]  DEFAULT ((1)) FOR [CatActif]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_MsgActif]  DEFAULT ((1)) FOR [MsgActif]
GO
ALTER TABLE [dbo].[Sujets] ADD  CONSTRAINT [DF_Sujets_SujetActif]  DEFAULT ((1)) FOR [SujetActif]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Messages]  WITH NOCHECK ADD  CONSTRAINT [FK_Messages_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Messages] NOCHECK CONSTRAINT [FK_Messages_AspNetUsers]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Sujets] FOREIGN KEY([SujetID])
REFERENCES [dbo].[Sujets] ([SujetID])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Sujets]
GO
ALTER TABLE [dbo].[Sujets]  WITH NOCHECK ADD  CONSTRAINT [FK_Sujets_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sujets] NOCHECK CONSTRAINT [FK_Sujets_AspNetUsers]
GO
ALTER TABLE [dbo].[Sujets]  WITH CHECK ADD  CONSTRAINT [FK_Sujets_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[Categories] ([CatID])
GO
ALTER TABLE [dbo].[Sujets] CHECK CONSTRAINT [FK_Sujets_Categories]
GO
USE [master]
GO
ALTER DATABASE [ForumAlexia] SET  READ_WRITE 
GO
