USE [FashionBagsForWomenDB]
GO
/****** Object:  Table [dbo].[balo]    Script Date: 7/24/2023 11:39:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[balo](
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
/****** Object:  Table [dbo].[balo_detail]    Script Date: 7/24/2023 11:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[balo_detail](
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
/****** Object:  Table [dbo].[bill]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[bill_detail]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[brand]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[buckle_type]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[cart]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[cart_detail]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[color]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[compartment]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[customer_voucher]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[history_shift_bill]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[image]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[material]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[producer]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[shift]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[shift_staff]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[size]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[staff]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[type]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[user]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[voucher]    Script Date: 7/24/2023 11:39:47 AM ******/
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
/****** Object:  Table [dbo].[voucher_bill]    Script Date: 7/24/2023 11:39:47 AM ******/
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
ALTER TABLE [dbo].[balo] ADD  CONSTRAINT [DF_balo_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[balo_detail] ADD  CONSTRAINT [DF_balo_detail_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[bill] ADD  CONSTRAINT [DF_bill_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[bill_detail] ADD  CONSTRAINT [DF_bill_detail_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[brand] ADD  CONSTRAINT [DF_brand_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[buckle_type] ADD  CONSTRAINT [DF_buckle_type_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[cart] ADD  CONSTRAINT [DF_cart_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[cart_detail] ADD  CONSTRAINT [DF_cart_detail_cart_id]  DEFAULT (newid()) FOR [cart_id]
GO
ALTER TABLE [dbo].[color] ADD  CONSTRAINT [DF_color_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[compartment] ADD  CONSTRAINT [DF_compartment_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[customer] ADD  CONSTRAINT [DF_customer_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[customer_voucher] ADD  CONSTRAINT [DF_customer_voucher_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[history_shift_bill] ADD  CONSTRAINT [DF_history_shift_bill_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[image] ADD  CONSTRAINT [DF_image_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[material] ADD  CONSTRAINT [DF_material_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[producer] ADD  CONSTRAINT [DF_producer_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[shift] ADD  CONSTRAINT [DF_shift_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[shift_staff] ADD  CONSTRAINT [DF_shift_staff_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[size] ADD  CONSTRAINT [DF_size_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[staff] ADD  CONSTRAINT [DF_staff_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[type] ADD  CONSTRAINT [DF_type_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_user_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[voucher] ADD  CONSTRAINT [DF_voucher_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[voucher_bill] ADD  CONSTRAINT [DF_voucher_bill_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_brand]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_buckle_type] FOREIGN KEY([buckle_type_id])
REFERENCES [dbo].[buckle_type] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_buckle_type]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_color] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_color]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_compartment] FOREIGN KEY([compartment_id])
REFERENCES [dbo].[compartment] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_compartment]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_image] FOREIGN KEY([image_id])
REFERENCES [dbo].[image] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_image]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_material] FOREIGN KEY([material_id])
REFERENCES [dbo].[material] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_material]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_producer] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_producer]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[balo] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_product]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_size] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_size]
GO
ALTER TABLE [dbo].[balo_detail]  WITH CHECK ADD  CONSTRAINT [FK_product_detail_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[type] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[balo_detail] CHECK CONSTRAINT [FK_product_detail_type]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_customer]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_staff]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_voucher]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_balo_detail] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[balo_detail] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_balo_detail]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_bill]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_customer]
GO
ALTER TABLE [dbo].[cart_detail]  WITH CHECK ADD  CONSTRAINT [FK_cart_detail_balo_detail] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[balo_detail] ([id])
GO
ALTER TABLE [dbo].[cart_detail] CHECK CONSTRAINT [FK_cart_detail_balo_detail]
GO
ALTER TABLE [dbo].[cart_detail]  WITH CHECK ADD  CONSTRAINT [FK_cart_detail_cart] FOREIGN KEY([cart_id])
REFERENCES [dbo].[cart] ([id])
GO
ALTER TABLE [dbo].[cart_detail] CHECK CONSTRAINT [FK_cart_detail_cart]
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
ALTER TABLE [dbo].[history_shift_bill]  WITH CHECK ADD  CONSTRAINT [FK_history_shift_bill_shift_staff] FOREIGN KEY([shift_staff_id])
REFERENCES [dbo].[shift_staff] ([id])
GO
ALTER TABLE [dbo].[history_shift_bill] CHECK CONSTRAINT [FK_history_shift_bill_shift_staff]
GO
ALTER TABLE [dbo].[shift]  WITH CHECK ADD  CONSTRAINT [FK_shift_staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staff] ([id])
GO
ALTER TABLE [dbo].[shift] CHECK CONSTRAINT [FK_shift_staff]
GO
ALTER TABLE [dbo].[shift_staff]  WITH CHECK ADD  CONSTRAINT [FK_shift_staff_shift] FOREIGN KEY([shift_id])
REFERENCES [dbo].[shift] ([id])
GO
ALTER TABLE [dbo].[shift_staff] CHECK CONSTRAINT [FK_shift_staff_shift]
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
ALTER TABLE [dbo].[voucher_bill]  WITH CHECK ADD  CONSTRAINT [FK_voucher_bill_bill] FOREIGN KEY([bill_id])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[voucher_bill] CHECK CONSTRAINT [FK_voucher_bill_bill]
GO
ALTER TABLE [dbo].[voucher_bill]  WITH CHECK ADD  CONSTRAINT [FK_voucher_bill_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[voucher_bill] CHECK CONSTRAINT [FK_voucher_bill_customer]
GO
ALTER TABLE [dbo].[voucher_bill]  WITH CHECK ADD  CONSTRAINT [FK_voucher_bill_voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[voucher] ([id])
GO
ALTER TABLE [dbo].[voucher_bill] CHECK CONSTRAINT [FK_voucher_bill_voucher]
GO
