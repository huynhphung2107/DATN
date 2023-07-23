USE [master]
GO
/****** Object:  Database [FashionBagsForWomenDB]    Script Date: 7/23/2023 9:10:14 PM ******/
CREATE DATABASE [FashionBagsForWomenDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FashionBagsForWomenDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FashionBagsForWomenDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FashionBagsForWomenDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FashionBagsForWomenDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FashionBagsForWomenDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FashionBagsForWomenDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FashionBagsForWomenDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET RECOVERY FULL 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET  MULTI_USER 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FashionBagsForWomenDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FashionBagsForWomenDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FashionBagsForWomenDB', N'ON'
GO
ALTER DATABASE [FashionBagsForWomenDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [FashionBagsForWomenDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FashionBagsForWomenDB]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [uniqueidentifier] NOT NULL,
	[staff_id] [uniqueidentifier] NULL,
	[customer_id] [uniqueidentifier] NULL,
	[voucher_id] [uniqueidentifier] NULL,
	[code] [nvarchar](50) NULL,
	[create_date] [date] NULL,
	[date_payment] [date] NULL,
	[ship_date] [date] NULL,
	[receiver_date] [date] NULL,
	[total_price] [float] NULL,
	[amount] [int] NULL,
	[price_after_voucher] [float] NULL,
	[address] [nchar](10) NULL,
	[receiver_name] [nvarchar](50) NULL,
	[ship_price] [float] NULL,
	[type] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[payment_type] [int] NULL,
	[note] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[id] [uniqueidentifier] NOT NULL,
	[bill_id] [uniqueidentifier] NULL,
	[product_detail_id] [uniqueidentifier] NULL,
	[amount] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_bill_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[buckle_type]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buckle_type](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [uniqueidentifier] NOT NULL,
	[customer_id] [uniqueidentifier] NULL,
	[code] [nvarchar](50) NULL,
	[create_time] [datetime] NULL,
	[payment_time] [datetime] NULL,
	[note] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_detail]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_detail](
	[cart_id] [uniqueidentifier] NOT NULL,
	[product_detail_id] [uniqueidentifier] NOT NULL,
	[amount] [int] NULL,
	[price] [float] NULL,
	[price_after_discount] [int] NULL,
 CONSTRAINT [PK_cart_detail] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC,
	[product_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compartment]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compartment](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [uniqueidentifier] NOT NULL,
	[address] [nvarchar](50) NULL,
	[point] [int] NULL,
	[note] [nvarchar](50) NULL,
	[phone_number] [nvarchar](20) NULL,
	[user_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_voucher]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_voucher](
	[id] [uniqueidentifier] NOT NULL,
	[customer_id] [uniqueidentifier] NOT NULL,
	[voucher_point] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_customer_voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history_shift_bill]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history_shift_bill](
	[id] [uniqueidentifier] NOT NULL,
	[bill_id] [uniqueidentifier] NULL,
	[shift_staff_id] [uniqueidentifier] NULL,
	[money] [float] NULL,
	[note] [nvarchar](50) NULL,
	[create_time] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_history_shift_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[url] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[material]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producer]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producer](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_detail]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_detail](
	[id] [uniqueidentifier] NOT NULL,
	[product_id] [uniqueidentifier] NULL,
	[color_id] [uniqueidentifier] NULL,
	[type_id] [uniqueidentifier] NULL,
	[material_id] [uniqueidentifier] NULL,
	[size_id] [uniqueidentifier] NULL,
	[brand_id] [uniqueidentifier] NULL,
	[compartment_id] [uniqueidentifier] NULL,
	[buckle_type_id] [uniqueidentifier] NOT NULL,
	[image_id] [uniqueidentifier] NULL,
	[producer_id] [uniqueidentifier] NULL,
	[import_price] [float] NULL,
	[retail_price] [float] NULL,
	[amount] [int] NULL,
	[describe] [nvarchar](50) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_product_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shift]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shift](
	[id] [uniqueidentifier] NOT NULL,
	[code] [nvarchar](50) NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
	[create_by] [nvarchar](50) NULL,
	[status] [int] NULL,
	[note] [nvarchar](50) NULL,
	[staff_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_shift] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shift_staff]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shift_staff](
	[id] [uniqueidentifier] NOT NULL,
	[code] [nvarchar](50) NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
	[create_dateTime] [date] NULL,
	[first_shift_money] [float] NULL,
	[total_shift_money] [float] NULL,
	[bill_money] [float] NULL,
	[note] [nvarchar](50) NULL,
	[status] [int] NULL,
	[shift_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_shift_staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
	[length_size] [nvarchar](100) NULL,
	[wide_size] [nvarchar](100) NULL,
	[height_size] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[id] [uniqueidentifier] NOT NULL,
	[user_id] [uniqueidentifier] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id] [uniqueidentifier] NOT NULL,
	[code] [varchar](20) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [uniqueidentifier] NOT NULL,
	[first_name] [nvarchar](30) NULL,
	[middle_name] [nvarchar](30) NULL,
	[last_name] [nvarchar](30) NULL,
	[account] [nvarchar](50) NULL,
	[password] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[status] [int] NULL,
	[gender] [bit] NULL,
	[role] [bit] NULL,
 CONSTRAINT [PK__user__3213E83FBB77C5D3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[id] [uniqueidentifier] NOT NULL,
	[code] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[discount] [int] NULL,
	[create_date] [date] NULL,
	[type] [nvarchar](50) NULL,
	[points_to_receive] [int] NULL,
	[payment_type] [nvarchar](50) NULL,
	[amount] [int] NULL,
	[start_time] [date] NULL,
	[end_time] [date] NULL,
	[note] [nvarchar](50) NULL,
	[status] [int] NULL,
	[customer_voucher_id] [uniqueidentifier] NULL,
	[voucher_bil_id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher_bill]    Script Date: 7/23/2023 9:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher_bill](
	[id] [uniqueidentifier] NOT NULL,
	[customer_id] [uniqueidentifier] NULL,
	[voucher_id] [uniqueidentifier] NULL,
	[bill_id] [uniqueidentifier] NULL,
	[before_price] [float] NULL,
	[after_price] [float] NULL,
	[discount_price] [int] NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK_voucher_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_customer]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_voucher]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_user]
GO
ALTER TABLE [dbo].[customer_voucher]  WITH CHECK ADD  CONSTRAINT [FK_customer_voucher_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_voucher] CHECK CONSTRAINT [FK_customer_voucher_customer]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_brand]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_buckle_type] FOREIGN KEY([buckle_type_id])
REFERENCES [dbo].[buckle_type] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_buckle_type]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_color] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_color]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_compartment] FOREIGN KEY([compartment_id])
REFERENCES [dbo].[compartment] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_compartment]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_image] FOREIGN KEY([image_id])
REFERENCES [dbo].[image] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_image]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_material] FOREIGN KEY([material_id])
REFERENCES [dbo].[material] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_material]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_producer] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_producer]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_product]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_size] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_size]
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[type] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_detail] CHECK CONSTRAINT [FK_product_detail_type]
GO
ALTER TABLE [dbo].[staff]  WITH CHECK ADD  CONSTRAINT [FK_staff_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[staff] CHECK CONSTRAINT [FK_staff_user]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FK_voucher_customer_voucher] FOREIGN KEY([customer_voucher_id])
REFERENCES [dbo].[customer_voucher] ([id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FK_voucher_customer_voucher]
GO
ALTER TABLE [dbo].[voucher]  WITH CHECK ADD  CONSTRAINT [FK_voucher_voucher] FOREIGN KEY([id])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[voucher] CHECK CONSTRAINT [FK_voucher_voucher]
GO
USE [master]
GO
ALTER DATABASE [FashionBagsForWomenDB] SET  READ_WRITE 
GO
