USE [master]
GO
/****** Object:  Database [proyec_final_BD]    Script Date: 14/11/2022 09:40:20 p. m. ******/
CREATE DATABASE [proyec_final_BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'proyec_final_BD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\proyec_final_BD.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'proyec_final_BD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\proyec_final_BD_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [proyec_final_BD] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [proyec_final_BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [proyec_final_BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [proyec_final_BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [proyec_final_BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [proyec_final_BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [proyec_final_BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [proyec_final_BD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [proyec_final_BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [proyec_final_BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [proyec_final_BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [proyec_final_BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [proyec_final_BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [proyec_final_BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [proyec_final_BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [proyec_final_BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [proyec_final_BD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [proyec_final_BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [proyec_final_BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [proyec_final_BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [proyec_final_BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [proyec_final_BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [proyec_final_BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [proyec_final_BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [proyec_final_BD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [proyec_final_BD] SET  MULTI_USER 
GO
ALTER DATABASE [proyec_final_BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [proyec_final_BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [proyec_final_BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [proyec_final_BD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [proyec_final_BD] SET DELAYED_DURABILITY = DISABLED 
GO
USE [proyec_final_BD]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 14/11/2022 09:40:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_empleado] [varchar](50) NOT NULL,
	[Nom_empleado] [varchar](50) NOT NULL,
	[Area_empleado] [varchar](50) NOT NULL,
	[Titulacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[ID_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Enfermero]    Script Date: 14/11/2022 09:40:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Enfermero](
	[ID_enfermero] [varchar](50) NOT NULL,
	[Cod_hospital] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Area] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Enfermero_1] PRIMARY KEY CLUSTERED 
(
	[ID_enfermero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 14/11/2022 09:40:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hospital](
	[Cod_hospital] [varchar](50) NOT NULL,
	[Nom_Hospital] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED 
(
	[Cod_hospital] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Informacion_padres]    Script Date: 14/11/2022 09:40:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Informacion_padres](
	[Cod_padres] [varchar](50) NOT NULL,
	[Nom_padre] [varchar](50) NOT NULL,
	[Nom_madre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Informacion_padres] PRIMARY KEY CLUSTERED 
(
	[Cod_padres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notaria]    Script Date: 14/11/2022 09:40:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notaria](
	[Num_notaria] [varchar](50) NOT NULL,
	[ID_Empleado] [varchar](50) NOT NULL,
	[Ubicacion_Notaria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Notaria] PRIMARY KEY CLUSTERED 
(
	[Num_notaria] ASC,
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registro_nacimiento]    Script Date: 14/11/2022 09:40:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registro_nacimiento](
	[Num_registro] [varchar](50) NOT NULL,
	[Cod_padres] [varchar](50) NOT NULL,
	[ID_enfermero] [varchar](50) NULL,
	[ID_Empleado] [varchar](50) NULL,
	[Primer_nombre] [varchar](50) NOT NULL,
	[Segundo_nombre] [varchar](50) NOT NULL,
	[Nom_Region] [varchar](50) NOT NULL,
	[Fecha_nacimiento] [date] NOT NULL,
	[Fecha_registro] [date] NOT NULL,
	[Cod_Sangre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Registro_nacimiento] PRIMARY KEY CLUSTERED 
(
	[Num_registro] ASC,
	[Cod_padres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registro_sanguineo]    Script Date: 14/11/2022 09:40:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registro_sanguineo](
	[Cod_sangre] [varchar](50) NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[RH] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Registro_sanguineo] PRIMARY KEY CLUSTERED 
(
	[Cod_sangre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Enfermero]  WITH CHECK ADD  CONSTRAINT [FK_Enfermero_Hospital] FOREIGN KEY([Cod_hospital])
REFERENCES [dbo].[Hospital] ([Cod_hospital])
GO
ALTER TABLE [dbo].[Enfermero] CHECK CONSTRAINT [FK_Enfermero_Hospital]
GO
ALTER TABLE [dbo].[Notaria]  WITH CHECK ADD  CONSTRAINT [FK_Notaria_Empleado] FOREIGN KEY([ID_Empleado])
REFERENCES [dbo].[Empleado] ([ID_empleado])
GO
ALTER TABLE [dbo].[Notaria] CHECK CONSTRAINT [FK_Notaria_Empleado]
GO
ALTER TABLE [dbo].[Registro_nacimiento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_nacimiento_Empleado] FOREIGN KEY([ID_Empleado])
REFERENCES [dbo].[Empleado] ([ID_empleado])
GO
ALTER TABLE [dbo].[Registro_nacimiento] CHECK CONSTRAINT [FK_Registro_nacimiento_Empleado]
GO
ALTER TABLE [dbo].[Registro_nacimiento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_nacimiento_Enfermero] FOREIGN KEY([ID_enfermero])
REFERENCES [dbo].[Enfermero] ([ID_enfermero])
GO
ALTER TABLE [dbo].[Registro_nacimiento] CHECK CONSTRAINT [FK_Registro_nacimiento_Enfermero]
GO
ALTER TABLE [dbo].[Registro_nacimiento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_nacimiento_Informacion_padres] FOREIGN KEY([Cod_padres])
REFERENCES [dbo].[Informacion_padres] ([Cod_padres])
GO
ALTER TABLE [dbo].[Registro_nacimiento] CHECK CONSTRAINT [FK_Registro_nacimiento_Informacion_padres]
GO
ALTER TABLE [dbo].[Registro_nacimiento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_nacimiento_Registro_sanguineo] FOREIGN KEY([Cod_Sangre])
REFERENCES [dbo].[Registro_sanguineo] ([Cod_sangre])
GO
ALTER TABLE [dbo].[Registro_nacimiento] CHECK CONSTRAINT [FK_Registro_nacimiento_Registro_sanguineo]
GO
USE [master]
GO
ALTER DATABASE [proyec_final_BD] SET  READ_WRITE 
GO
