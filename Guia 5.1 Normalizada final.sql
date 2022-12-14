USE [master]
GO
/****** Object:  Database [Guia_5_1]    Script Date: 08/11/2022 09:45:12 a. m. ******/
CREATE DATABASE [Guia_5_1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Guia_5_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Guia_5_1.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Guia_5_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Guia_5_1_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Guia_5_1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Guia_5_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Guia_5_1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Guia_5_1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Guia_5_1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Guia_5_1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Guia_5_1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Guia_5_1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Guia_5_1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Guia_5_1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Guia_5_1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Guia_5_1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Guia_5_1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Guia_5_1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Guia_5_1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Guia_5_1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Guia_5_1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Guia_5_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Guia_5_1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Guia_5_1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Guia_5_1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Guia_5_1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Guia_5_1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Guia_5_1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Guia_5_1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Guia_5_1] SET  MULTI_USER 
GO
ALTER DATABASE [Guia_5_1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Guia_5_1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Guia_5_1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Guia_5_1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Guia_5_1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Guia_5_1]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 08/11/2022 09:45:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cedula] [varchar](50) NOT NULL,
	[Nombre_cliente] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 08/11/2022 09:45:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Factura](
	[No_fac] [varchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[cedula] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[No_fac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 08/11/2022 09:45:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[Codigo] [varchar](50) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Vr_Unitario] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 08/11/2022 09:45:12 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venta](
	[No_fac] [varchar](50) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[No_fac] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([Cedula], [Nombre_cliente], [Direccion], [Ciudad], [Telefono]) VALUES (N'8000050000', N'Jose Perez Prieto', N'Carrera 7 No 50-50', N'Bogota DC', N'3555555')
INSERT [dbo].[Factura] ([No_fac], [fecha], [cedula]) VALUES (N'5656801', CAST(N'2004-01-20' AS Date), N'8000050000')
INSERT [dbo].[Producto] ([Codigo], [Categoria], [Descripcion], [Vr_Unitario]) VALUES (N'18888', N'Unidades', N'CDROM LG 52X', 70000)
INSERT [dbo].[Producto] ([Codigo], [Categoria], [Descripcion], [Vr_Unitario]) VALUES (N'198999', N'Unidades', N'Quemador LG 5', 150000)
INSERT [dbo].[Producto] ([Codigo], [Categoria], [Descripcion], [Vr_Unitario]) VALUES (N'51238 ', N'Memorias', N'Dim PC133 256', 115000)
INSERT [dbo].[Producto] ([Codigo], [Categoria], [Descripcion], [Vr_Unitario]) VALUES (N'589898', N'Motherboards', N'MSI KM266 ATA', 220000)
INSERT [dbo].[Producto] ([Codigo], [Categoria], [Descripcion], [Vr_Unitario]) VALUES (N'638888', N'Perifericos', N'Mouse Ganius', 13000)
INSERT [dbo].[Producto] ([Codigo], [Categoria], [Descripcion], [Vr_Unitario]) VALUES (N'68989', N'Monitores', N'Samsung Viama', 380000)
INSERT [dbo].[Producto] ([Codigo], [Categoria], [Descripcion], [Vr_Unitario]) VALUES (N'898666', N'Perifericos', N'Teclaso Genius', 15000)
INSERT [dbo].[Venta] ([No_fac], [Codigo], [Cantidad]) VALUES (N'5656801', N'18888', 1)
INSERT [dbo].[Venta] ([No_fac], [Codigo], [Cantidad]) VALUES (N'5656801', N'198999', 1)
INSERT [dbo].[Venta] ([No_fac], [Codigo], [Cantidad]) VALUES (N'5656801', N'51238', 2)
INSERT [dbo].[Venta] ([No_fac], [Codigo], [Cantidad]) VALUES (N'5656801', N'589898', 1)
INSERT [dbo].[Venta] ([No_fac], [Codigo], [Cantidad]) VALUES (N'5656801', N'638888', 2)
INSERT [dbo].[Venta] ([No_fac], [Codigo], [Cantidad]) VALUES (N'5656801', N'68989', 1)
INSERT [dbo].[Venta] ([No_fac], [Codigo], [Cantidad]) VALUES (N'5656801', N'898666', 1)
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([cedula])
REFERENCES [dbo].[Cliente] ([Cedula])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Factura] FOREIGN KEY([No_fac])
REFERENCES [dbo].[Factura] ([No_fac])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Factura]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Producto] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Producto] ([Codigo])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Producto]
GO
USE [master]
GO
ALTER DATABASE [Guia_5_1] SET  READ_WRITE 
GO
